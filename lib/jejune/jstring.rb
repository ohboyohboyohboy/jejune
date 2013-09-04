#!/usr/bin/ruby
# encoding: utf-8
#--
# Copyright (c) 2010-2011 Kyle C. Yetter
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#++

module Jejune
module JString
  extend( self )
  
  @tab_width = 2
  attr_accessor :tab_width
  
  def utf8( *chars )
    chars.pack( 'U*' )
  end
  
  def collapse( str )
    str.to_s.gsub( /(\\*)\n/ ) { $1.length.even? ? $1 << '\n' : $1[ 0 ... -1 ] }
  end
  
  def quote( str, quote = nil )
    if quote
      qrx   = /(\\*)#{ Regexp.escape( quote ) }/
      str = str.to_s.gsub( qrx ) { ( $1.length % 2 == 0 ? $1 << '\\': $1 ) << quote }
      str.insert( -1, quote ).insert( 0, quote )
    else
      # assume double quote
      str = str.to_s.gsub( /(\\*)"/ ) { ( $1.length % 2 == 0 ? $1 << '\\': $1 ) << ?" }
      str.insert( -1, '"' ).insert( 0, '"' )
    end
  end
  
  def outdent( str, tab_width = @tab_width || 2 )
    lines = str.to_s.split( /\r?\n/, -1 )
    if lines.length > 1
      # for strings like
      # xyz = %(              <- first line = "\n"
      #   blah blah blah
      # )                     <- last line = ""
      # the output will be "blah blah blah"
      lines.first.empty? and lines.shift  # trash the first empty line
      lines.last =~ /^\s+$/ and lines.pop # trash the last empty line
      
      # for strings that specify a margin like
      # xyz =
      #   %(
      #   | BLAH
      #   | 
      #   |     blah blah
      #   )
      if lines.all? { | l | l =~ /^\s*\|\s?/ }
        for line in lines do line.gsub!( /^\s*\|\s?/, '' ) end
      else
        indent = lines.grep( /^(\s+)\S/ ) { expand_tabs( $1, tab_width ).length }.min || 0
        if indent > 0
          for line in lines
            line.sub!( /^\s+/ ) do | space |
              space[ indent, space.length ]
            end
          end
        end
      end
    end
    
    return lines.join( $/ )
  end
  
  def jstring( content, single_quote = nil )
    str = string_value( content, single_quote ).to_json
    str.gsub!( %r[(\\*)/] ) do
      slashes = $1
      ( slashes.length.odd? ? slashes[ 0...-1 ] : slashes ) << '/'
    end
    return str
  end
  
  def split_words( str )
    str.to_s.
      scan( /(?:[^\s\\]|\\.)+/m ).
      map! { | w | w.gsub!( /\\(\s)|(\\.)/m ) { $+ } or w }
  end
  
  def expand_tabs( str, tab_width = @tab_width || 2 )
    str = str.to_s.dup
    tab_width = tab_width.to_i
    raise ArgumentError, "tab width must be >= 0, but expand_tabs called with `#{ tab_width }'" if tab_width < 0
    
    case tab_width
    when 0
    when 1
      str.gsub!( /\t/, " " )
    else
      while
        str.gsub!( /^([^\t\n]*)(\t+)/ ) {
          leading = $1.length % tab_width
          length = ( tab_width * $2.length - leading )
          $1 << ( ' ' * length )
        }
        # do nothing
      end
    end
    
    return str
  end

  DOUBLE_ESC = [ "0abefnrstv", "\0\a\b\e\f\n\r\s\t\v" ]
  ESC_RX = %r(
    \\
    (?:
      ( x [A-Fa-f0-9]{1,2}
      | 0{3}
      )
    | u ( [A-Fa-f0-9]{4} )
    | \r? \n
    | ( . )
    )
  )x
  
  def string_value( str, single = false )
    str = str.to_s
    if single
      str.to_s.gsub %r<\\(.)> do
        case $1
        when '\\', "'" then $1
        else $&
        end
      end
    else
      # TODO: handle control/meta sequences \cx \C-x \M-x \M-\C-x
      str.to_s.gsub ESC_RX do
        if x = $1
          i = Integer( '0' << x )
          i > 128 ? [ i ].pack( 'U' ) : i.chr
        elsif u = $2
          [ u.to_i( 16 ) ].pack( 'U' )
        elsif c = $3
          c.tr!( *DOUBLE_ESC ) or c
        end
      end
    end
  end
end
end

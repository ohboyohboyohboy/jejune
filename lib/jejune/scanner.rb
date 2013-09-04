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

require 'strscan'
require 'delegate'

module Jejune
class SourceScanner < DelegateClass( StringScanner )
  ESCAPE = /\\./m
  SKIPPABLE = %r(
    (?: // [^\n]* \n?
    | /\* .*? \*/
    | [ \  \t \f ]+
    | \\ \r? \n
    )+
  )mx
  SKIPPABLE_NL = %r(
    (?: // [^\n]* \n?
    | /\* .*? \*/
    | \s+
    )+
  )mx
  ID_RX = %r( [\$_a-z] [\$_a-z0-9]* )ix
  STRING_RX = %r(
    (?: " (?: [^ " \\ ] | \\ . )* "
    |   ' (?: [^ ' \\ ] | \\ . )* '
    |   ` (?: [^ ` \\ ] | \\ . )* `
    )
  )mx
  CHUNK_RX = %r(
    (?: [^ \s \\ ] | \\ . )+
  )mx
  
  attr_accessor :line, :column, :file
  alias position pos
  alias position= pos=
  
  def self.from_token( token, options = {} )
    options.is_a?( Integer ) and options = { :position => options }
    source = token.text
    options[ :file ] ||= token.source_name
    options[ :line ] ||= token.line
    options[ :column ] ||= token.column
    new( source, options )
  end
  
  def initialize( source, options = {} )
    @scanner = StringScanner.new( source )
    super( @scanner )
    
    @file   = options.fetch( :file, nil )
    @line   = options.fetch( :line, 1 )
    @column = options.fetch( :column, 0 )
    @lexer  = @stream = nil
    if pos = options[ :position ] and pos > 0
      @scanner.pos = pos
      advance_over( source[ 0, pos ] )
    end
  end
  
  for m in %w( scan scan_until skip skip_until )
    class_eval( <<-END )
      def #{ m }( pattern )
        if match = super( pattern )
          advance_over( match )
          return match
        end
      end
    END
  end
  
  def advance_over( str )
    l = str.count( $/ )
    if l.zero?
      @column += str.length
    else
      @line += l
      @column = str.length - str.rindex( $/ ) - 1
    end
    self
  end
  
  def stream
    @stream ||= ANTLR3::StringStream.new(
      @scanner.string,
      :position => @scanner.pos,
      :file => @file,
      :line => @line,
      :column => @column
    )
  end
  
  def lexer
    input = self.stream
    input.position == @scanner.pos or input.seek( @scanner.pos )
    lexer = Lexer.new( input )
    block_given? or return( lexer )
    
    value = yield( lexer )
    @scanner.pos = @stream.position
    @line = @stream.line
    @column = @stream.column
    return value
  end
  
  def jump_to( pattern )
    if found = @scanner.check_until( pattern )
      size = found.length - @scanner.matched.length
      size > 0 or return ''
      matched = found[ 0, size ]
      @scanner.pos += size
      advance_over( matched )
      return matched
    end
  end
  
  def see?( str )
    peek( str.length ) == str
  end
  
  def space!( include_newlines = false )
    scan( include_newlines ? SKIPPABLE_NL : SKIPPABLE )
  end
  
  def id!
    scan( ID_RX )
  end
  
  @@delimited_rx = {}
  
  def string!
    scan( STRING_RX )
  end
  
  def chunk!
    scan( CHUNK_RX )
  end
  
  def delimited!( open, close = open )
    c = Regexp.escape( close[ 0, 1 ] )
    pattern = /#{ cast_rx( open ) }(?m-ix:[^\\#{ c }]|\\.)*#{ cast_rx( close ) }/
    scan( pattern )
  end
  
  def nested!( open, close )
    start = @scanner.pos
    @scanner.scan( cast_rx( open ) ) or return nil
    depth = 1
    pause = Regexp.union( open, close, /\\.|\z/m )
    while @scanner.skip_until( pause )
      case @scanner.matched
      when open
        depth += 1
      when close
        depth -= 1
        depth.zero? and break
      when /\\./m
        # do nothing
      else
        @scanner.pos = start
        return nil
      end
    end
    text = @scanner.string[ start ... @scanner.pos ]
    advance_over( text )
    return text
  end
  
private
  
  def cast_rx( arg )
    case arg
    when Regexp then arg
    else Regexp.new( Regexp.escape( arg ) )
    end
  end
  
end
end

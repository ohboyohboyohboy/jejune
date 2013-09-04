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

#require 'jejune/lo-fi-lexer'

module Jejune
class EJJS
  
  #class Lexer < LoFiLexer::StatefulLexer
  #  state :line_start, :go_to => :template do
  #    rule( :indentation, /[^\n\r]+?(?=%\|)/ )
  #    rule( :comment_line, /(?:[^\n\r%\\]|\\[^\n\r])*%#([\n\r]*)\r?\n/, :text => 1 )
  #    delimited( :insert_indented, /%\|=?/, /\r?\n|\z/, :text => :body )
  #    delimited( :control_line, '%', /\r?\n|\z/, :text => :body )
  #  end
  #  
  #  state :template do
  #    rule( :newline, /\r?\n/, :go_to => :line_start )
  #    delimited( :comment, '<%#', '%>', :text => :body )
  #    delimited( :insert, '<%=', '%>', :text => :body )
  #    delimited( :control, '<%', '%>', :text => :body )
  #    rule( :literal, /(?:[^\r\n\\<]|\\[^\r\n]|<(?!%)|\\)+(?=<%|\r?\n|\z)/ )
  #  end
  #end # class Lexer
  
  module Compile
    module_function
    
    def scan( source, options = {} )
      block_given? or return( enum_for( :scan, source, options ) )
      
      s = SourceScanner.new( source, options )
      line_start = true
      until s.eos?
        if line_start
          case
          when s.scan( %r< % \# ((?: [^\\\r\n]+ | \\ \r? \n | \\ . )*) (?: \r? \n | \z ) >x )
            yield( :comment_line, s[ 1 ] )
          when s.scan( %r< % ((?: [^\\\r\n]+ | \\ \r? \n | \\ . )*) (?: \r? \n | \z ) >x )
            yield( :control_line, s[ 1 ] )
          else
            line_start = false
          end
        else
          case
          when s.scan( /\r?\n/ )
            line_start = true
            yield( :newline, s.matched )
          when m = s.nested!( '<%#', '%>' )
            content = m[ 3, m.length - 5 ].to_s
            yield( :comment, content )
          when m = s.nested!( '<%=', '%>' )
            content = m[ 3, m.length - 5 ].to_s
            yield( :insert, content )
          when m = s.nested!( '<%', '%>' )
            content = m[ 2, m.length - 4 ].to_s
            yield( :control, content )
          when s.scan( /(?:[^\r\n\\<]|\\[^\r\n]|<(?!%)|\\)+(?=<%|\r?\n|\z)/ )
            text = s.matched
            yield( :literal, text )
          end
        end
        
        
      end
    end
    
    def compile( source, options = {} )
      #lexer = Lexer.new( source.to_s, options )
      var = options.fetch( :variable, '__data__' )
      lines = []
      line = []
      indentation = ''
      previous = nil
      clear_line = false
      
      scan( source, options ) do | type, text |
        case type
        when :literal
          line << %(#{ var }.push( #{ str( text ) } ))
        when :comment_line
          line << "//" << text
          clear_line = true
        when :insert
          line << %[#{ var }.push( #{ text } )]
        when :newline
          line << %[#{ var }.push( #{ str( text ) } )]
          clear_line = true
        when :control
          line << text
        when :control_line
          line << text
          clear_line = true
        else
          raise( "BUG: unknown token type `#{ type }' -- this shouldn't happen" )
        end
        
        if clear_line
          lines << line.join( '; ' )
          line = []
          indentation = ''
          clear_line = false
        end
        #previous = token.type
      end
      
      lines << line.join( '; ' )
      return lines.join( "\n" )
    end
    
    def str( text )
      JString.jstring( text )
    end
    
  end # module Compile

  include Compile
  
  attr_accessor :file, :line, :source, :parameters, :variable, :name, :js_body
  
  def initialize( source, options = nil )
    @source = source
    if options
      @variable   = options.fetch( :variable, '__text__' )
      @file       = options.fetch( :file, '(erb)' )
      @line       = options.fetch( :line, 1 )
      @name       = options[ :name ]
      @parameters = options[ :parameters ]
    else
      @variable   = '__text__'
      @file       = '(ejs)'
      @line       = 1
      @name       = nil
      @parameters = nil
    end
    jjs_output  = compile( source, :variable => @variable, :file => @file, :line => @line )
    @js_body    = Jejune.translate( jjs_output, :file => @file, :line => @line )
  end
  
  def as_eval
    "(#{ as_function })()"
  end
  
  def as_function
    code = "function"
    @name and code << " " << @name
    code << ( @parameters ? @parameters.declaration : '()' )
    code << " { var #{ @variable } = []; "
    @parameters and code << @parameters.parsing_source
    code << @js_body << "; "
    code << "return #{ @variable }.join( '' ) }"
    return code
  end
  
end
end
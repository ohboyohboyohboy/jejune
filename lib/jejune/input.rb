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
  module JJSInput
    include Constants
    include Utils
    
    attr_reader :manager, :path, :cache_file, :dependencies, :macros
    attr_accessor :syntax_errors
    attr_writer :tree, :adaptor, :tokens
    
    def initialize( source, options = {} )
      super
      @manager       = options.fetch( :manager ) { Manager.new( self, options ) }
      @cache_file    = options[ :cache_file ]
      @dependencies  = Set.new
      @path          = @name
      @syntax_errors = 0
      @macros        = {}
    end
    
    def directory
      @path ? File.dirname( @path ) : '.'
    end
    
    def find_relative( name, exts = 'jjs|js|' )
      find_in_directory( directory, name, exts )
    end
    
    def tokens
      @tokens ||= RewriteStream.new( Lexer.new( self ) )
    end
    
    def adaptor
      @adaptor ||= RewriteAdaptor.new( tokens )
    end
    
    def tree
      @tree ||= begin
        parser = Parser.new( tokens, :adaptor => adaptor )
        tree = parser.program.tree
        @syntax_errors = parser.state.syntax_errors
        tree
        #$stderr.puts( @path )
        #$stderr.puts( parser.state.syntax_errors )
        #Parser.new( tokens, :adaptor => adaptor ).program.tree
      end
    end
    
    def translate()
      @manager.translate( self )
    end
    
    def snippet( source, options = {} )
      options = {
        :manager => @manager,
        :file    => @path
      }.update( options )
      
      if source.is_a?( Token )
        options[ :line ] ||= source.line
        options[ :column ] ||= source.column
        source = source.text
      end
      
      JJSSource.new( source, options )
    end
    
    def to_s
      translate
    end
  end
  
  
  class JJSSource < StringStream
    include JJSInput
  end
  
  class JJSFile < FileStream
    include JJSInput
    
    def translate
      output = super
      @manager.commit_dependencies( @path, @dependencies )
      
      if @cache_file and @syntax_errors.zero?
        open( @cache_file, 'w' ) do | out |
          out.write(
            Marshal.dump(
              :output       => output,
              :dependencies => @dependencies,
              :macros       => macros
            )
          )
        end
      end
      return output
    end
    
  end
end
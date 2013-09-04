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


module Jejune::Data
  define_string DOC, :outdent
  define_string DDOC, :interpolate, :outdent
  define_string STRING
  define_string DSTRING, :interpolate
  
  define_string( 'Q', :interpolate, :outdent )
  
  define( 'q', :outdent => true ) do | manager, blob |
    manager.jstring( blob.data, true )
  end
  
  define( 'w' ) do | manager, blob |
    manager.split_words( blob.data ).to_json
  end
  
  define( 'embed' ) do | manager, blob |
    lib  = manager.string_value( blob.data )
    path = manager.find_resource( lib, '', blob.delimiter == '<' ) ||
           manager.find_library( lib, blob.delimiter == '<' )
    
    manager.add_dependency( path )
    content = path =~ /\.jjs$/i ? manager.load_file( path ).translate : File.read( path )
    content.to_json
  end
  
  define( 'r' ) do | manager, blob |
    data = blob.data
    data.gsub!( /(\\*)(\s)/ ) { $1.length.even? ? $1 : $1[ 1, $1.length ] << $2 }
    data.gsub!( %r(/), '\/' )
    '/' << data << '/' << blob.flags
  end
  
  define( 'sass', :outdent => true ) do | manager, blob |
    defined?( gem ) or require 'rubygems'
    begin
      gem 'sass'
    rescue LoadError
    end
    require 'sass'
    
    sass_source = manager.string_value( blob.data )
    css = Sass.compile( sass_source )
    blob.flags.include?( 'c' ) and css = manager.compress( css, 'css' )
    manager.jstring( css )
  end
  
  define( 'loadSass' ) do | manager, blob |
    lib    = manager.string_value( blob.data )
    path   = manager.find_resource( lib, 'sass|scss|css|', blob.delimiter == '<' )
    source = File.read( path )
    manager.add_dependency( path )
    
    defined?( gem ) or require 'rubygems'
    begin
      gem 'sass'
    rescue LoadError
    end
    require 'sass'
    
    css = Sass.compile( source )
    blob.flags.include?( 'c' ) and css = manager.compress( css, 'css' )
    manager.jstring( css )
  end
  
  define( 'y', :outdent => true ) do | manager, blob |
    ::JSON.dump( ::YAML.load( blob.data ) )
  end
  
  define( 'loadYAML' ) do | manager, blob |
    lib = manager.string_value( blob.data )
    path = manager.find_resource( lib, 'yaml|yml|', blob.delimiter == '<' )
    manager.add_dependency( path )
    YAML.load_file( path ).to_json
  end
  
  define( 't', :outdent => true ) do | manager, blob |
    require 'jejune/ejjs'
    Jejune::EJJS.new( blob.data, :line => blob.line, :file => blob.file ).as_eval
  end
end
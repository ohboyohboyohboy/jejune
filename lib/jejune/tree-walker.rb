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
class TreeWalker
  include TokenData
  
  def self.on( *types, &block )
    types.each do | type |
      name = Integer === type ? TOKEN_NAMES[ type ].downcase : type.to_s
      define_method( "on_#{ name }", &block )
    end
  end
  
  def self.skip_list
    @skip_list ||= Set.new
  end
  
  def self.skip( *types )
    types = [ types ].flatten!
    skip_list.merge( types )
  end
  
  def enter( node )
    handler = @handlers[ node.type ] and handler.call( node )
  ensure
    $! and $!.jejune_trace.push( trace_string( node ) )
  end
  
  def default( node )
    for child in node do enter( child ) end
  end
  
  def descend( node )
    for child in node
      enter( child ) unless @skip_list.include?( child.type )
    end
  end
  
  def initialize
    token_names  = TokenData::TOKEN_NAMES
    default      = method( :default )
    @skip_list   = self.class.skip_list
    @handlers    = {}
    for type, name in token_names
      method_name = "on_#{ name.downcase }"
      method = respond_to?( method_name ) ? method( method_name ) : default
      @handlers[ type ] = method
    end
  end
  
  def trace_string( node )
    file = node.source_name || '(input)'
    line = node.line
    "#{ file }:#{ line }"
  end
end
end
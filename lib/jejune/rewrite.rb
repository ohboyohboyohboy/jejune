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
class RewriteTree < CommonTree
  attr_accessor :token_stream
  
  def initialize( payload = nil, stream = nil )
    super( payload )
    @token_stream = stream
  end
  
  def tokens( range = token_range )
    @token_stream[ range ]
  end
  
  def rewrite( *args, &block )
    @token_stream.rewrite( *args, &block )
  end
  
  def start
    start_index > 0 and @token_stream.at( start_index )
  end
  
  def stop
    stop_index > 0 and @token_stream.at( stop_index )
  end
  
  def source( range = token_range )
    @token_stream.rewrite.execute( range )
  end
  
  def inner_range
    first.start_index .. last.stop_index
  end
  
  def inner_source
    @token_stream.rewrite.execute( inner_range )
  end
  
  def insert_after!( text, *more )
    if more.empty?
      @token_stream.insert_after( stop_index, text )
    else
      @token_stream.insert_after( text, *more )
    end
  end
  
  def insert_before!( text, *more )
    if more.empty?
      @token_stream.insert_before( start_index, text )
    else
      @token_stream.insert_before( text, *more )
    end
  end
  
  def delete!( *more )
    if more.empty?
      @token_stream.delete( token_range )
    else
      @token_stream.delete( *more )
    end
  end
  
  def replace!( text, *more )
    if more.empty?
      @token_stream.replace( token_range, text )
    else
      @token_stream.replace( text, *more )
    end
  end
  
  def strip!
    @token_stream.delete( start_index )
    @token_stream.delete( stop_index )
  end
  
  def surround!( before, after = before )
    @token_stream.insert_before( start_index, before )
    @token_stream.insert_after( stop_index, after )
  end
  
  alias prepend! insert_before!
  alias append!  insert_after!
  
  def source_name
    token.source_name rescue nil
  end
end

class RewriteAdaptor < CommonTreeAdaptor
  def initialize( stream )
    @token_stream = stream
    super( TokenData::Token )
  end
  
  def create_with_payload( payload )
    return RewriteTree.new( payload, @token_stream )
  end
end
end



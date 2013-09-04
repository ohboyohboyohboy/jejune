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
module Data
class Handler
  include Constants
  include Utils

  attr_reader :type, :processor
  
  def initialize( type, options = {}, &processor )
    @type = type
    @string = @outdent = @interpolate = false
    @processor = nil
    configure( options, &processor )
  end
  
  def configure( options, &processor )
    @processor   = processor || options.fetch( :processor, @processor )
    @interpolate = options.fetch( :interpolate, @interpolate )
    @outdent     = options.fetch( :outdent, @outdent )
    @string      = options.fetch( :string, @string )
  end
  
  def process( manager, blob )
    blob.data = prepare( manager, blob )
    @processor and blob.data = @processor.call( manager, blob )
    return( blob.data )
  end
  
  def prepare( manager, blob )
    @interpolate and return manager.interpolate( blob, @outdent )
    source  = blob.data
    @outdent and source = manager.outdent( source )
    @string ? blob.delimiter == "'" ? manager.jstring( source, "'" ) : manager.jstring( source ) : source
  end
  
end

unless defined?( Blob )
  Blob = Struct.new(
    :type, :data, :delimiter, :prefix,
    :flags, :file, :line, :column
  )
end

class Blob
  include Constants
  
  def self.extract( token, type = nil )
    source = token.text
    if source =~ /\A%?\s*(\w*\s*)/
      prefix, source = $&, $'
      signifier = $1.to_s.strip
      type ||= signifier.empty? ? 'Q' : signifier
    else
      prefix = ''
    end
    source =~ OPEN_DELIM or raise( "%p doesn't have a delimiter" % source )
    delimiter, source, closer = $&, $', DELIMS[ $1 ]
    
    data, d, flags = source.rpartition( closer )
    new(
      type || delimiter, data,
      delimiter, prefix, flags,
      token.source_name, token.line, token.column
    )
  end
  
  def inspect
    '' << prefix << delimiter << data << DELIMS[ delimiter ] << flags
  end
  
  def data_column
    column + prefix.length + delimiter.length
  end
end

end
end


module Jejune
module Data
  include Constants
  defined?( @@global_handlers ) or @@global_handlers = {}
  
  def self.define( type, options = {}, &action )
    @@global_handlers[ type ] = Handler.new( type, options, &action )
  end
  
  def self.define_string( type, *opts )
    options = { :string => true }
    for opt in opts
      options[ opt ] = true
    end
    define( type, options )
  end
  
  
  # lazy attribute reader for
  def data_handlers
    @data_handlers ||= {}
  end
  
  def define_handler( type, options = {}, &action )
    @data_handler[ type ] = Handler.new( type, options, &action )
  end
  
  def handler_for( blob )
    type = blob.type
    data_handlers.fetch( type ) do
      @@global_handlers.fetch( type ) do
        raise( "no data handler defined for `#{ type }'" )
      end
    end
  end

end
end

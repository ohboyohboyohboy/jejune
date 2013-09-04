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

module Utils
  JJS_EXTS = %w( .jjs )
  
module_function
  
  def find_in_directory( directory, name, exts = '' )
    exts = parse_ext_list( exts )
    if block_given?
      for ext in exts
        path = File.join( directory, "#{ name }#{ ext }" )
        yield( path ) and return path
      end
    else
      for ext in exts
        path = File.join( directory, "#{ name }#{ ext }" )
        test( ?f, path ) and return path
      end
    end
    return nil
  end
  
  def find_in_path_list( list, name, *exts, &b )
    for dir in list
      found = find_in_directory( dir, name, *exts, &b ) and return found
    end
    return nil
  end
  
  def parse_ext_list( exts )
    exts = exts.to_s.strip.split( /[^\w\.]/, -1 ).
      map! { | i | i.empty? ? i : i.start_with?( '.' ) ? i : ".#{ i }" }
    exts.empty? and exts << ''
    return exts
  end
  
  def jejune_file?( path )
    JJS_EXTS.include?( File.extname( path ) )
  end
  
  def ArgumentError( required, optional, given )
    min = required
    max = optional >= 0 ? min + optional : nil
    
    if given >= min and max and given <= max
      warn( "called ArgumentError.build with argument specs that shouldn't result in an error" )
    elsif given < min
      new( "too few arguments (#{ given } for #{ min })" )
    elsif max and given > max
      new( "too many arguments (#{ given } for #{ max })" )
    end
  end  
end

end

#!/usr/bin/ruby
# encoding: utf-8
#
# author: Kyle Yetter
#

module Jejune
class DependencyScanner
  include Constants
  include Utils
  
  attr_accessor :manager, :dependency_map, :file_stack, :file
  
  def initialize( manager )
    @manager        = manager
    @dependency_map = {}
    @file_stack     = []
  end
  
  def dependencies
    out = {}
    for path, set in @dependency_map
      out[ path ] = set.to_a.sort
    end
    return out
  end
  
  def scan( file )
    file = File.expand_path( file )
    deps = @dependency_map[ file ] and return( deps )
    
    deps = Set.new
    dir = File.dirname( file )
    
    open( file ) do | f |
      f.grep( /^\s*%%\s*(include|require)\s*(\S.*)/ ) do
        type, target = $1, $2.strip
        case type
        when 'require'
          if dep = find_in_path_list( @manager.load_path, target, DEFAULT_EXT )
            deps.add File.expand_path( dep )
          end
        when 'include'
          if dep = find_in_directory( dir, target, DEFAULT_EXT )
            deps.add File.expand_path( dep )
          end
        end
      end
    end
    
    @dependency_map[ file ] = deps
    @file_stack.each do | f |
      @dependency_map[ file ].merge( deps )
    end
    
    begin
      @file_stack.push( file )
      deps.grep( /\.jjs$/i ) do | child |
        scan( child )
      end
    ensure
      @file_stack.pop
    end
    
    return deps
  end
  
end
end

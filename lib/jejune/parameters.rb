#!/usr/bin/ruby
# encoding: utf-8
#
# author: Kyle Yetter
#


module Jejune

ParameterSet = Struct.new( :parameters, :defaults, :indices, :splat )

class ParameterSet
  include Constants
  
  def self.study( params )
    set = self.new
    
    # Check that the parameters node actually meets the current
    # semantic requirements of req > def > splat
    # Also, organize the actual parameters by type
    last_type = ID
    for node in params
      if last_type == SPLAT
        raise( "additional parameters may not follow a splat parameter" )
      end
      
      case type = node.type
      when ID
        last_type == ASGN and
          raise( "required parameters may not follow default parameters" )
        set.add( node.source )
      when ASGN
        set.add( node.first.source, node.last.source )
      when SPLAT
        set.splat = node.first.source
      else
        raise( "Why is `#{ node.name }' in a parameters list? That shouldn't happen" )
      end
      
      last_type = type
    end
    
    return set
  end
  
  def initialize( parameters = [], defaults = {}, indices = {}, splat = nil )
    super
  end
  
  def declaration
    parameters.empty? ? '()' : '( ' << parameters.join( ', ' ) << ' )'
  end
  
  def add( name, value = nil )
    indices[ name ] = parameters.length
    parameters << name
    value and defaults[ name ] = value
    self
  end
  
  def include?( name )
    indices[ name ]
  end
  
  def parsing_source
    arity = parameters.length
    source = StringIO.new( '' )
    if splat
      source.puts( "var #{ splat } = Array.prototype.slice.call( arguments, #{ arity } );" )
    end
    unless defaults.empty?
      source.puts( "switch ( arguments.length ) {" )
      parameters.each_with_index do | name, i |
        source.puts( "  case #{ i }:" )
        value = defaults[ name ] and source.puts( "    #{ name } = #{ value };" )
      end
      source.puts( "}" )
    end
    return source.string
  end
end

end

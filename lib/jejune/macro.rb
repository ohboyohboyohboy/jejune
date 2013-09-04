#!/usr/bin/ruby
# encoding: utf-8
#
# author: Kyle Yetter
#

module Jejune
class Macro
  include Constants
  
  attr_accessor :manager, :name, :parameters, :blueprint
  
  def initialize( manager, tree )
    @manager = manager
    #@tree    = tree
    @name    = tree[ 0 ].text
    
    if node = tree[ 1 ] and node.type == PARAMS
      @parameters = ParameterSet.study( node )
    else
      @parameters = ParameterSet.new
    end
    
    body_tokens = tree.last.tokens
    
    body_tokens.shift while t = body_tokens.first and t.type != LBRACE
    body_tokens.shift
    
    body_tokens.pop while t = body_tokens.last and t.type != RBRACE
    body_tokens.pop
    
    body_tokens.map! do | token |
      if token.type == ID and index = @parameters.include?( token.text )
        index
      else
        token.text
      end
    end
    
    @blueprint = body_tokens
  end
  
  def self._load( serialized )
    macro = allocate
    macro.name, macro.parameters, macro.blueprint = Marshal.load( serialized )
    return macro
  end
  
  def _dump( depth )
    Marshal.dump( [ @name, @parameters, @blueprint ] )
  end
  
  def apply( *params )
    params =
      params.map do | i |
        if i.respond_to?( :tokens ) then i.tokens
        elsif TokenData::Token === i then [ i ]
        else i
        end
      end
    
    tokens = []
    for item in @blueprint
      case item
      when Fixnum
        tokens.concat( params[ item ] )
      else
        tokens << item
      end
    end
    
    @manager.translate( tokens.join( '' ) )
  end
  
  alias expand apply
  
end
end

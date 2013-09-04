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
module Constants
  include TokenData
  
  # pseudo-type used by the interpolation parser
  CODE = PROGRAM
  
  PROPERTY_DEFINITION_TYPES = Set[ GET, SET, COLON, ARROW ]
  EXPRESSION_TYPES = Set[
    AMP_ASGN, AND, AREF, ARRAY, ASGN, CALL, COLON, COMMA, DECR,
    DELETE, DOT, EQ, EQQ, FALSE, GEQ, GREATER, HAT, HAT_ASGN,
    ID, IN, INCR, INSTANCEOF, ITER, IVAR, LEQ, LESS, LSHIFT,
    LSHIFT_ASGN, MINUS, MINUS_ASGN, MOD, MOD_ASGN, NEQ, NEQQ,
    NEW, NOT, NULL, NUMBER, OBJECT, OR, PIPE, PIPE_ASGN, PLUS,
    PLUS_ASGN, POST_DECR, POST_INCR, QMARK, REGEX, RSHIFT,
    RSHIFT3, RSHIFT3_ASGN, RSHIFT_ASGN, SLASH, SLASH_ASGN, STAR,
    STAR_ASGN, STRING, THIS, TILDE, TRUE, TYPEOF, UNDEFINED,
    VOID, FUNCTION, ARROW, DSTRING, DDOC, DGENERAL, UPLUS, UMINUS
  ]
  PROPERTY_TYPES = Set[ STRING, ID, NUMBER ]
  
  CATCH_TYPES    = Set[ CATCH, FINALLY ]
  FUNCTION_TYPES = Set[ ARROW, FUNCTION ]
  
  OPERATOR_PRECEDENCE = Hash.new do | h, k |
    name = TOKEN_NAMES[ k ] and
      warn( "Jejune Token Type `#{ name }[#{ k }]' is not Jejune::Constants::OPERATOR_PRECEDENCE" )
    h[ k ] = -1
  end
  
  op_list = <<-END
    COMMA
    ASGN AMP_ASGN HAT_ASGN LSHIFT_ASGN MINUS_ASGN MOD_ASGN OR_ASGN PIPE_ASGN PLUS_ASGN RSHIFT3_ASGN RSHIFT_ASGN SLASH_ASGN STAR_ASGN
    QMARK
    OR
    AND
    PIPE
    HAT
    AMP
    EQ EQQ NEQ NEQQ
    LESS GREATER LEQ GEQ INSTANCEOF IN
    LSHIFT RSHIFT RSHIFT3
    PLUS MINUS
    STAR SLASH MOD
    DELETE VOID TYPEOF INCR DECR UPLUS UMINUS TILDE NOT
    POST_INCR POST_DECR
    NEW CALL AREF DOT ITER
    THIS IVAR ID NULL TRUE FALSE UNDEFINED STRING DOC REGEX ARRAY OBJECT FUNCTION
  END
  
  # use the list above to give each expression node
  # a precedence number for use in situations such
  # as determining whether code needs to be surrounded
  # in parentheses to protect operator precedence in an expression
  op_list.strip.split( $/ ).each_with_index do | line, index |
    for name in line.strip.split( /\s+/ )
      value = TokenData.const_get( name )
      OPERATOR_PRECEDENCE[ value ] = index
    end
  end
  
  DELIMS =
    {
      "@"=>"@", "+"=>"+", "`"=>"`", ","=>",", "!"=>"!", "-"=>"-",
      "\""=>"\"", "."=>".", "#"=>"#", ":"=>":", "/"=>"/",
      "$"=>"$", ";"=>";", "%"=>"%", "{"=>"}", "["=>"]", "|"=>"|",
      "\\"=>"\\", "&"=>"&", "<"=>">", "="=>"=", "'"=>"'",
      "~"=>"~", "^"=>"^", "("=>")", "?"=>"?", "*"=>"*"
    }
  OPEN_DELIM = /([#{ Regexp.escape( DELIMS.keys.join( '' ) ) }])/
  
  DEFAULT_EXT = "jjs|js|"
  BROWSERS = %w( opera firefox chrome )
end
end

module Jejune
  include ANTLR3
  RewriteStream = TokenRewriteStream
end

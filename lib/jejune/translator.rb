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
class Translator < TreeWalker
  #require 'jejune/rewrite-debug'
  #include DebugRewrite
  include Data
  include NodeTest
  
  skip( BREAK, FALSE, TRUE, NULL, THIS, NUMBER, UNDEFINED )
  
  def initialize( manager )
    @manager = manager
    super()
  end
  
  
  def on_macro( node )
    @manager.define_macro( node )
    node.replace!( '' )
  end
  
  def on_pound( node )
    name, arguments = node
    replacement = @manager.expand_macro( name.text, *arguments )
    node.replace!( replacement )
  end
  
  def on_class_def( node )
    descend( node )
    
    name_token, *member_nodes = node
    name        = name_token.text
    members     = []
    constructor = nil
    
    for member_node in member_nodes
      case member_node.type
      when DEF
        def_name = member_node.first.text
        if member_node.length == 3
          args = member_node[ 1 ]
          body = member_node[ 2 ]
        else
          args = nil
          body = member_node[ 1 ]
        end
        
        if def_name == 'initialize'
          constructor = build_function( args, body, name );
        else
          members.push( [ @manager.jstring( def_name ), build_function( args, body ) ].join( ': ' ) )
        end
      when ASGN
        var_name = @manager.jstring( member_node[ 0 ].text )
        var_val  = member_node[ 1 ].source
        
        members.push( [ var_name, var_val ].join( ': ' ) )
      when VAR
        for assign in member_node
          members.push( [ @manager.jstring( assign[ 0 ].text ), assign[ 1 ].source ].join( ': ' ) )
        end
      when GET, SET
        members.push( member_node.source )
      end
    end
    
    constructor ||= "function #{ name }() { return this; }"
    
    node.replace!( "#{ constructor };\n#{ name }.prototype = {\n#{ members.join( ",\n" ) }\n};" )
  end

  def on_object_def( node )
    descend( node )
    
    var_token, *member_nodes = node
    if is_var = ( var_token.type == VAR )
      name_token, *member_nodes = member_nodes
    else
      name_token = var_token
    end
    
    name        = name_token.text
    members     = []
    
    for member_node in member_nodes
      case member_node.type
      when DEF
        def_name = member_node.first.text
        if member_node.length == 3
          args = member_node[ 1 ]
          body = member_node[ 2 ]
        else
          args = nil
          body = member_node[ 1 ]
        end
        
        members.push( [ @manager.jstring( def_name ), build_function( args, body ) ].join( ': ' ) )
      when ASGN
        var_name = @manager.jstring( member_node[ 0 ].text )
        var_val  = member_node[ 1 ].source
        
        members.push( [ var_name, var_val ].join( ': ' ) )
      when VAR
        for assign in member_node
          members.push( [ @manager.jstring( assign[ 0 ].text ), assign[ 1 ].source ].join( ': ' ) )
        end
      when GET, SET
        members.push( member_node.source )
      end
    end
    prefix = is_var ? "var #{ name }" : name
    node.replace!( "#{ prefix } = {\n#{ members.join( ",\n" ) }\n};" )
  end
  
  def on_try( node )
    descend( node )
    if default_catch = @manager.macros[ 'defaultCatch' ]
      error_token  = TokenData::Token.new( ID, :default, 'jjse' )
      catch_source = ' catch ( jjse ) {' << default_catch.apply( error_token ) << '}'
    else
      catch_source = ' catch ( jjse ) { /* do nothing */ }'
    end
    stream = node.token_stream
    i      = node.stop_index
    i -= 1 while tk = stream[ i ] and tk.type != RBRACE
    if i >= 0 then node.insert_after!( i, catch_source )
    else node.insert_after!( catch_source )
    end
  end
  
  
  #
  # ^( ITER ^(CALL $name ^(ARGUMENTS $args ...)) ^(PARAMS $block_parmas ...) ^(BLOCK ...) )
  # 
  def on_iter( node )
    descend( node )
    target, args, block = node
    
    func = build_function( args, block )
    block.delete!
    
    case target.type
    when CALL, NEW
      arg_node = target.last
      if placeholder = arg_node.find { | child | child.type == FUNC_ARG }
        placeholder.replace!( func )
      else
        append_argument( arg_node, func )
      end
    else
      if target.type == ID and target.text == 'eval'
        node.replace!( "(#{ func })()" )
      else
        target.append!( '( ' << func << ' )' )
      end
    end
  end
  
  # confirm that the `&' placeholder is occurring under a block call
  def on_func_arg( node )
    arguments_node = node.parent
    arguments_type = arguments_node && arguments_node.type
    unless arguments_type == ARGUMENTS
      raise TranslationError, "BUG: function placeholder argument in an arguments list"
    end
    
    call_node = arguments_node.parent
    call_type = call_node && call_node.type
    unless call_type == CALL or call_type == NEW
      raise TranslationError, "BUG: function placeholder argument isn't under a function/new call"
    end
    
    iter_node = call_node.parent
    iter_type = iter_node && iter_node.type
    unless iter_type == ITER
      raise TranslationError, "no iteration block corresponding to function placeholder argument"
    end
  end
  
  def on_ivar( node )
    node.replace!( node.token, "this." + node.text[ 1..-1 ] )
  end
  
  def on_function( node )
    descend( node )
    add_param_parsing( *node.last( 2 ) )
  end
  
  def on_set( node )
    descend( node )
    
    param_node, body_node = node.last( 2 )
    body_node ||= param_node
    #add_return( body_node )
    
    if param_node and param_node.type == PARAMS
      add_param_parsing( param_node, body_node )
    else
      param_node.append!( '()' )
    end
  end
  
  def on_get( node )
    descend( node )
    
    param_node, body_node = node.last( 2 )
    body_node ||= param_node
    add_return( body_node )
    
    # this is a hack to fix double returns that show up in some situations until
    # I figure out exactly why
    node.source
    
    if param_node and param_node.type == PARAMS
      add_param_parsing( param_node, body_node )
    else
      param_node.append!( '()' )
    end
  end
  
  def on_post_unless( node )
    descend( node )
    error_name, condition = node[ 0 ], node[ 1 ]
    condition.surround!( '!( ', ')' )
    node.replace!( node.token, 'if' )
  end
  
  def on_finally( node )
    bottom = top = node
    descent = []
    while n = bottom[ 0 ] and CATCH_TYPES.include?( n.type )
      descent.unshift( *bottom.drop( 1 ) )
      bottom = n
    end
    descent.unshift( *bottom )
    
    for child in descent
      enter( child )
    end
    
    if FUNCTION_TYPES.include?( descent.first.type )
      function_block = descent.first.last
      
      catch_span = bottom.token.index .. top.token_stop_index
      code = node.token_stream.render( catch_span )
      node.delete!( catch_span )
      
      surround_block( function_block, "try {", "} " << code )
    end
  end
  
  def on_catch( node )
    descend( node )
    ##if node.first.type == FUNCTION
    ##  func_node   = node.first
    ##  catch_range = ( node.first.token_stop_index + 1 .. node.token_stop_index )
    ##  catch_source = node.source( catch_range )
    ##  node.delete!( catch_range )
    ##  require 'pp'
    ##  puts func_node.last.source( func_node.last.inner_range )
    ##end
  end
  
  def on_arrow( node )
    descend( node )
    name_node = param_node = body_node = nil
    i = 0
    
    if node[ i ].type == ID
      name_node, i = node[ i ], i + 1
    end
    
    if node[ i ].type == PARAMS
      param_node, i = node[ i ], i + 1
    end
    
    body_node = node[ i ]
    add_return( body_node )
    add_param_parsing( param_node, body_node ) unless param_node.nil?
    
    if name_node
      if node.token.index > name_node.token.index
        # the name is a property definition ala { a: 3, b ->() { ... } }
        name_node.append!( ':' )
        node.replace!( node.token, param_node ? 'function' : 'function()' )
      else
        # the name is a function name ala ->b() { ... }
        node.replace!( node.token, 'function ' )
        name_node.append!( '()' ) if param_node.nil?
      end
    else
      node.replace!( node.token, param_node ? 'function' : 'function()' )
    end
  end
  
  def on_method( node )
    descend( node )
    on_arrow( node )
    node.first.append!( ':' )
  end
  
  def on_arguments( node )
    node.empty? and return
    descend( node )
    convert_property_lists( node )
    stream = node.token_stream
    # delete trailing comma
    node.last.token_stop_index.upto( node.token_stop_index ) { | i |
      if stream[ i ].type == COMMA
        stream.delete( i )
        break
      end
    }
  end
  
  def on_array( node )
    node.empty? and return
    descend( node )
    convert_property_lists( node )
  end
  
  
  def on_if( node )
    special_condition( node ) or descend( node )
  end
  
  def on_unless( node )
    special_condition( node, true ) and return
    descend( node )
    invert_clause( node.first )
    node.replace!( node.token, 'if' )
  end
  
  def on_until( node )
    descend( node )
    invert_clause( node.first )
    node.replace!( node.token, 'while' )
  end
  
  def on_colon( node )
    descend( node )
    if key = node[ 0 ] and key.type == ID
      key.replace!( key.text.to_json )
    end
  end
  
  def on_string( node )
    literal = node.text or return
    quote   = literal[ 0, 1 ]
    body    = literal[ 1, literal.length - 2 ]
    node.replace!( @manager.jstring( body, quote == "'" ) )
  end
  
  def on_doc( node )
    literal = node.text or return
    body  = @manager.outdent( literal[ 1, literal.length - 2 ] )
    value = @manager.string_value( body )
    node.replace!( value.to_json )
  end
  
  def on_dstring( node )
    data = Blob.extract( node.token, DSTRING )
    node.replace!( @manager.interpolate( data, false ) )
  end
  
  def on_ddoc( node )
    data = Blob.extract( node.token, DDOC )
    node.replace!( @manager.interpolate( data, true ) )
  end
  
  def on_general( node )
    token = node.token
    data  = Blob.extract( token )
    node.replace!( convert_blob( data ) )
  end
  
  def on_or_asgn( node )
    descend( node )
    left, right = node
    target, value = left.source, right.source
    
    right.type == QMARK and value = "( #{ value } )"
    node.replace!( "#{ target } = #{ target } || #{ value }" )
  end
  
  def on_ejs( node )
    ejs = extract_ejs( node.token )
    node.replace!( ejs.as_function )
  end
  
  def on_is_undefined( node )
    descend( node )
    expr = %[('undefined' == typeof( #{ node.last.source } ))]
    node.replace!( expr )
  end
  
  def on_is_defined( node )
    descend( node )
    expr = %[('undefined' != typeof( #{ node.last.source } ))]
    node.replace!( expr )
  end
  
  def on_directive( node )
    token = node.token
    file  = token.source_name
    
    current_line  = token.line
    after_line    = current_line + token.text.count( "\n" )
    
    src = scanner( node.token, 2 )
    src.space!
    
    command = src.id! or raise( "malformed directive `#{ node.token.text }'" )
    
    case command
    when 'hide'
      node.replace!( '' )
    when 'require', 'include'
      targets = []
      src.space!
      
      case c = src.peek( 1 )
      when '<', '[', '(', '{'
        content = src.nested!( c, DELIMS[ c ] )
        targets.concat( @manager.split_words( content[ 1 ... -1 ] ) )
      when '"', '`', "'"
        content = src.string!
        targets << @manager.string_value( content[ 1 ... -1 ], content[ 0, 1 ] == "'" )
      else
        content = src.chunk!
        targets << content.gsub( /\\(.)/m, '\1' )
      end
      
      repl = ''
      method = @manager.method( "#{ command }!" )
      targets.inject( repl ) do | repl, lib |
        @manager.location_markers? and repl << "// #{ lib }:1\n"
        repl << method.call( lib ).to_s << "\n"
        @manager.location_markers? ? repl << "// #{ file }:#{ after_line }\n" : repl
      end
      
      node.replace!( repl )
    end
  end
  
  
  def translate( node )
    node.infer_boundaries
    enter( node )
    #debug_rewrite( node.token_stream )
    #puts '============'
    #node.rewrite.reduce
    #debug_rewrite( node.token_stream )
    return node.rewrite.execute
  #rescue ANTLR3::Bug
  #  debug_rewrite( node.token_stream )
  #  raise
  ensure
    node.token_stream.delete_program
  end
  
private
  
  def special_condition( node, invert = false )
    clause = node.first
    if clause.type == ID and BROWSERS.include?( clause.text )
      if @manager.browser == clause.text
        include_node = node[ invert ? 2 : 1 ]
      else
        include_node = node[ invert ? 1 : 2 ]
      end
      
      if include_node
        descend( include_node )
        replacement = include_node.source
        replacement.gsub!( /\A\{\s*|\s*\}\z/, '' )
      else
        replacement = ''
      end
      node.replace!( replacement )
      #program = node.token_stream.program
      #range = node.token_range
      
      #program.instance_variable_get( :@operations ).delete_if do | i |
      #  i.covered_by?( range )
      #end
      return true
    end
    
    return nil
  end
  
  def add_function_arg( arg_node, func )
    if placeholder = arg_node.find { | child | child.type == FUNC_ARG }
      placeholder.replace!( func )
    else
      append_argument( arg_node, func )
    end
  end
  
  def scanner( token, pos = nil )
    SourceScanner.new( token.text,
      :line => token.line,
      :column => token.column,
      :file => token.source_name,
      :position => pos
    )
  end
  
  def convert_blob( blob )
    handler_for( blob ).process( @manager, blob )
  end
  
  def extract_ejs( ejs_token )
    name = nil
    parameters = nil
    src = scanner( ejs_token, 3 )  # skip leading `ejs'
    src.space!( true )
    name = src.id!
    src.space!( true )
    
    if src.see?( '(' )
      arg_tokens = []
      src.lexer do | lex |
        arg_tokens << lex.next_token
        depth = 1
        lex.each do | token |
          arg_tokens << token
          case token.type
          when LPAREN
            depth += 1
          when RPAREN
            depth -= 1
            depth.zero? and break
          end
        end
      end
      
      arg_tokens  = RewriteStream.new( arg_tokens )
      adaptor = RewriteAdaptor.new( arg_tokens )
      tree    = Jejune::Parser.new( arg_tokens, :adaptor => adaptor ).function_parameters.tree
      parameters = ParameterSet.study( tree )
    end
    
    src.space!( true )
    src.scan( /%/ )
    body = @manager.outdent( src.rest[ 1 ... -1 ] )
    
    EJJS.new( body,
      :name => name, :parameters => parameters,
      :file => ejs_token.source_name,
      :line => src.line, :column => src.column
    )
  end
  

  def convert_property_lists( node )
    property_definition?( node.first ) and node.first.prepend!( '{ ' )
    
    node.each_cons( 2 ) do | left, right |
      t1, t2 = property_definition?( left ), property_definition?( right )
      
      if !t1 and t2
        right.prepend!( '{ ' )
      elsif t1 and !t2
        left.append!( ' }' )
      end
    end
    
    property_definition?( node.last ) and node.last.replace!( node.last.source << ' }' )
  end
  
  def build_function( args, block, name = nil )
    block.text == '{' and  add_return( block )
    
    block.strip!  # get rid of surrounding { } / do end
    
    if args
      params = ParameterSet.study( args )
      unless args.stop_index < args.start_index
        # trash the | x, ... | declaration unless there isn't one
        # note: if there's only an imaginary PARAMs, for some unknown reason,
        # calling args.delete! will insert everything between the open brace
        # and the first token of the first statement
        args.delete!
      end
    else
      params = ParameterSet.new();
    end
    
    body = params.parsing_source << block.source
    body.strip!
    if body =~ /\n/
      body = "\n" << body << "\n"
    else
      body = " " << body << " "
    end
    
    prefix = name ? "function #{ name }" : "function"
    
    "#{ prefix }#{ params.declaration } {#{ body }}"
  end
  
  def append_argument( node, source )
    if node.empty?
      tk = node.start
      source = " #{ source } "
    else
      tk = node.last.stop
      source = ", #{ source } "
    end
    node.insert_after!( tk, source )
  end
  
  def add_return( block )
    if last_statement = block.last and expression?( last_statement )
      term = last_statement.stop
      term.type == SEMI and last_statement.delete!( term )
      last_statement.surround!( 'return( ', ' );' )
    end
  end
  
  def invert_clause( clause )
    clause.surround!( '( !', ' )' )
  end
  
  def add_param_parsing( param_node, body_node )
    if params = ParameterSet.study( param_node )
      param_node.replace!( params.declaration )
      surround_block( body_node, params.parsing_source )
    end
  end
  
  def surround_block( block_node, before = nil, after = nil )
    tokens = block_node.tokens
    if before
      if n = block_node.first
        n.prepend!( before )
      elsif t = tokens.find { | t | t.type == LBRACE }
        block_node.append!( t, before )
      end
    end
    if after
      if t = tokens.reverse_each.find { | t | t.type == RBRACE }
        block_node.prepend!( t, after )
      elsif n = block_node.last
        n.append!( after )
      end
    end
    return block_node
  end
end



ClassBuilder = Struct.new( :name, :constructor, :members );
class ClassBuilder
  include Constants
  
  def initialize( node )
    super( nil, nil, [] );
    study( *node );
  end
  
  def study( name, *members );
    self.name = name.text;
    members.each do | member |
      case member.type
      when DEF
        if member.first.text == 'initialize'
          self.constructor = member
        else
          self.members.push( member );
        end
      else
        self.members.push( member );
      end
    end
    return self
  end
  
  
end
end



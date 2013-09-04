grammar Jejune;

options {
  language  = Ruby;
  output    = AST;
  //memoize   = true;
}


tokens {
  AMP='&';              GENERAL;                  POST_DECR;
  AMP_ASGN='&=';        GEQ='>=';                 POST_IF;
  AND='&&';             GET='get';                POST_INCR;
  AREF;                 GREATER='>';              POST_UNLESS;
  ARGUMENTS;            HAT='^';                  PROGRAM;
  ARRAY;                HAT_ASGN='^=';            QMARK='?';
  ARROW='->';           HIDE;                     RBRACE='}';
  ASGN='=';             IF='if';                  RBRACK=']';
  BLOCK;                IN='in';                  REGEX;
  BL_END='end';         INCR='++';                REQUIRE;
  BREAK='break';        INSTANCEOF='instanceof';  RETURN='return';
  CALL;                 IS_DEFINED='defined?';    RPAREN=')';
  CASE='case';          ITER;                     RSHIFT='>>';
  CATCH='catch';        LABEL;                    RSHIFT3='>>>';
  COLON=':';            LBRACE='{';               RSHIFT3_ASGN='>>>=';
  COMMA=',';            LBRACK='[';               RSHIFT_ASGN='>>=';
  COMMENT;              LEQ='<=';                 SEMI=';';
  CONST='const';        LESS='<';                 SET='set';
  CONTINUE='continue';  LET='let';                SLASH;
  DDOC;                 LINE_COMMENT;             SLASH_ASGN;
  DECR='--';            LPAREN='(';               SPLAT;
  DEFAULT='default';    LSHIFT='<<';              STAR='*';
  DELETE='delete';      LSHIFT_ASGN='<<=';        STAR_ASGN='*=';
  DGENERAL;             MACRO='macro';            SWITCH='switch';
  DIRECTIVE;            MINUS='-';                THIS='this';
  DO='do';              MINUS_ASGN='-=';          THROW='throw';
  DOT='.';              MOD;                      TILDE='~';
  DO_UNTIL;             MOD_ASGN;                 TRUE='true';
  DO_WHILE;             NEQ='!=';                 TRY='try';
  DREGEX;               NEQQ='!==';               TYPEOF='typeof';
  DSTRING;              NEW='new';                UMINUS;
  EACH='each';          NOT='!';                  UNDEFINED='undefined';
  ELSE='else';          NULL='null';              UNLESS='unless';
  EQ='==';              OBJECT;                   UNTIL='until';
  EQQ='===';            OR='||';                  UPLUS;
  FALSE='false';        OR_ASGN='||=';            VAR='var';
  FINALLY='finally';    PARAMS;                   VOID='void';
  FOR='for';            PIPE='|';                 WHILE='while';
  FOR_IN;               PIPE_ASGN='|=';           WITH='with';
  FUNCTION='function';  PLUS='+';                 YIELD='yield';
  FUNC_ARG;             PLUS_ASGN='+=';
  IS_UNDEFINED='undefined?'; POUND='#'; DEF='def'; CLASS_DEF='class'; OBJECT_DEF='object';
}

scope InFor { active; }

@parser::members {
  
  RESERVED = Set[
    BREAK, DO, FUNCTION, NEW, THROW, UNTIL, CASE, EACH, GET,
    NULL, TRUE, VAR, CATCH, ELSE, IF, RETURN, TRY, VOID,
    CONTINUE, FALSE, IN, SET, TYPEOF, WHILE, DEFAULT, FINALLY,
    INSTANCEOF, SWITCH, UNDEFINED, WITH, DELETE, FOR, LET, THIS,
    UNLESS, YIELD
  ]
  
  def auto_semicolon?( error )
    if NoViableAlternative === error
      return( @auto_semicolon = error ) unless same_line?
    end
    return false
  end
  
  def recover( error = $! )
    @auto_semicolon == error and return( @auto_semicolon = nil )
    super
  end
  
  def report_error( error = $! )
    auto_semicolon?( error ) and return
    super
  end
  
  def newline?( from = 1 )
    to = from == -1 ? 1 : from + 1
    start = @input.future?( from )
    stop = @input.future?( to )
    
    start.upto( stop ) do | i |
      @input.at( i ).type == NEWLINE and return( true )
    end
    
    return( false )
  end
  
  def same_line?
    stop  = @input.future? || @input.length
    start = @input.past?   || 0
    
    start.upto( stop ) do | i |
      @input.at( i ).type == NEWLINE and return( false )
    end
    
    return( true )
  end
  
  def property_definition?
    type = @input.peek
    RESERVED.include?( type ) and type = ID
    
    case @input.peek
    when GET, SET then return true
    when ID
      case @input.peek( 2 )
      when COLON, ARROW then return true
      else return false
      end
    end
  end
  
  def prepend_tree( root, child )
    child = @adaptor.rule_post_processing( child )
    root.unshift( child )
    root.start_index > child.start_index and root.start_index = child.start_index
    root.stop_index  < child.stop_index  and root.stop_index  = child.stop_index
    return @adaptor.rule_post_processing( root )
  end
}

@lexer::members {
  attr_accessor :value_expected
  
  NO_VALUE_FOLLOWS = Set[
    ID, REGEX, STRING, NUMBER, THIS,
    TRUE, FALSE, NULL, UNDEFINED,
    RPAREN, RBRACK, RBRACE,
    IVAR, DOC, GENERAL,
    DSTRING, DDOC, DREGEX, DGENERAL
  ]
  
  def next_token
    token = super
    unless token.hidden?
      @value_expected =
        NO_VALUE_FOLLOWS.include?( token.type ) ? false : true
    end
    return( token )
  end
  
  def next_type
    loop do
      @state.token = nil
      @state.channel = DEFAULT_CHANNEL
      @state.token_start_position = @input.index
      @state.token_start_column = @input.column
      @state.token_start_line = @input.line
      @state.text = nil
      @input.peek == EOF and return EOF
      begin
        token!
        
        case token = @state.token
        when nil
          return @state.type
        when SKIP_TOKEN then next
        else
          return token.type
        end
      rescue ANTLR3::Error::NoViableAlternative => re
        report_error( re )
        recover( re )
      rescue ANTLR3::Error::RecognitionError => re
        report_error( re )
      end
    end
  end
  
  def at_interpolation?
    input.peek == 0x23 or return false 
    case input.peek( 2 )
    when 0x7b, 0x40, 0x25, 0x24  
      return true
    end
    return false
  end

  def tokenize_until_balanced( incr, decr, starting_depth = 1 )
    tokens = []
    
    depth = starting_depth
    for tk in self
      case tk.type
      when incr then depth += 1
      when decr
        depth -= 1
        depth.zero? and break
      end
      tokens << tk
    end
    
    depth.zero? or raise "hit the end of the file before finding a balance"
    return tokens
  end
  
  def quick_balance( incr, decr, starting_depth = 1 )
    lexer = self.class.new( input )
    depth = starting_depth
    while type = lexer.next_type and type != EOF
      case type
      when incr then depth += 1
      when decr
        depth -= 1
        depth.zero? and return self
      end
    end
    raise "hit the end of the file before finding a balance"
  end
  
  # TODO: handle EOF scenario
  def scan_until_delimiter( delim )
    while c = @input.peek
      case c
      when 0x5c      #
        @input.consume
      when delim
        @input.consume
        return
      when EOF
        break
      end
      @input.consume
    end
  end

  def scan
    while type = next_type and type != EOF
      yield( type )
    end
  end
}

@lexer::init {
  @value_expected = true
}

/********************************************************************************
 ****************************  Top-Level Structure  *****************************
 ********************************************************************************/

program
  : source_elements -> source_elements
  |                 -> ^( UNDEFINED )
  ;
  
source_elements
  : statement (  statement )*
  ;

block
  : ( '{' )=> statement_block
  | statement
  ;

statement_block
  : '{'  statement_list? '}' -> ^( BLOCK statement_list? )
  ;
  
statement_list
  : statement+ -> statement+
  ;

clause
  : '(' expression_list ')' -> expression_list
  ;

/********************************************************************************
 ********************************  Statements  **********************************
 ********************************************************************************/

statement
  : variable_statement
  | const_statement
  | empty_statement
  | ( 'function' )=> function
  | ( EJS )=> EJS^
  | DIRECTIVE^
  | class_statement
  | macro
  | ( ID  ':' )=> labelled_statement
  | ( 'let' )=> let_statement
  | expression_statement
  | if_statement
  | while_statement
  | do_while_statement
  | for_loop
  | continue_statement
  | break_statement
  | yield_statement
  | return_statement
  | with_statement
  | switch_statement
  | throw_statement
  | try_statement
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Simple Statements
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

empty_statement
  : ';' ->
  ;

expression_statement
  : expression_list statement_end!
  ;

labelled_statement
  : ID  ':'  block
    -> ^( LABEL ID block )
  ;

statement_end
  : ';'
  | ( '}' )=>
  | EOF
  ;

blank
  : -> ^( UNDEFINED )
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Block-ish Statements
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

try_statement
  : 'try'
    ( statement_block -> statement_block )
    ( f=finally_clause    -> { prepend_tree( $f.tree, $tree ) }
    | ( catch_clause      -> { prepend_tree( $catch_clause.tree, $tree ) } )+
      ( f2=finally_clause -> { prepend_tree( $f2.tree, $tree ) } )?
    |                     -> ^( 'try' statement_block )
    )
  ;

catch_clause
  : 'catch'  '('  catch_selector  ')'  statement_block
    -> ^( 'catch' catch_selector statement_block )
  ;

catch_selector
@after {
  case $tree.token.type
  when IF     then $tree.token.type = POST_IF
  when UNLESS then $tree.token.type = POST_UNLESS
  end
}
  : ID
    ( 'if'^     expression
    | 'unless'^ expression
    )?
  ;

finally_clause
  : 'finally' statement_block
    -> ^( 'finally' statement_block )
  ;

with_statement
  : 'with' clause block -> ^( 'with' clause block )
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Variable Declarations
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

variable_statement
  : 'var'^ variable_declaration_list statement_end!
  ;

const_statement
  : 'const'^ variable_declaration_list statement_end!
  ;

let_statement
  : 'let'^ '('! variable_declaration_list ')'! block
  ;

variable_declaration_list
  : variable_declaration ( ','! variable_declaration )*
  ;

variable_declaration
  : declaration_target ( '='^  expression )?
  ;

declaration_target
  : '[' declaration_target ( ',' declaration_target )* ']' -> ^( ARRAY declaration_target+ )
  | '{' declaration_key ( ',' declaration_key )* '}'       -> ^( OBJECT declaration_key+ )
  | variable_name -> variable_name
  ;
  
declaration_key
  : ( ID | STRING | NUMBER | reserved { $reserved.tree.token.type = ID } ) ':'^ declaration_target
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Branching Statements
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

if_statement
  : ( 'if'^ | 'unless'^ ) clause block ( 'else'! block )?
  ;
  
browser_block
  : '!' browser_name^ statement_block ( 'else'! block )?
  ;

switch_statement
  : 'switch'  '('  expression_list  ')' 
    '{'
    ( case_clause )*
    ( default_clause (  case_clause )* )? 
    '}'
    -> ^( 'switch' expression_list case_clause* default_clause? )
  ;
  
case_clause
  : 'case'^  expression_list  ':'!  statement_list?
  ;
  
default_clause
  : 'default'^  ':'!  statement_list?
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// While Loops
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

do_while_statement
  : 'do' block
    ( 'while' clause statement_end -> ^( 'while' clause block )
    | 'until' clause statement_end -> ^( 'until' clause block )
    )
    -> ^( 'do' $do_while_statement )
  ;

while_statement
  : 'while'^ clause block
  | 'until'^ clause block
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// For Loops
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

for_loop
  : { @input.peek( 2 ) == EACH }?=> for_each_in_statement
  | ( 'for'  '('  ~( ')' | ';' | 'in' )*  'in' )=> for_in_statement
  | for_statement
  ;

for_statement
  : 'for'^
    '('!
    ( for_statement_initialiser_part | blank ) ';'!
    ( expression_list | blank )  ';'!
    ( expression_list | blank )
    ')'!
    block
  ;
  
for_statement_initialiser_part
  scope InFor;
  @before { $InFor::active = true  }
  @after  { $InFor::active = false }
  : expression_list
  | ( 'var'^ | 'let'^ )  variable_declaration_list
  ;

for_each_in_statement
  : 'for' 'each' '('  for_in_statement_initialiser_part  'in'  expression  ')'  block
    -> ^( 'each' for_in_statement_initialiser_part expression block )
  ;
  
for_in_statement
  : f='for'  '('  for_in_statement_initialiser_part  'in'  expression  ')'  block
    -> ^( FOR_IN[ $f ] for_in_statement_initialiser_part expression block )
  ;
  
for_in_statement_initialiser_part
  scope InFor;
  @before {
    $InFor::active = true
  }
  @after {
    $InFor::active = false
  }
  : ( 'var'^ | 'let'^ )  declaration_target
  | member
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Flow Control
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

continue_statement
  : 'continue'^ ( { same_line? }?=> ID )? statement_end!
  ;

break_statement
  : 'break'^ ( { same_line? }?=> ID )? statement_end!
  ;

return_statement
  : 'return'^ ( { same_line? }?=> expression_list )? statement_end!
  ;

yield_statement
  : 'yield'^ ( { same_line? }?=> expression_list )? statement_end!
  ;
  
throw_statement
  : 'throw'^ ( { same_line? }?=> expression_list )? statement_end!
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Definition Statements
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

class_statement
  : 'class'^ ID '{'! class_member* '}'!
  | 'object'^ 'var'? ID '{'! class_member* '}'!
  ;

class_member
  : variable_statement
  | 'def'^ variable_name function_parameters? statement_block
  | 'get'^ ID function_parameters? block
  | 'set'^ ID function_parameters? block
  | variable_name '='^ expression
  | ';'!
  ;


/********************************************************************************
 ********************************  Expression  **********************************
 ********************************************************************************/

expression_list
  : expression ( ','^ expression )*
  ;

expression
  : ( member assignment_op )=> member assignment_op^ expression
  | conditional
  ;

assignment_op
  : '='
  | '*='
  | SLASH_ASGN
  | MOD_ASGN
  | '+='
  | '-='
  | '<<='
  | '>>='
  | '>>>='
  | '&='
  | '^='
  | '||='
  | '|='
  ;

conditional
  : logical_or (  '?'^  t=expression  ':'!  f=expression )?
  ;

logical_or
  : logical_and (  '||'^  logical_and )*
  ;

logical_and
  : bit_or  ( '&&'^  bit_or )*
  ;

bit_or
  : bit_xor ( '|'^  bit_xor )*
  ;

bit_xor
  : bit_and (  '^'^  bit_and )*
  ;

bit_and
  : equality (  '&'^  equality )*
  ;

equality
  : relation 
    ( 
      ( '=='^ | '!='^ | '==='^ | '!=='^ ) 
      relation
    )*
  ;

relation
  : shift (  relation_op^  shift )*
  ;
  
relation_op
  : '<'
  | '>'
  | '<='
  | '>='
  | 'instanceof'
  | { !( $InFor.last && $InFor::active ) }?=> 'in'
  ;

shift
  : add (  ( '<<'^ | '>>'^ | '>>>'^ )  add )*
  ;

add
  : mult (  ( '+'^ | '-'^ )  mult )*
  ;

mult
  : unary (  ( '*'^ | SLASH^ | MOD^ )  unary )*
  ;

unary
  : 'delete'     unary -> ^( 'delete' unary )
  | 'void'       unary -> ^( 'void' unary )
  | 'typeof'     unary -> ^( 'typeof' unary )
  | 'defined?'   unary -> ^( 'defined?' unary )
  | 'undefined?' unary -> ^( 'undefined?' unary )
  | '++'         unary -> ^( '++' unary )
  | '--'         unary -> ^( '--' unary )
  | '+'          unary -> ^( UPLUS[ '+' ] unary )
  | '-'          unary -> ^( UMINUS[ '-' ] unary )
  | '~'          unary -> ^( '~' unary )
  | '!'          unary -> ^( '!' unary )
  | postfix            -> postfix
  ;

postfix
  : member
    ( { same_line? }?=>
      ( '++' -> ^( POST_INCR[ '++' ] member )
      | '--' -> ^( POST_DECR[ '--' ] member )
      )
    |      -> member
    )
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Atomic Expressions
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

member
  : ( receiver    -> receiver )
    ( accessor    -> { prepend_tree( $accessor.tree, $tree ) }
    | arguments   -> ^( CALL $member arguments )
    | { same_line? }?=>
        iteration -> ^( ITER $member iteration )
    )*
  ;
  
accessor
  : '['  expression  ']' -> ^( AREF[ '[' ] expression )  //]
  |  '.'^ ( ID | STRING | NUMBER | reserved { $reserved.tree.token.type = ID } )
  ;

receiver
  : primary  -> primary
  | function -> function
  | EJS      -> EJS
  | ( 'new' new_target arguments? )=>
      'new' new_target arguments? -> ^( 'new' new_target arguments? )
  ;

new_target
  : ( receiver -> receiver )
    ( accessor -> { prepend_tree( $accessor.tree, $tree )  } )*
  ;

arguments
  : '('  ( argument  ( ',' argument  )* ','? )? ')' -> ^( ARGUMENTS argument* )
  ;

argument
  : { property_definition? }?=> property_definition
  | expression
    // dumb trick to keep ANTLR from complaining about assigning type in a parser rule
  | a='&' { t = $a; t.type = FUNC_ARG }  
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Functions / Blocks
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

macro
  : 'macro'^ variable_name function_parameters? block
  ;

function
  : ( function_literal -> function_literal )
    ( catch_clause     -> { prepend_tree( $catch_clause.tree, $tree ) } )*
    ( finally_clause   -> { prepend_tree( $finally_clause.tree, $tree ) } )?
  ;

function_literal
  : 'function'^ variable_name? function_parameters statement_block
  | '->'^ variable_name? function_parameters? statement_block
  ;


//ejs
//  : 'ejs'^ variable_name? function_parameters ':'!? ( GENERAL | STRING | DOC )
//  ;

iteration
  @after { @adaptor.set_token_boundaries( $tree.last, $start, $stop ) }
  : '{' iteration_parameters statement_list '}'
    -> iteration_parameters ^( BLOCK['{']  statement_list )
  | 'do' iteration_parameters statement_list 'end'
    -> iteration_parameters ^( BLOCK['do'] statement_list )
  ;

function_parameters
  : '(' parameters? ')' -> ^( PARAMS parameters? )
  ;

iteration_parameters
  : '|' parameters? '|' -> ^( PARAMS parameters? )
  | -> ^( PARAMS )
  ;

parameters
  : parameter (  ','  parameter )* -> parameter+
  ;

parameter
  : '*' variable_name  -> ^( SPLAT['*'] variable_name )
  | variable_name
    ( '=' expression -> ^( '=' variable_name expression )
    |                -> variable_name
    )
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Literals
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

primary
  : 'this'^
  | IVAR^
  | variable_name^
  | 'null'^
  | 'true'^
  | 'false'^
  | 'undefined'^
  | NUMBER^
  | STRING^
  | DSTRING^
  | DOC^
  | DDOC^
  | REGEX^
  | GENERAL^
  | DGENERAL^
  | macro_expansion
  | array_literal
  | object_literal
  | '('!  expression_list  ')'!
  ;

macro_expansion
  : '#'^ ID arguments
  ;

array_literal
  : '[' ']' -> ^( ARRAY )
  | '[' list_item ( ',' list_item )* ']' -> ^( ARRAY list_item* )
  ;
  
list_item
  : { @input.peek( 2 ) == COLON }?=> property_name ':' expression -> ^( ':' property_name expression )
  | ( ',' )=> -> ^( UNDEFINED )
  | expression -> expression
  ;
  
object_literal
  : '{'  '}' -> ^( OBJECT )
  | '{'  property_definition (  ','  property_definition )* '}'
    -> ^( OBJECT property_definition+ )
  ;

property_definition
  : 'get'^ ID function_parameters? block
  | 'set'^ ID function_parameters? block
  | ( ID | STRING | NUMBER | reserved { $reserved.tree.token.type = ID } )
    ( ':'^  expression
    | t='->'^ function_parameters? statement_block
    )
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Names and Words
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

property_name
  : ID
  | STRING
  | NUMBER
  | reserved { $reserved.tree.token.type = ID }
  ;

variable_name
  : ID
  | t=pseudokeyword { $t.tree.token.type = ID }
  ;

browser_name
  : 'opera'
  | 'firefox'
  | 'chrome'
  ;

pseudokeyword
  : 'each'
  | 'get'
  | 'set'
  | 'macro'
  | 'opera'
  | 'firefox'
  | 'chrome'
  | 'class'
  | 'def'
  | 'object'
  ;

reserved
  : 'break'    | 'do'      | 'function'   | 'new'    | 'throw'     | 'until'
  | 'case'     | 'each'    | 'get'        | 'null'   | 'true'      | 'var'  
  | 'catch'    | 'else'    | 'if'         | 'return' | 'try'       | 'void' 
  | 'continue' | 'false'   | 'in'         | 'set'    | 'typeof'    | 'while'
  | 'default'  | 'finally' | 'instanceof' | 'switch' | 'undefined' | 'with' 
  | 'delete'   | 'for'     | 'let'        | 'this'   | 'unless'    | 'yield'
  | 'opera'    | 'firefox' | 'chrome'     | 'def'    | 'class'     | 'object'
  ;

/********************************************************************************
 ***********************************  Lexer  ************************************
 ********************************************************************************/

MOD
  : '%%' DIRECTIVE_LINE { $type = DIRECTIVE }
  | { @value_expected  }?=>
      '%' ( ID ( ' ' | '\t' )* )? { $type = GENERAL } GENERALIZED_DELIMITER
      ( 'a' .. 'z' )*
  | '%' ( '=' { $type = MOD_ASGN } | { $type = MOD } )
  ;

SLASH
  : '//' ~( '\n' | '\r' )* { $type = LINE_COMMENT; $channel = HIDDEN }
  | '/*' .* '*/' { $type = COMMENT; $channel = HIDDEN }
  | { @value_expected  }?=>
    '/' { $type = REGEX }
    ( ~( '/' | '*' | '\\' | '\r' | '\n' | '#' )
    | '\\' .
    | { at_interpolation? }?=> INTERPOLATION { $type = DREGEX }
    | '#'
    )
    ( ~( '/' | '\\' | '\r' | '\n' | '#' )
    | '\\' .
    | { at_interpolation? }?=> INTERPOLATION { $type = DREGEX }
    | '#'
    )*
    '/'
    ( 'a' .. 'z' )*
  | { !@value_expected }?=> '/' ( '=' { $type = SLASH_ASGN } | { $type = SLASH } )
  ;

DOC
  : '`'
    ( ~( '`'  | '\\' | '#' )
    | '\\' .
    | { at_interpolation? }?=> INTERPOLATION { $type = DDOC }
    | '#'
    )*
    '`'
  ;

STRING
  : '\'' ( ~( '\'' | '\\' ) | '\\' . )* '\''
  | '"'
    ( ~( '"' | '\\' | '#' )
    | '\\' .
    | { at_interpolation? }?=> INTERPOLATION { $type = DSTRING }
    | '#'
    )*
    '"'
  ;

NUMBER
  : ('0'..'9')+ '.' ('0'..'9')* ( ('e' | 'E') ('+' | '-')? ('0'..'9')+ )?
  | '.'? ('0'..'9')+ ( ('e' | 'E') ('+' | '-')? ('0'..'9')+ )?
  | '0' ('x' | 'X') ( '0'..'9' | 'a'..'f' | 'A'..'F' )+
  ;

NEWLINE
  : ( '\n' | '\r' )+ { $channel = HIDDEN }
  ;

IVAR
  : '@' ( '$' | '_' | 'a'..'z' | 'A'..'Z' )
    ( 'a'..'z' | 'A'..'Z' | '0'..'9' | '_' | '$' )*
  ;

ID
  : ( '$' | '_' | 'a'..'z' | 'A'..'Z' )
    ( 'a'..'z' | 'A'..'Z' | '0'..'9' | '_' | '$' )*
  ;

WS // Tab, vertical tab, form feed, space, non-breaking space and any other unicode "space separator".
  : ( '\t' | '\f' | ' ' | '\u00A0' )+  { $channel = HIDDEN }
  ;

EJS
  : 'ejs' IGNORABLE_NL* ID? IGNORABLE_NL*
    '(' { quick_balance( LPAREN, RPAREN ) }
    IGNORABLE_NL*
    '%'? NESTED_BRACES
  ;


fragment
IGNORABLE
  : '//' ~( '\n' | '\r' )* ( '\r'? '\n' )?
  | '/*' .* '*/'
  | ( '\t' | '\f' | ' ' | '\u00A0' | '\\' '\r'? '\n' )+
  ;

fragment
IGNORABLE_NL
  : '//' ~( '\n' | '\r' )* ( '\r'? '\n' )?
  | '/*' .* '*/'
  | ( '\t' | '\f' | ' ' | '\u00A0' | '\n' | '\r' )+
  ;


fragment
DIRECTIVE_LINE
  : IGNORABLE*
    ( HIDE
    | REQUIRE
    )
    IGNORABLE*
    ( '\r'? '\n' )?
  ;


fragment
HIDE
  : 'hide' IGNORABLE*
    '{' { quick_balance( LBRACE, RBRACE ) }
  ;

fragment
REQUIRE
  : ( 'require' | 'include' )
    IGNORABLE*
    (
      ( NESTED_PARENTHESES
      | NESTED_BRACKETS
      | NESTED_BRACES
      | NESTED_ANGLES
      | '"'  ( ~( '"'  | '\\' ) | '\\' . )* '"'
      | '`'  ( ~( '`'  | '\\' ) | '\\' . )* '`'
      | '\'' ( ~( '\'' | '\\' ) | '\\' . )* '\''
      )
    | ~( '\r' | '\n' | '(' | '[' | '{' | '<' | '"' | '\'' | '`' )
      ( ~( '\r' | '\n' | ' ' | '\t' | '\f' | '\\' ) | '\\' . )*
    )
  ;

fragment
GENERALIZED_DELIMITER
  : NESTED_PARENTHESES
  | NESTED_BRACKETS
  | NESTED_BRACES
  | NESTED_ANGLES
  | ( '!' | '@' | '~' | '`' | '^' | '&' | '*'
    | '-' | '+' | '=' | '|' | ':' | ';' | '.'
    | ',' | '?' | '/' | '"' | '\''
    )
    { scan_until_delimiter( @input.peek( -1 ) ) }
  ;

fragment
NESTED_PARENTHESES
  : '(' ( ~( '(' | ')' | '\\' ) | '\\' . | NESTED_PARENTHESES )* ')'
  ;

fragment
NESTED_BRACKETS
  : '[' ( ~( '[' | ']' | '\\' ) | '\\' .  | NESTED_BRACKETS )* ']'
  ;

fragment
NESTED_BRACES
  : '{' ( ~( '{' | '}' | '\\' ) | '\\' . | NESTED_BRACES )* '}'
  ;

fragment
NESTED_ANGLES
  : '<' ( ~( '<' | '>' | '\\' ) | '\\' . | NESTED_ANGLES )* '>'
  ;

fragment
INTERPOLATION
  : '#'
    ( '{' { quick_balance( LBRACE, RBRACE ) }
    | ( '@' | '%' ) ID
    | '$' ( '$' | '_' | 'a'..'z' | 'A'..'Z' | '0' .. '9' )*
    )
  ;

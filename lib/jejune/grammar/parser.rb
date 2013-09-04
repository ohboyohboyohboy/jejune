#!/usr/bin/env ruby
#
# Jejune.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jun 18, 2010 05:38:11
# Ruby runtime library version: 1.8.0
# Input grammar file: Jejune.g
# Generated at: 2013-09-04 12:02:40
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.8.0):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    gem( 'antlr3', '~> 1.9' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module Jejune
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :FUNCTION => 121, :STAR => 69, :WHILE => 117, :SLASH_ASGN => 63, 
                   :FUNC_ARG => 124, :MOD => 83, :CONST => 55, :CASE => 40, 
                   :NEW => 95, :DO => 79, :REGEX => 30, :NOT => 98, :STAR_ASGN => 72, 
                   :EOF => -1, :REQUIRE => 33, :BREAK => 34, :MINUS_ASGN => 80, 
                   :HAT => 17, :RPAREN => 39, :T__148 => 148, :GREATER => 14, 
                   :POST_IF => 9, :T__149 => 149, :INCR => 32, :RETURN => 36, 
                   :LESS => 56, :THIS => 78, :DO_WHILE => 88, :RSHIFT_ASGN => 51, 
                   :GET => 11, :VAR => 111, :VOID => 114, :EACH => 97, :GEQ => 8, 
                   :EQ => 103, :PIPE_ASGN => 119, :COMMENT => 52, :ASGN => 25, 
                   :ARRAY => 19, :T__150 => 150, :RBRACK => 27, :RBRACE => 24, 
                   :ARGUMENTS => 16, :NESTED_ANGLES => 147, :POUND => 127, 
                   :IVAR => 135, :LINE_COMMENT => 62, :LSHIFT => 68, :SWITCH => 75, 
                   :NULL => 101, :BL_END => 31, :ELSE => 100, :NUMBER => 134, 
                   :DIRECTIVE_LINE => 137, :DELETE => 70, :DGENERAL => 73, 
                   :OR_ASGN => 110, :NEQQ => 92, :LSHIFT_ASGN => 71, :TRY => 90, 
                   :IGNORABLE => 144, :UNDEFINED => 99, :GENERAL => 5, :IGNORABLE_NL => 142, 
                   :WS => 141, :FOR_IN => 118, :TYPEOF => 93, :UNTIL => 105, 
                   :HAT_ASGN => 20, :MOD_ASGN => 86, :OR => 107, :DSTRING => 94, 
                   :INTERPOLATION => 139, :CALL => 37, :POST_INCR => 12, 
                   :DDOC => 61, :CATCH => 43, :FALSE => 109, :AREF => 13, 
                   :SPLAT => 66, :QMARK => 21, :THROW => 81, :OBJECT_DEF => 130, 
                   :NESTED_PARENTHESES => 145, :EJS => 131, :DO_UNTIL => 85, 
                   :LBRACK => 50, :DEF => 128, :HIDE => 23, :PLUS_ASGN => 125, 
                   :DOC => 136, :AMP => 4, :LBRACE => 47, :FOR => 115, :ID => 132, 
                   :AND => 10, :DIRECTIVE => 76, :LPAREN => 65, :IF => 26, 
                   :SLASH => 60, :IN => 29, :OBJECT => 104, :CONTINUE => 58, 
                   :COMMA => 49, :YIELD => 123, :TILDE => 84, :PLUS => 122, 
                   :PIPE => 116, :POST_DECR => 6, :DOT => 82, :UNLESS => 102, 
                   :RSHIFT => 42, :NESTED_BRACKETS => 146, :WITH => 120, 
                   :PARAMS => 113, :NESTED_BRACES => 143, :UPLUS => 108, 
                   :ITER => 41, :DEFAULT => 67, :UMINUS => 96, :SET => 57, 
                   :INSTANCEOF => 35, :MINUS => 77, :GENERALIZED_DELIMITER => 138, 
                   :SEMI => 54, :TRUE => 87, :DREGEX => 91, :COLON => 46, 
                   :AMP_ASGN => 7, :NEQ => 89, :NEWLINE => 140, :RSHIFT3_ASGN => 48, 
                   :FINALLY => 112, :LABEL => 44, :IS_UNDEFINED => 126, 
                   :BLOCK => 28, :DECR => 64, :ARROW => 22, :PROGRAM => 18, 
                   :IS_DEFINED => 38, :RSHIFT3 => 45, :MACRO => 74, :CLASS_DEF => 129, 
                   :EQQ => 106, :LET => 59, :POST_UNLESS => 15, :STRING => 133, 
                   :LEQ => 53 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "AMP", "GENERAL", "POST_DECR", "AMP_ASGN", "GEQ", "POST_IF", 
                    "AND", "GET", "POST_INCR", "AREF", "GREATER", "POST_UNLESS", 
                    "ARGUMENTS", "HAT", "PROGRAM", "ARRAY", "HAT_ASGN", 
                    "QMARK", "ARROW", "HIDE", "RBRACE", "ASGN", "IF", "RBRACK", 
                    "BLOCK", "IN", "REGEX", "BL_END", "INCR", "REQUIRE", 
                    "BREAK", "INSTANCEOF", "RETURN", "CALL", "IS_DEFINED", 
                    "RPAREN", "CASE", "ITER", "RSHIFT", "CATCH", "LABEL", 
                    "RSHIFT3", "COLON", "LBRACE", "RSHIFT3_ASGN", "COMMA", 
                    "LBRACK", "RSHIFT_ASGN", "COMMENT", "LEQ", "SEMI", "CONST", 
                    "LESS", "SET", "CONTINUE", "LET", "SLASH", "DDOC", "LINE_COMMENT", 
                    "SLASH_ASGN", "DECR", "LPAREN", "SPLAT", "DEFAULT", 
                    "LSHIFT", "STAR", "DELETE", "LSHIFT_ASGN", "STAR_ASGN", 
                    "DGENERAL", "MACRO", "SWITCH", "DIRECTIVE", "MINUS", 
                    "THIS", "DO", "MINUS_ASGN", "THROW", "DOT", "MOD", "TILDE", 
                    "DO_UNTIL", "MOD_ASGN", "TRUE", "DO_WHILE", "NEQ", "TRY", 
                    "DREGEX", "NEQQ", "TYPEOF", "DSTRING", "NEW", "UMINUS", 
                    "EACH", "NOT", "UNDEFINED", "ELSE", "NULL", "UNLESS", 
                    "EQ", "OBJECT", "UNTIL", "EQQ", "OR", "UPLUS", "FALSE", 
                    "OR_ASGN", "VAR", "FINALLY", "PARAMS", "VOID", "FOR", 
                    "PIPE", "WHILE", "FOR_IN", "PIPE_ASGN", "WITH", "FUNCTION", 
                    "PLUS", "YIELD", "FUNC_ARG", "PLUS_ASGN", "IS_UNDEFINED", 
                    "POUND", "DEF", "CLASS_DEF", "OBJECT_DEF", "EJS", "ID", 
                    "STRING", "NUMBER", "IVAR", "DOC", "DIRECTIVE_LINE", 
                    "GENERALIZED_DELIMITER", "INTERPOLATION", "NEWLINE", 
                    "WS", "IGNORABLE_NL", "NESTED_BRACES", "IGNORABLE", 
                    "NESTED_PARENTHESES", "NESTED_BRACKETS", "NESTED_ANGLES", 
                    "'opera'", "'firefox'", "'chrome'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Jejune
    include ANTLR3::ASTBuilder

    RULE_METHODS = [ :program, :source_elements, :block, :statement_block, 
                     :statement_list, :clause, :statement, :empty_statement, 
                     :expression_statement, :labelled_statement, :statement_end, 
                     :blank, :try_statement, :catch_clause, :catch_selector, 
                     :finally_clause, :with_statement, :variable_statement, 
                     :const_statement, :let_statement, :variable_declaration_list, 
                     :variable_declaration, :declaration_target, :declaration_key, 
                     :if_statement, :browser_block, :switch_statement, :case_clause, 
                     :default_clause, :do_while_statement, :while_statement, 
                     :for_loop, :for_statement, :for_statement_initialiser_part, 
                     :for_each_in_statement, :for_in_statement, :for_in_statement_initialiser_part, 
                     :continue_statement, :break_statement, :return_statement, 
                     :yield_statement, :throw_statement, :class_statement, 
                     :class_member, :expression_list, :expression, :assignment_op, 
                     :conditional, :logical_or, :logical_and, :bit_or, :bit_xor, 
                     :bit_and, :equality, :relation, :relation_op, :shift, 
                     :add, :mult, :unary, :postfix, :member, :accessor, 
                     :receiver, :new_target, :arguments, :argument, :macro, 
                     :function, :function_literal, :iteration, :function_parameters, 
                     :iteration_parameters, :parameters, :parameter, :primary, 
                     :macro_expansion, :array_literal, :list_item, :object_literal, 
                     :property_definition, :property_name, :variable_name, 
                     :browser_name, :pseudokeyword, :reserved, :synpred1_Jejune, 
                     :synpred2_Jejune, :synpred3_Jejune, :synpred4_Jejune, 
                     :synpred5_Jejune, :synpred6_Jejune, :synpred7_Jejune, 
                     :synpred8_Jejune, :synpred9_Jejune, :synpred10_Jejune ].freeze

    @@InFor = Struct.new( :active )



    include TokenData

    begin
      generated_using( "Jejune.g", "3.2.1-SNAPSHOT Jun 18, 2010 05:38:11", "1.8.0" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
      @InFor_stack = []



    end

      
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

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    ProgramReturnValue = define_return_scope 

    # 
    # parser rule program
    # 
    # (in Jejune.g)
    # 246:1: program : ( source_elements -> source_elements | -> ^( UNDEFINED ) );
    # 
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )
      return_value = ProgramReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      source_elements1 = nil

      stream_source_elements = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule source_elements" )
      begin
        # at line 251:3: ( source_elements -> source_elements | -> ^( UNDEFINED ) )
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == GENERAL || look_1_0 == GET || look_1_0 == ARROW || look_1_0 == IF || look_1_0 == REGEX || look_1_0 == INCR || look_1_0 == BREAK || look_1_0 == RETURN || look_1_0 == IS_DEFINED || look_1_0 == LBRACE || look_1_0 == LBRACK || look_1_0.between?( SEMI, CONST ) || look_1_0.between?( SET, LET ) || look_1_0 == DDOC || look_1_0.between?( DECR, LPAREN ) || look_1_0 == DELETE || look_1_0.between?( DGENERAL, DO ) || look_1_0 == THROW || look_1_0 == TILDE || look_1_0 == TRUE || look_1_0 == TRY || look_1_0.between?( TYPEOF, NEW ) || look_1_0.between?( EACH, UNDEFINED ) || look_1_0.between?( NULL, UNLESS ) || look_1_0 == UNTIL || look_1_0 == FALSE || look_1_0 == VAR || look_1_0.between?( VOID, FOR ) || look_1_0 == WHILE || look_1_0.between?( WITH, YIELD ) || look_1_0.between?( IS_UNDEFINED, DOC ) || look_1_0.between?( T__148, T__150 ) )
          alt_1 = 1
        elsif ( look_1_0 == EOF )
          alt_1 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 1, 0 )
        end
        case alt_1
        when 1
          # at line 251:5: source_elements
          @state.following.push( TOKENS_FOLLOWING_source_elements_IN_program_1733 )
          source_elements1 = source_elements
          @state.following.pop
          if @state.backtracking == 0
            stream_source_elements.add( source_elements1.tree )
          end
          # AST Rewrite
          # elements: source_elements
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 251:21: -> source_elements
            @adaptor.add_child( root_0, stream_source_elements.next_tree )



            return_value.tree = root_0

          end
        when 2
          # at line 252:21: 
          # AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 252:21: -> ^( UNDEFINED )
            # at line 252:24: ^( UNDEFINED )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create_from_type( UNDEFINED, "UNDEFINED" ), root_1 )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )

      end
      
      return return_value
    end

    SourceElementsReturnValue = define_return_scope 

    # 
    # parser rule source_elements
    # 
    # (in Jejune.g)
    # 255:1: source_elements : statement ( statement )* ;
    # 
    def source_elements
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      return_value = SourceElementsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      statement2 = nil
      statement3 = nil


      begin
        root_0 = @adaptor.create_flat_list


        # at line 256:5: statement ( statement )*
        @state.following.push( TOKENS_FOLLOWING_statement_IN_source_elements_1780 )
        statement2 = statement
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, statement2.tree )
        end
        # at line 256:15: ( statement )*
        while true # decision 2
          alt_2 = 2
          look_2_0 = @input.peek( 1 )

          if ( look_2_0 == GENERAL || look_2_0 == GET || look_2_0 == ARROW || look_2_0 == IF || look_2_0 == REGEX || look_2_0 == INCR || look_2_0 == BREAK || look_2_0 == RETURN || look_2_0 == IS_DEFINED || look_2_0 == LBRACE || look_2_0 == LBRACK || look_2_0.between?( SEMI, CONST ) || look_2_0.between?( SET, LET ) || look_2_0 == DDOC || look_2_0.between?( DECR, LPAREN ) || look_2_0 == DELETE || look_2_0.between?( DGENERAL, DO ) || look_2_0 == THROW || look_2_0 == TILDE || look_2_0 == TRUE || look_2_0 == TRY || look_2_0.between?( TYPEOF, NEW ) || look_2_0.between?( EACH, UNDEFINED ) || look_2_0.between?( NULL, UNLESS ) || look_2_0 == UNTIL || look_2_0 == FALSE || look_2_0 == VAR || look_2_0.between?( VOID, FOR ) || look_2_0 == WHILE || look_2_0.between?( WITH, YIELD ) || look_2_0.between?( IS_UNDEFINED, DOC ) || look_2_0.between?( T__148, T__150 ) )
            alt_2 = 1

          end
          case alt_2
          when 1
            # at line 256:18: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_source_elements_1785 )
            statement3 = statement
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, statement3.tree )
            end

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )

      end
      
      return return_value
    end

    BlockReturnValue = define_return_scope 

    # 
    # parser rule block
    # 
    # (in Jejune.g)
    # 259:1: block : ( ( '{' )=> statement_block | statement );
    # 
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )
      return_value = BlockReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      statement_block4 = nil
      statement5 = nil


      begin
        # at line 260:3: ( ( '{' )=> statement_block | statement )
        alt_3 = 2
        alt_3 = @dfa3.predict( @input )
        case alt_3
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 260:5: ( '{' )=> statement_block
          @state.following.push( TOKENS_FOLLOWING_statement_block_IN_block_1808 )
          statement_block4 = statement_block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, statement_block4.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 261:5: statement
          @state.following.push( TOKENS_FOLLOWING_statement_IN_block_1814 )
          statement5 = statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, statement5.tree )
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )

      end
      
      return return_value
    end

    StatementBlockReturnValue = define_return_scope 

    # 
    # parser rule statement_block
    # 
    # (in Jejune.g)
    # 264:1: statement_block : '{' ( statement_list )? '}' -> ^( BLOCK ( statement_list )? ) ;
    # 
    def statement_block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )
      return_value = StatementBlockReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal6 = nil
      char_literal8 = nil
      statement_list7 = nil

      tree_for_char_literal6 = nil
      tree_for_char_literal8 = nil
      stream_RBRACE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RBRACE" )
      stream_LBRACE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LBRACE" )
      stream_statement_list = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule statement_list" )
      begin
        # at line 265:5: '{' ( statement_list )? '}'
        char_literal6 = match( LBRACE, TOKENS_FOLLOWING_LBRACE_IN_statement_block_1827 )
        if @state.backtracking == 0
          stream_LBRACE.add( char_literal6 )
        end
        # at line 265:10: ( statement_list )?
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0 == GENERAL || look_4_0 == GET || look_4_0 == ARROW || look_4_0 == IF || look_4_0 == REGEX || look_4_0 == INCR || look_4_0 == BREAK || look_4_0 == RETURN || look_4_0 == IS_DEFINED || look_4_0 == LBRACE || look_4_0 == LBRACK || look_4_0.between?( SEMI, CONST ) || look_4_0.between?( SET, LET ) || look_4_0 == DDOC || look_4_0.between?( DECR, LPAREN ) || look_4_0 == DELETE || look_4_0.between?( DGENERAL, DO ) || look_4_0 == THROW || look_4_0 == TILDE || look_4_0 == TRUE || look_4_0 == TRY || look_4_0.between?( TYPEOF, NEW ) || look_4_0.between?( EACH, UNDEFINED ) || look_4_0.between?( NULL, UNLESS ) || look_4_0 == UNTIL || look_4_0 == FALSE || look_4_0 == VAR || look_4_0.between?( VOID, FOR ) || look_4_0 == WHILE || look_4_0.between?( WITH, YIELD ) || look_4_0.between?( IS_UNDEFINED, DOC ) || look_4_0.between?( T__148, T__150 ) )
          alt_4 = 1
        end
        case alt_4
        when 1
          # at line 265:10: statement_list
          @state.following.push( TOKENS_FOLLOWING_statement_list_IN_statement_block_1830 )
          statement_list7 = statement_list
          @state.following.pop
          if @state.backtracking == 0
            stream_statement_list.add( statement_list7.tree )
          end

        end
        char_literal8 = match( RBRACE, TOKENS_FOLLOWING_RBRACE_IN_statement_block_1833 )
        if @state.backtracking == 0
          stream_RBRACE.add( char_literal8 )
        end
        # AST Rewrite
        # elements: statement_list
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 265:30: -> ^( BLOCK ( statement_list )? )
          # at line 265:33: ^( BLOCK ( statement_list )? )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( @adaptor.create_from_type( BLOCK, "BLOCK" ), root_1 )

          # at line 265:42: ( statement_list )?
          if stream_statement_list.has_next?
            @adaptor.add_child( root_1, stream_statement_list.next_tree )

          end

          stream_statement_list.reset();

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )

      end
      
      return return_value
    end

    StatementListReturnValue = define_return_scope 

    # 
    # parser rule statement_list
    # 
    # (in Jejune.g)
    # 268:1: statement_list : ( statement )+ -> ( statement )+ ;
    # 
    def statement_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      return_value = StatementListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      statement9 = nil

      stream_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule statement" )
      begin
        # at line 269:5: ( statement )+
        # at file 269:5: ( statement )+
        match_count_5 = 0
        while true
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0 == GENERAL || look_5_0 == GET || look_5_0 == ARROW || look_5_0 == IF || look_5_0 == REGEX || look_5_0 == INCR || look_5_0 == BREAK || look_5_0 == RETURN || look_5_0 == IS_DEFINED || look_5_0 == LBRACE || look_5_0 == LBRACK || look_5_0.between?( SEMI, CONST ) || look_5_0.between?( SET, LET ) || look_5_0 == DDOC || look_5_0.between?( DECR, LPAREN ) || look_5_0 == DELETE || look_5_0.between?( DGENERAL, DO ) || look_5_0 == THROW || look_5_0 == TILDE || look_5_0 == TRUE || look_5_0 == TRY || look_5_0.between?( TYPEOF, NEW ) || look_5_0.between?( EACH, UNDEFINED ) || look_5_0.between?( NULL, UNLESS ) || look_5_0 == UNTIL || look_5_0 == FALSE || look_5_0 == VAR || look_5_0.between?( VOID, FOR ) || look_5_0 == WHILE || look_5_0.between?( WITH, YIELD ) || look_5_0.between?( IS_UNDEFINED, DOC ) || look_5_0.between?( T__148, T__150 ) )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 269:5: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_statement_list_1859 )
            statement9 = statement
            @state.following.pop
            if @state.backtracking == 0
              stream_statement.add( statement9.tree )
            end

          else
            match_count_5 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(5)


            raise eee
          end
          match_count_5 += 1
        end

        # AST Rewrite
        # elements: statement
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 269:16: -> ( statement )+
          # at line 269:19: ( statement )+
          stream_statement.has_next? or raise ANTLR3::RewriteEarlyExit

          while stream_statement.has_next?
            @adaptor.add_child( root_0, stream_statement.next_tree )

          end
          stream_statement.reset



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )

      end
      
      return return_value
    end

    ClauseReturnValue = define_return_scope 

    # 
    # parser rule clause
    # 
    # (in Jejune.g)
    # 272:1: clause : '(' expression_list ')' -> expression_list ;
    # 
    def clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      return_value = ClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal10 = nil
      char_literal12 = nil
      expression_list11 = nil

      tree_for_char_literal10 = nil
      tree_for_char_literal12 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RPAREN" )
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LPAREN" )
      stream_expression_list = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule expression_list" )
      begin
        # at line 273:5: '(' expression_list ')'
        char_literal10 = match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_clause_1878 )
        if @state.backtracking == 0
          stream_LPAREN.add( char_literal10 )
        end
        @state.following.push( TOKENS_FOLLOWING_expression_list_IN_clause_1880 )
        expression_list11 = expression_list
        @state.following.pop
        if @state.backtracking == 0
          stream_expression_list.add( expression_list11.tree )
        end
        char_literal12 = match( RPAREN, TOKENS_FOLLOWING_RPAREN_IN_clause_1882 )
        if @state.backtracking == 0
          stream_RPAREN.add( char_literal12 )
        end
        # AST Rewrite
        # elements: expression_list
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 273:29: -> expression_list
          @adaptor.add_child( root_0, stream_expression_list.next_tree )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )

      end
      
      return return_value
    end

    StatementReturnValue = define_return_scope 

    # 
    # parser rule statement
    # 
    # (in Jejune.g)
    # 276:1: statement : ( variable_statement | const_statement | empty_statement | ( 'function' )=> function | ( EJS )=> EJS | DIRECTIVE | class_statement | macro | ( ID ':' )=> labelled_statement | ( 'let' )=> let_statement | expression_statement | if_statement | while_statement | do_while_statement | for_loop | continue_statement | break_statement | yield_statement | return_statement | with_statement | switch_statement | throw_statement | try_statement );
    # 
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )
      return_value = StatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __EJS17__ = nil
      __DIRECTIVE18__ = nil
      variable_statement13 = nil
      const_statement14 = nil
      empty_statement15 = nil
      function16 = nil
      class_statement19 = nil
      macro20 = nil
      labelled_statement21 = nil
      let_statement22 = nil
      expression_statement23 = nil
      if_statement24 = nil
      while_statement25 = nil
      do_while_statement26 = nil
      for_loop27 = nil
      continue_statement28 = nil
      break_statement29 = nil
      yield_statement30 = nil
      return_statement31 = nil
      with_statement32 = nil
      switch_statement33 = nil
      throw_statement34 = nil
      try_statement35 = nil

      tree_for_EJS17 = nil
      tree_for_DIRECTIVE18 = nil

      begin
        # at line 281:3: ( variable_statement | const_statement | empty_statement | ( 'function' )=> function | ( EJS )=> EJS | DIRECTIVE | class_statement | macro | ( ID ':' )=> labelled_statement | ( 'let' )=> let_statement | expression_statement | if_statement | while_statement | do_while_statement | for_loop | continue_statement | break_statement | yield_statement | return_statement | with_statement | switch_statement | throw_statement | try_statement )
        alt_6 = 23
        alt_6 = @dfa6.predict( @input )
        case alt_6
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 281:5: variable_statement
          @state.following.push( TOKENS_FOLLOWING_variable_statement_IN_statement_1902 )
          variable_statement13 = variable_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, variable_statement13.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 282:5: const_statement
          @state.following.push( TOKENS_FOLLOWING_const_statement_IN_statement_1908 )
          const_statement14 = const_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, const_statement14.tree )
          end

        when 3
          root_0 = @adaptor.create_flat_list


          # at line 283:5: empty_statement
          @state.following.push( TOKENS_FOLLOWING_empty_statement_IN_statement_1914 )
          empty_statement15 = empty_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, empty_statement15.tree )
          end

        when 4
          root_0 = @adaptor.create_flat_list


          # at line 284:5: ( 'function' )=> function
          @state.following.push( TOKENS_FOLLOWING_function_IN_statement_1927 )
          function16 = function
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, function16.tree )
          end

        when 5
          root_0 = @adaptor.create_flat_list


          # at line 285:5: ( EJS )=> EJS
          __EJS17__ = match( EJS, TOKENS_FOLLOWING_EJS_IN_statement_1940 )
          if @state.backtracking == 0

            tree_for_EJS17 = @adaptor.create_with_payload( __EJS17__ )
            root_0 = @adaptor.become_root( tree_for_EJS17, root_0 )

          end

        when 6
          root_0 = @adaptor.create_flat_list


          # at line 286:5: DIRECTIVE
          __DIRECTIVE18__ = match( DIRECTIVE, TOKENS_FOLLOWING_DIRECTIVE_IN_statement_1947 )
          if @state.backtracking == 0

            tree_for_DIRECTIVE18 = @adaptor.create_with_payload( __DIRECTIVE18__ )
            root_0 = @adaptor.become_root( tree_for_DIRECTIVE18, root_0 )

          end

        when 7
          root_0 = @adaptor.create_flat_list


          # at line 287:5: class_statement
          @state.following.push( TOKENS_FOLLOWING_class_statement_IN_statement_1954 )
          class_statement19 = class_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, class_statement19.tree )
          end

        when 8
          root_0 = @adaptor.create_flat_list


          # at line 288:5: macro
          @state.following.push( TOKENS_FOLLOWING_macro_IN_statement_1960 )
          macro20 = macro
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, macro20.tree )
          end

        when 9
          root_0 = @adaptor.create_flat_list


          # at line 289:5: ( ID ':' )=> labelled_statement
          @state.following.push( TOKENS_FOLLOWING_labelled_statement_IN_statement_1976 )
          labelled_statement21 = labelled_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, labelled_statement21.tree )
          end

        when 10
          root_0 = @adaptor.create_flat_list


          # at line 290:5: ( 'let' )=> let_statement
          @state.following.push( TOKENS_FOLLOWING_let_statement_IN_statement_1989 )
          let_statement22 = let_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, let_statement22.tree )
          end

        when 11
          root_0 = @adaptor.create_flat_list


          # at line 291:5: expression_statement
          @state.following.push( TOKENS_FOLLOWING_expression_statement_IN_statement_1995 )
          expression_statement23 = expression_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression_statement23.tree )
          end

        when 12
          root_0 = @adaptor.create_flat_list


          # at line 292:5: if_statement
          @state.following.push( TOKENS_FOLLOWING_if_statement_IN_statement_2001 )
          if_statement24 = if_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, if_statement24.tree )
          end

        when 13
          root_0 = @adaptor.create_flat_list


          # at line 293:5: while_statement
          @state.following.push( TOKENS_FOLLOWING_while_statement_IN_statement_2007 )
          while_statement25 = while_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, while_statement25.tree )
          end

        when 14
          root_0 = @adaptor.create_flat_list


          # at line 294:5: do_while_statement
          @state.following.push( TOKENS_FOLLOWING_do_while_statement_IN_statement_2013 )
          do_while_statement26 = do_while_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, do_while_statement26.tree )
          end

        when 15
          root_0 = @adaptor.create_flat_list


          # at line 295:5: for_loop
          @state.following.push( TOKENS_FOLLOWING_for_loop_IN_statement_2019 )
          for_loop27 = for_loop
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, for_loop27.tree )
          end

        when 16
          root_0 = @adaptor.create_flat_list


          # at line 296:5: continue_statement
          @state.following.push( TOKENS_FOLLOWING_continue_statement_IN_statement_2025 )
          continue_statement28 = continue_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, continue_statement28.tree )
          end

        when 17
          root_0 = @adaptor.create_flat_list


          # at line 297:5: break_statement
          @state.following.push( TOKENS_FOLLOWING_break_statement_IN_statement_2031 )
          break_statement29 = break_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, break_statement29.tree )
          end

        when 18
          root_0 = @adaptor.create_flat_list


          # at line 298:5: yield_statement
          @state.following.push( TOKENS_FOLLOWING_yield_statement_IN_statement_2037 )
          yield_statement30 = yield_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, yield_statement30.tree )
          end

        when 19
          root_0 = @adaptor.create_flat_list


          # at line 299:5: return_statement
          @state.following.push( TOKENS_FOLLOWING_return_statement_IN_statement_2043 )
          return_statement31 = return_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, return_statement31.tree )
          end

        when 20
          root_0 = @adaptor.create_flat_list


          # at line 300:5: with_statement
          @state.following.push( TOKENS_FOLLOWING_with_statement_IN_statement_2049 )
          with_statement32 = with_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, with_statement32.tree )
          end

        when 21
          root_0 = @adaptor.create_flat_list


          # at line 301:5: switch_statement
          @state.following.push( TOKENS_FOLLOWING_switch_statement_IN_statement_2055 )
          switch_statement33 = switch_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, switch_statement33.tree )
          end

        when 22
          root_0 = @adaptor.create_flat_list


          # at line 302:5: throw_statement
          @state.following.push( TOKENS_FOLLOWING_throw_statement_IN_statement_2061 )
          throw_statement34 = throw_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, throw_statement34.tree )
          end

        when 23
          root_0 = @adaptor.create_flat_list


          # at line 303:5: try_statement
          @state.following.push( TOKENS_FOLLOWING_try_statement_IN_statement_2067 )
          try_statement35 = try_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, try_statement35.tree )
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )

      end
      
      return return_value
    end

    EmptyStatementReturnValue = define_return_scope 

    # 
    # parser rule empty_statement
    # 
    # (in Jejune.g)
    # 310:1: empty_statement : ';' ->;
    # 
    def empty_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )
      return_value = EmptyStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal36 = nil

      tree_for_char_literal36 = nil
      stream_SEMI = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token SEMI" )

      begin
        # at line 311:5: ';'
        char_literal36 = match( SEMI, TOKENS_FOLLOWING_SEMI_IN_empty_statement_2084 )
        if @state.backtracking == 0
          stream_SEMI.add( char_literal36 )
        end
        # AST Rewrite
        # elements: 
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 311:9: ->
          root_0 = nil


          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )

      end
      
      return return_value
    end

    ExpressionStatementReturnValue = define_return_scope 

    # 
    # parser rule expression_statement
    # 
    # (in Jejune.g)
    # 314:1: expression_statement : expression_list statement_end ;
    # 
    def expression_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      return_value = ExpressionStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      expression_list37 = nil
      statement_end38 = nil


      begin
        root_0 = @adaptor.create_flat_list


        # at line 315:5: expression_list statement_end
        @state.following.push( TOKENS_FOLLOWING_expression_list_IN_expression_statement_2099 )
        expression_list37 = expression_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, expression_list37.tree )
        end
        @state.following.push( TOKENS_FOLLOWING_statement_end_IN_expression_statement_2101 )
        statement_end38 = statement_end
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )

      end
      
      return return_value
    end

    LabelledStatementReturnValue = define_return_scope 

    # 
    # parser rule labelled_statement
    # 
    # (in Jejune.g)
    # 318:1: labelled_statement : ID ':' block -> ^( LABEL ID block ) ;
    # 
    def labelled_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      return_value = LabelledStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID39__ = nil
      char_literal40 = nil
      block41 = nil

      tree_for_ID39 = nil
      tree_for_char_literal40 = nil
      stream_COLON = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token COLON" )
      stream_ID = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token ID" )
      stream_block = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule block" )
      begin
        # at line 319:5: ID ':' block
        __ID39__ = match( ID, TOKENS_FOLLOWING_ID_IN_labelled_statement_2115 )
        if @state.backtracking == 0
          stream_ID.add( __ID39__ )
        end
        char_literal40 = match( COLON, TOKENS_FOLLOWING_COLON_IN_labelled_statement_2118 )
        if @state.backtracking == 0
          stream_COLON.add( char_literal40 )
        end
        @state.following.push( TOKENS_FOLLOWING_block_IN_labelled_statement_2121 )
        block41 = block
        @state.following.pop
        if @state.backtracking == 0
          stream_block.add( block41.tree )
        end
        # AST Rewrite
        # elements: block, ID
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 320:5: -> ^( LABEL ID block )
          # at line 320:8: ^( LABEL ID block )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( @adaptor.create_from_type( LABEL, "LABEL" ), root_1 )

          @adaptor.add_child( root_1, stream_ID.next_node )
          @adaptor.add_child( root_1, stream_block.next_tree )

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )

      end
      
      return return_value
    end

    StatementEndReturnValue = define_return_scope 

    # 
    # parser rule statement_end
    # 
    # (in Jejune.g)
    # 323:1: statement_end : ( ';' | ( '}' )=> | EOF );
    # 
    def statement_end
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )
      return_value = StatementEndReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal42 = nil
      __EOF43__ = nil

      tree_for_char_literal42 = nil
      tree_for_EOF43 = nil

      begin
        # at line 324:3: ( ';' | ( '}' )=> | EOF )
        alt_7 = 3
        alt_7 = @dfa7.predict( @input )
        case alt_7
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 324:5: ';'
          char_literal42 = match( SEMI, TOKENS_FOLLOWING_SEMI_IN_statement_end_2150 )
          if @state.backtracking == 0

            tree_for_char_literal42 = @adaptor.create_with_payload( char_literal42 )
            @adaptor.add_child( root_0, tree_for_char_literal42 )

          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 325:5: ( '}' )=>

        when 3
          root_0 = @adaptor.create_flat_list


          # at line 326:5: EOF
          __EOF43__ = match( EOF, TOKENS_FOLLOWING_EOF_IN_statement_end_2167 )
          if @state.backtracking == 0

            tree_for_EOF43 = @adaptor.create_with_payload( __EOF43__ )
            @adaptor.add_child( root_0, tree_for_EOF43 )

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )

      end
      
      return return_value
    end

    BlankReturnValue = define_return_scope 

    # 
    # parser rule blank
    # 
    # (in Jejune.g)
    # 329:1: blank : -> ^( UNDEFINED ) ;
    # 
    def blank
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      return_value = BlankReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      begin
        # at line 330:5: 
        # AST Rewrite
        # elements: 
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 330:5: -> ^( UNDEFINED )
          # at line 330:8: ^( UNDEFINED )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( @adaptor.create_from_type( UNDEFINED, "UNDEFINED" ), root_1 )

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )

      end
      
      return return_value
    end

    TryStatementReturnValue = define_return_scope 

    # 
    # parser rule try_statement
    # 
    # (in Jejune.g)
    # 337:1: try_statement : 'try' ( statement_block -> statement_block ) (f= finally_clause -> | ( catch_clause ->)+ (f2= finally_clause ->)? | -> ^( 'try' statement_block ) ) ;
    # 
    def try_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )
      return_value = TryStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal44 = nil
      f = nil
      f2 = nil
      statement_block45 = nil
      catch_clause46 = nil

      tree_for_string_literal44 = nil
      stream_TRY = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token TRY" )
      stream_statement_block = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule statement_block" )
      stream_catch_clause = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule catch_clause" )
      stream_finally_clause = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule finally_clause" )
      begin
        # at line 338:5: 'try' ( statement_block -> statement_block ) (f= finally_clause -> | ( catch_clause ->)+ (f2= finally_clause ->)? | -> ^( 'try' statement_block ) )
        string_literal44 = match( TRY, TOKENS_FOLLOWING_TRY_IN_try_statement_2203 )
        if @state.backtracking == 0
          stream_TRY.add( string_literal44 )
        end
        # at line 339:5: ( statement_block -> statement_block )
        # at line 339:7: statement_block
        @state.following.push( TOKENS_FOLLOWING_statement_block_IN_try_statement_2211 )
        statement_block45 = statement_block
        @state.following.pop
        if @state.backtracking == 0
          stream_statement_block.add( statement_block45.tree )
        end
        # AST Rewrite
        # elements: statement_block
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 339:23: -> statement_block
          @adaptor.add_child( root_0, stream_statement_block.next_tree )



          return_value.tree = root_0

        end
        # at line 340:5: (f= finally_clause -> | ( catch_clause ->)+ (f2= finally_clause ->)? | -> ^( 'try' statement_block ) )
        alt_10 = 3
        case look_10 = @input.peek( 1 )
        when FINALLY then alt_10 = 1
        when CATCH then alt_10 = 2
        when EOF, GENERAL, GET, ARROW, RBRACE, IF, REGEX, BL_END, INCR, BREAK, RETURN, IS_DEFINED, RPAREN, CASE, LBRACE, COMMA, LBRACK, SEMI, CONST, SET, CONTINUE, LET, DDOC, DECR, LPAREN, DEFAULT, DELETE, DGENERAL, MACRO, SWITCH, DIRECTIVE, MINUS, THIS, DO, THROW, TILDE, TRUE, TRY, TYPEOF, DSTRING, NEW, EACH, NOT, UNDEFINED, ELSE, NULL, UNLESS, UNTIL, FALSE, VAR, VOID, FOR, WHILE, WITH, FUNCTION, PLUS, YIELD, IS_UNDEFINED, POUND, DEF, CLASS_DEF, OBJECT_DEF, EJS, ID, STRING, NUMBER, IVAR, DOC, T__148, T__149, T__150 then alt_10 = 3
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 10, 0 )
        end
        case alt_10
        when 1
          # at line 340:7: f= finally_clause
          @state.following.push( TOKENS_FOLLOWING_finally_clause_IN_try_statement_2227 )
          f = finally_clause
          @state.following.pop
          if @state.backtracking == 0
            stream_finally_clause.add( f.tree )
          end
          # AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 340:27: ->
            @adaptor.add_child( root_0, (  prepend_tree( f.tree, return_value.tree )  ) )



            return_value.tree = root_0

          end
        when 2
          # at line 341:7: ( catch_clause ->)+ (f2= finally_clause ->)?
          # at file 341:7: ( catch_clause ->)+
          match_count_8 = 0
          while true
            alt_8 = 2
            look_8_0 = @input.peek( 1 )

            if ( look_8_0 == CATCH )
              alt_8 = 1

            end
            case alt_8
            when 1
              # at line 341:9: catch_clause
              @state.following.push( TOKENS_FOLLOWING_catch_clause_IN_try_statement_2244 )
              catch_clause46 = catch_clause
              @state.following.pop
              if @state.backtracking == 0
                stream_catch_clause.add( catch_clause46.tree )
              end
              # AST Rewrite
              # elements: 
              # token labels: 
              # rule labels: return_value
              # token list labels: 
              # rule list labels: 
              # wildcard labels: 
              if @state.backtracking == 0

                return_value.tree = root_0
                stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

                root_0 = @adaptor.create_flat_list
                # 341:27: ->
                @adaptor.add_child( root_0, (  prepend_tree( catch_clause46.tree, return_value.tree )  ) )



                return_value.tree = root_0

              end
            else
              match_count_8 > 0 and break
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              eee = EarlyExit(8)


              raise eee
            end
            match_count_8 += 1
          end

          # at line 342:7: (f2= finally_clause ->)?
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0 == FINALLY )
            alt_9 = 1
          end
          case alt_9
          when 1
            # at line 342:9: f2= finally_clause
            @state.following.push( TOKENS_FOLLOWING_finally_clause_IN_try_statement_2268 )
            f2 = finally_clause
            @state.following.pop
            if @state.backtracking == 0
              stream_finally_clause.add( f2.tree )
            end
            # AST Rewrite
            # elements: 
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

              root_0 = @adaptor.create_flat_list
              # 342:27: ->
              @adaptor.add_child( root_0, (  prepend_tree( f2.tree, return_value.tree )  ) )



              return_value.tree = root_0

            end
          end

        when 3
          # at line 343:27: 
          # AST Rewrite
          # elements: statement_block, TRY
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 343:27: -> ^( 'try' statement_block )
            # at line 343:30: ^( 'try' statement_block )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_TRY.next_node, root_1 )

            @adaptor.add_child( root_1, stream_statement_block.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )

      end
      
      return return_value
    end

    CatchClauseReturnValue = define_return_scope 

    # 
    # parser rule catch_clause
    # 
    # (in Jejune.g)
    # 347:1: catch_clause : 'catch' '(' catch_selector ')' statement_block -> ^( 'catch' catch_selector statement_block ) ;
    # 
    def catch_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )
      return_value = CatchClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal47 = nil
      char_literal48 = nil
      char_literal50 = nil
      catch_selector49 = nil
      statement_block51 = nil

      tree_for_string_literal47 = nil
      tree_for_char_literal48 = nil
      tree_for_char_literal50 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RPAREN" )
      stream_CATCH = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token CATCH" )
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LPAREN" )
      stream_statement_block = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule statement_block" )
      stream_catch_selector = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule catch_selector" )
      begin
        # at line 348:5: 'catch' '(' catch_selector ')' statement_block
        string_literal47 = match( CATCH, TOKENS_FOLLOWING_CATCH_IN_catch_clause_2330 )
        if @state.backtracking == 0
          stream_CATCH.add( string_literal47 )
        end
        char_literal48 = match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_catch_clause_2333 )
        if @state.backtracking == 0
          stream_LPAREN.add( char_literal48 )
        end
        @state.following.push( TOKENS_FOLLOWING_catch_selector_IN_catch_clause_2336 )
        catch_selector49 = catch_selector
        @state.following.pop
        if @state.backtracking == 0
          stream_catch_selector.add( catch_selector49.tree )
        end
        char_literal50 = match( RPAREN, TOKENS_FOLLOWING_RPAREN_IN_catch_clause_2339 )
        if @state.backtracking == 0
          stream_RPAREN.add( char_literal50 )
        end
        @state.following.push( TOKENS_FOLLOWING_statement_block_IN_catch_clause_2342 )
        statement_block51 = statement_block
        @state.following.pop
        if @state.backtracking == 0
          stream_statement_block.add( statement_block51.tree )
        end
        # AST Rewrite
        # elements: statement_block, CATCH, catch_selector
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 349:5: -> ^( 'catch' catch_selector statement_block )
          # at line 349:8: ^( 'catch' catch_selector statement_block )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( stream_CATCH.next_node, root_1 )

          @adaptor.add_child( root_1, stream_catch_selector.next_tree )
          @adaptor.add_child( root_1, stream_statement_block.next_tree )

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )

      end
      
      return return_value
    end

    CatchSelectorReturnValue = define_return_scope 

    # 
    # parser rule catch_selector
    # 
    # (in Jejune.g)
    # 352:1: catch_selector : ID ( 'if' expression | 'unless' expression )? ;
    # 
    def catch_selector
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      return_value = CatchSelectorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID52__ = nil
      string_literal53 = nil
      string_literal55 = nil
      expression54 = nil
      expression56 = nil

      tree_for_ID52 = nil
      tree_for_string_literal53 = nil
      tree_for_string_literal55 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 359:5: ID ( 'if' expression | 'unless' expression )?
        __ID52__ = match( ID, TOKENS_FOLLOWING_ID_IN_catch_selector_2376 )
        if @state.backtracking == 0

          tree_for_ID52 = @adaptor.create_with_payload( __ID52__ )
          @adaptor.add_child( root_0, tree_for_ID52 )

        end
        # at line 360:5: ( 'if' expression | 'unless' expression )?
        alt_11 = 3
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == IF )
          alt_11 = 1
        elsif ( look_11_0 == UNLESS )
          alt_11 = 2
        end
        case alt_11
        when 1
          # at line 360:7: 'if' expression
          string_literal53 = match( IF, TOKENS_FOLLOWING_IF_IN_catch_selector_2384 )
          if @state.backtracking == 0

            tree_for_string_literal53 = @adaptor.create_with_payload( string_literal53 )
            root_0 = @adaptor.become_root( tree_for_string_literal53, root_0 )

          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_catch_selector_2391 )
          expression54 = expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression54.tree )
          end

        when 2
          # at line 361:7: 'unless' expression
          string_literal55 = match( UNLESS, TOKENS_FOLLOWING_UNLESS_IN_catch_selector_2399 )
          if @state.backtracking == 0

            tree_for_string_literal55 = @adaptor.create_with_payload( string_literal55 )
            root_0 = @adaptor.become_root( tree_for_string_literal55, root_0 )

          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_catch_selector_2402 )
          expression56 = expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression56.tree )
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end# syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

            case return_value.tree.token.type
            when IF     then return_value.tree.token.type = POST_IF
            when UNLESS then return_value.tree.token.type = POST_UNLESS
            end

          # <-- action
        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )

      end
      
      return return_value
    end

    FinallyClauseReturnValue = define_return_scope 

    # 
    # parser rule finally_clause
    # 
    # (in Jejune.g)
    # 365:1: finally_clause : 'finally' statement_block -> ^( 'finally' statement_block ) ;
    # 
    def finally_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )
      return_value = FinallyClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal57 = nil
      statement_block58 = nil

      tree_for_string_literal57 = nil
      stream_FINALLY = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token FINALLY" )
      stream_statement_block = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule statement_block" )
      begin
        # at line 366:5: 'finally' statement_block
        string_literal57 = match( FINALLY, TOKENS_FOLLOWING_FINALLY_IN_finally_clause_2422 )
        if @state.backtracking == 0
          stream_FINALLY.add( string_literal57 )
        end
        @state.following.push( TOKENS_FOLLOWING_statement_block_IN_finally_clause_2424 )
        statement_block58 = statement_block
        @state.following.pop
        if @state.backtracking == 0
          stream_statement_block.add( statement_block58.tree )
        end
        # AST Rewrite
        # elements: statement_block, FINALLY
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 367:5: -> ^( 'finally' statement_block )
          # at line 367:8: ^( 'finally' statement_block )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( stream_FINALLY.next_node, root_1 )

          @adaptor.add_child( root_1, stream_statement_block.next_tree )

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )

      end
      
      return return_value
    end

    WithStatementReturnValue = define_return_scope 

    # 
    # parser rule with_statement
    # 
    # (in Jejune.g)
    # 370:1: with_statement : 'with' clause block -> ^( 'with' clause block ) ;
    # 
    def with_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )
      return_value = WithStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal59 = nil
      clause60 = nil
      block61 = nil

      tree_for_string_literal59 = nil
      stream_WITH = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token WITH" )
      stream_block = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule block" )
      stream_clause = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule clause" )
      begin
        # at line 371:5: 'with' clause block
        string_literal59 = match( WITH, TOKENS_FOLLOWING_WITH_IN_with_statement_2451 )
        if @state.backtracking == 0
          stream_WITH.add( string_literal59 )
        end
        @state.following.push( TOKENS_FOLLOWING_clause_IN_with_statement_2453 )
        clause60 = clause
        @state.following.pop
        if @state.backtracking == 0
          stream_clause.add( clause60.tree )
        end
        @state.following.push( TOKENS_FOLLOWING_block_IN_with_statement_2455 )
        block61 = block
        @state.following.pop
        if @state.backtracking == 0
          stream_block.add( block61.tree )
        end
        # AST Rewrite
        # elements: WITH, clause, block
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 371:25: -> ^( 'with' clause block )
          # at line 371:28: ^( 'with' clause block )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( stream_WITH.next_node, root_1 )

          @adaptor.add_child( root_1, stream_clause.next_tree )
          @adaptor.add_child( root_1, stream_block.next_tree )

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )

      end
      
      return return_value
    end

    VariableStatementReturnValue = define_return_scope 

    # 
    # parser rule variable_statement
    # 
    # (in Jejune.g)
    # 378:1: variable_statement : 'var' variable_declaration_list statement_end ;
    # 
    def variable_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )
      return_value = VariableStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal62 = nil
      variable_declaration_list63 = nil
      statement_end64 = nil

      tree_for_string_literal62 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 379:5: 'var' variable_declaration_list statement_end
        string_literal62 = match( VAR, TOKENS_FOLLOWING_VAR_IN_variable_statement_2484 )
        if @state.backtracking == 0

          tree_for_string_literal62 = @adaptor.create_with_payload( string_literal62 )
          root_0 = @adaptor.become_root( tree_for_string_literal62, root_0 )

        end
        @state.following.push( TOKENS_FOLLOWING_variable_declaration_list_IN_variable_statement_2487 )
        variable_declaration_list63 = variable_declaration_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, variable_declaration_list63.tree )
        end
        @state.following.push( TOKENS_FOLLOWING_statement_end_IN_variable_statement_2489 )
        statement_end64 = statement_end
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )

      end
      
      return return_value
    end

    ConstStatementReturnValue = define_return_scope 

    # 
    # parser rule const_statement
    # 
    # (in Jejune.g)
    # 382:1: const_statement : 'const' variable_declaration_list statement_end ;
    # 
    def const_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )
      return_value = ConstStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal65 = nil
      variable_declaration_list66 = nil
      statement_end67 = nil

      tree_for_string_literal65 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 383:5: 'const' variable_declaration_list statement_end
        string_literal65 = match( CONST, TOKENS_FOLLOWING_CONST_IN_const_statement_2503 )
        if @state.backtracking == 0

          tree_for_string_literal65 = @adaptor.create_with_payload( string_literal65 )
          root_0 = @adaptor.become_root( tree_for_string_literal65, root_0 )

        end
        @state.following.push( TOKENS_FOLLOWING_variable_declaration_list_IN_const_statement_2506 )
        variable_declaration_list66 = variable_declaration_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, variable_declaration_list66.tree )
        end
        @state.following.push( TOKENS_FOLLOWING_statement_end_IN_const_statement_2508 )
        statement_end67 = statement_end
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )

      end
      
      return return_value
    end

    LetStatementReturnValue = define_return_scope 

    # 
    # parser rule let_statement
    # 
    # (in Jejune.g)
    # 386:1: let_statement : 'let' '(' variable_declaration_list ')' block ;
    # 
    def let_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )
      return_value = LetStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal68 = nil
      char_literal69 = nil
      char_literal71 = nil
      variable_declaration_list70 = nil
      block72 = nil

      tree_for_string_literal68 = nil
      tree_for_char_literal69 = nil
      tree_for_char_literal71 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 387:5: 'let' '(' variable_declaration_list ')' block
        string_literal68 = match( LET, TOKENS_FOLLOWING_LET_IN_let_statement_2522 )
        if @state.backtracking == 0

          tree_for_string_literal68 = @adaptor.create_with_payload( string_literal68 )
          root_0 = @adaptor.become_root( tree_for_string_literal68, root_0 )

        end
        char_literal69 = match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_let_statement_2525 )
        @state.following.push( TOKENS_FOLLOWING_variable_declaration_list_IN_let_statement_2528 )
        variable_declaration_list70 = variable_declaration_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, variable_declaration_list70.tree )
        end
        char_literal71 = match( RPAREN, TOKENS_FOLLOWING_RPAREN_IN_let_statement_2530 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_let_statement_2533 )
        block72 = block
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, block72.tree )
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )

      end
      
      return return_value
    end

    VariableDeclarationListReturnValue = define_return_scope 

    # 
    # parser rule variable_declaration_list
    # 
    # (in Jejune.g)
    # 390:1: variable_declaration_list : variable_declaration ( ',' variable_declaration )* ;
    # 
    def variable_declaration_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )
      return_value = VariableDeclarationListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal74 = nil
      variable_declaration73 = nil
      variable_declaration75 = nil

      tree_for_char_literal74 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 391:5: variable_declaration ( ',' variable_declaration )*
        @state.following.push( TOKENS_FOLLOWING_variable_declaration_IN_variable_declaration_list_2546 )
        variable_declaration73 = variable_declaration
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, variable_declaration73.tree )
        end
        # at line 391:26: ( ',' variable_declaration )*
        while true # decision 12
          alt_12 = 2
          alt_12 = @dfa12.predict( @input )
          case alt_12
          when 1
            # at line 391:28: ',' variable_declaration
            char_literal74 = match( COMMA, TOKENS_FOLLOWING_COMMA_IN_variable_declaration_list_2550 )
            @state.following.push( TOKENS_FOLLOWING_variable_declaration_IN_variable_declaration_list_2553 )
            variable_declaration75 = variable_declaration
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, variable_declaration75.tree )
            end

          else
            break # out of loop for decision 12
          end
        end # loop for decision 12
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )

      end
      
      return return_value
    end

    VariableDeclarationReturnValue = define_return_scope 

    # 
    # parser rule variable_declaration
    # 
    # (in Jejune.g)
    # 394:1: variable_declaration : declaration_target ( '=' expression )? ;
    # 
    def variable_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )
      return_value = VariableDeclarationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal77 = nil
      declaration_target76 = nil
      expression78 = nil

      tree_for_char_literal77 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 395:5: declaration_target ( '=' expression )?
        @state.following.push( TOKENS_FOLLOWING_declaration_target_IN_variable_declaration_2569 )
        declaration_target76 = declaration_target
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, declaration_target76.tree )
        end
        # at line 395:24: ( '=' expression )?
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0 == ASGN )
          alt_13 = 1
        end
        case alt_13
        when 1
          # at line 395:26: '=' expression
          char_literal77 = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_variable_declaration_2573 )
          if @state.backtracking == 0

            tree_for_char_literal77 = @adaptor.create_with_payload( char_literal77 )
            root_0 = @adaptor.become_root( tree_for_char_literal77, root_0 )

          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_variable_declaration_2577 )
          expression78 = expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression78.tree )
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 22 )

      end
      
      return return_value
    end

    DeclarationTargetReturnValue = define_return_scope 

    # 
    # parser rule declaration_target
    # 
    # (in Jejune.g)
    # 398:1: declaration_target : ( '[' declaration_target ( ',' declaration_target )* ']' -> ^( ARRAY ( declaration_target )+ ) | '{' declaration_key ( ',' declaration_key )* '}' -> ^( OBJECT ( declaration_key )+ ) | variable_name -> variable_name );
    # 
    def declaration_target
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )
      return_value = DeclarationTargetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal79 = nil
      char_literal81 = nil
      char_literal83 = nil
      char_literal84 = nil
      char_literal86 = nil
      char_literal88 = nil
      declaration_target80 = nil
      declaration_target82 = nil
      declaration_key85 = nil
      declaration_key87 = nil
      variable_name89 = nil

      tree_for_char_literal79 = nil
      tree_for_char_literal81 = nil
      tree_for_char_literal83 = nil
      tree_for_char_literal84 = nil
      tree_for_char_literal86 = nil
      tree_for_char_literal88 = nil
      stream_RBRACK = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RBRACK" )
      stream_LBRACK = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LBRACK" )
      stream_RBRACE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RBRACE" )
      stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token COMMA" )
      stream_LBRACE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LBRACE" )
      stream_variable_name = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule variable_name" )
      stream_declaration_key = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule declaration_key" )
      stream_declaration_target = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule declaration_target" )
      begin
        # at line 399:3: ( '[' declaration_target ( ',' declaration_target )* ']' -> ^( ARRAY ( declaration_target )+ ) | '{' declaration_key ( ',' declaration_key )* '}' -> ^( OBJECT ( declaration_key )+ ) | variable_name -> variable_name )
        alt_16 = 3
        case look_16 = @input.peek( 1 )
        when LBRACK then alt_16 = 1
        when LBRACE then alt_16 = 2
        when GET, SET, MACRO, EACH, DEF, CLASS_DEF, OBJECT_DEF, ID, T__148, T__149, T__150 then alt_16 = 3
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 16, 0 )
        end
        case alt_16
        when 1
          # at line 399:5: '[' declaration_target ( ',' declaration_target )* ']'
          char_literal79 = match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_declaration_target_2593 )
          if @state.backtracking == 0
            stream_LBRACK.add( char_literal79 )
          end
          @state.following.push( TOKENS_FOLLOWING_declaration_target_IN_declaration_target_2595 )
          declaration_target80 = declaration_target
          @state.following.pop
          if @state.backtracking == 0
            stream_declaration_target.add( declaration_target80.tree )
          end
          # at line 399:28: ( ',' declaration_target )*
          while true # decision 14
            alt_14 = 2
            look_14_0 = @input.peek( 1 )

            if ( look_14_0 == COMMA )
              alt_14 = 1

            end
            case alt_14
            when 1
              # at line 399:30: ',' declaration_target
              char_literal81 = match( COMMA, TOKENS_FOLLOWING_COMMA_IN_declaration_target_2599 )
              if @state.backtracking == 0
                stream_COMMA.add( char_literal81 )
              end
              @state.following.push( TOKENS_FOLLOWING_declaration_target_IN_declaration_target_2601 )
              declaration_target82 = declaration_target
              @state.following.pop
              if @state.backtracking == 0
                stream_declaration_target.add( declaration_target82.tree )
              end

            else
              break # out of loop for decision 14
            end
          end # loop for decision 14
          char_literal83 = match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_declaration_target_2606 )
          if @state.backtracking == 0
            stream_RBRACK.add( char_literal83 )
          end
          # AST Rewrite
          # elements: declaration_target
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 399:60: -> ^( ARRAY ( declaration_target )+ )
            # at line 399:63: ^( ARRAY ( declaration_target )+ )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create_from_type( ARRAY, "ARRAY" ), root_1 )

            # at line 399:72: ( declaration_target )+
            stream_declaration_target.has_next? or raise ANTLR3::RewriteEarlyExit

            while stream_declaration_target.has_next?
              @adaptor.add_child( root_1, stream_declaration_target.next_tree )

            end
            stream_declaration_target.reset

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 2
          # at line 400:5: '{' declaration_key ( ',' declaration_key )* '}'
          char_literal84 = match( LBRACE, TOKENS_FOLLOWING_LBRACE_IN_declaration_target_2623 )
          if @state.backtracking == 0
            stream_LBRACE.add( char_literal84 )
          end
          @state.following.push( TOKENS_FOLLOWING_declaration_key_IN_declaration_target_2625 )
          declaration_key85 = declaration_key
          @state.following.pop
          if @state.backtracking == 0
            stream_declaration_key.add( declaration_key85.tree )
          end
          # at line 400:25: ( ',' declaration_key )*
          while true # decision 15
            alt_15 = 2
            look_15_0 = @input.peek( 1 )

            if ( look_15_0 == COMMA )
              alt_15 = 1

            end
            case alt_15
            when 1
              # at line 400:27: ',' declaration_key
              char_literal86 = match( COMMA, TOKENS_FOLLOWING_COMMA_IN_declaration_target_2629 )
              if @state.backtracking == 0
                stream_COMMA.add( char_literal86 )
              end
              @state.following.push( TOKENS_FOLLOWING_declaration_key_IN_declaration_target_2631 )
              declaration_key87 = declaration_key
              @state.following.pop
              if @state.backtracking == 0
                stream_declaration_key.add( declaration_key87.tree )
              end

            else
              break # out of loop for decision 15
            end
          end # loop for decision 15
          char_literal88 = match( RBRACE, TOKENS_FOLLOWING_RBRACE_IN_declaration_target_2636 )
          if @state.backtracking == 0
            stream_RBRACE.add( char_literal88 )
          end
          # AST Rewrite
          # elements: declaration_key
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 400:60: -> ^( OBJECT ( declaration_key )+ )
            # at line 400:63: ^( OBJECT ( declaration_key )+ )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create_from_type( OBJECT, "OBJECT" ), root_1 )

            # at line 400:73: ( declaration_key )+
            stream_declaration_key.has_next? or raise ANTLR3::RewriteEarlyExit

            while stream_declaration_key.has_next?
              @adaptor.add_child( root_1, stream_declaration_key.next_tree )

            end
            stream_declaration_key.reset

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 3
          # at line 401:5: variable_name
          @state.following.push( TOKENS_FOLLOWING_variable_name_IN_declaration_target_2659 )
          variable_name89 = variable_name
          @state.following.pop
          if @state.backtracking == 0
            stream_variable_name.add( variable_name89.tree )
          end
          # AST Rewrite
          # elements: variable_name
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 401:19: -> variable_name
            @adaptor.add_child( root_0, stream_variable_name.next_tree )



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 23 )

      end
      
      return return_value
    end

    DeclarationKeyReturnValue = define_return_scope 

    # 
    # parser rule declaration_key
    # 
    # (in Jejune.g)
    # 404:1: declaration_key : ( ID | STRING | NUMBER | reserved ) ':' declaration_target ;
    # 
    def declaration_key
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )
      return_value = DeclarationKeyReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID90__ = nil
      __STRING91__ = nil
      __NUMBER92__ = nil
      char_literal94 = nil
      reserved93 = nil
      declaration_target95 = nil

      tree_for_ID90 = nil
      tree_for_STRING91 = nil
      tree_for_NUMBER92 = nil
      tree_for_char_literal94 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 405:5: ( ID | STRING | NUMBER | reserved ) ':' declaration_target
        # at line 405:5: ( ID | STRING | NUMBER | reserved )
        alt_17 = 4
        case look_17 = @input.peek( 1 )
        when ID then alt_17 = 1
        when STRING then alt_17 = 2
        when NUMBER then alt_17 = 3
        when GET, IF, IN, BREAK, INSTANCEOF, RETURN, CASE, CATCH, SET, CONTINUE, LET, DEFAULT, DELETE, SWITCH, THIS, DO, THROW, TRUE, TRY, TYPEOF, NEW, EACH, UNDEFINED, ELSE, NULL, UNLESS, UNTIL, FALSE, VAR, FINALLY, VOID, FOR, WHILE, WITH, FUNCTION, YIELD, DEF, CLASS_DEF, OBJECT_DEF, T__148, T__149, T__150 then alt_17 = 4
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 17, 0 )
        end
        case alt_17
        when 1
          # at line 405:7: ID
          __ID90__ = match( ID, TOKENS_FOLLOWING_ID_IN_declaration_key_2680 )
          if @state.backtracking == 0

            tree_for_ID90 = @adaptor.create_with_payload( __ID90__ )
            @adaptor.add_child( root_0, tree_for_ID90 )

          end

        when 2
          # at line 405:12: STRING
          __STRING91__ = match( STRING, TOKENS_FOLLOWING_STRING_IN_declaration_key_2684 )
          if @state.backtracking == 0

            tree_for_STRING91 = @adaptor.create_with_payload( __STRING91__ )
            @adaptor.add_child( root_0, tree_for_STRING91 )

          end

        when 3
          # at line 405:21: NUMBER
          __NUMBER92__ = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_declaration_key_2688 )
          if @state.backtracking == 0

            tree_for_NUMBER92 = @adaptor.create_with_payload( __NUMBER92__ )
            @adaptor.add_child( root_0, tree_for_NUMBER92 )

          end

        when 4
          # at line 405:30: reserved
          @state.following.push( TOKENS_FOLLOWING_reserved_IN_declaration_key_2692 )
          reserved93 = reserved
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, reserved93.tree )
          end
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             reserved93.tree.token.type = ID 
            # <-- action
          end

        end
        char_literal94 = match( COLON, TOKENS_FOLLOWING_COLON_IN_declaration_key_2698 )
        if @state.backtracking == 0

          tree_for_char_literal94 = @adaptor.create_with_payload( char_literal94 )
          root_0 = @adaptor.become_root( tree_for_char_literal94, root_0 )

        end
        @state.following.push( TOKENS_FOLLOWING_declaration_target_IN_declaration_key_2701 )
        declaration_target95 = declaration_target
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, declaration_target95.tree )
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )

      end
      
      return return_value
    end

    IfStatementReturnValue = define_return_scope 

    # 
    # parser rule if_statement
    # 
    # (in Jejune.g)
    # 412:1: if_statement : ( 'if' | 'unless' ) clause block ( 'else' block )? ;
    # 
    def if_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )
      return_value = IfStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal96 = nil
      string_literal97 = nil
      string_literal100 = nil
      clause98 = nil
      block99 = nil
      block101 = nil

      tree_for_string_literal96 = nil
      tree_for_string_literal97 = nil
      tree_for_string_literal100 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 413:5: ( 'if' | 'unless' ) clause block ( 'else' block )?
        # at line 413:5: ( 'if' | 'unless' )
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0 == IF )
          alt_18 = 1
        elsif ( look_18_0 == UNLESS )
          alt_18 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 18, 0 )
        end
        case alt_18
        when 1
          # at line 413:7: 'if'
          string_literal96 = match( IF, TOKENS_FOLLOWING_IF_IN_if_statement_2720 )
          if @state.backtracking == 0

            tree_for_string_literal96 = @adaptor.create_with_payload( string_literal96 )
            root_0 = @adaptor.become_root( tree_for_string_literal96, root_0 )

          end

        when 2
          # at line 413:15: 'unless'
          string_literal97 = match( UNLESS, TOKENS_FOLLOWING_UNLESS_IN_if_statement_2725 )
          if @state.backtracking == 0

            tree_for_string_literal97 = @adaptor.create_with_payload( string_literal97 )
            root_0 = @adaptor.become_root( tree_for_string_literal97, root_0 )

          end

        end
        @state.following.push( TOKENS_FOLLOWING_clause_IN_if_statement_2730 )
        clause98 = clause
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, clause98.tree )
        end
        @state.following.push( TOKENS_FOLLOWING_block_IN_if_statement_2732 )
        block99 = block
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, block99.tree )
        end
        # at line 413:40: ( 'else' block )?
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0 == ELSE )
          alt_19 = 1
        end
        case alt_19
        when 1
          # at line 413:42: 'else' block
          string_literal100 = match( ELSE, TOKENS_FOLLOWING_ELSE_IN_if_statement_2736 )
          @state.following.push( TOKENS_FOLLOWING_block_IN_if_statement_2739 )
          block101 = block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, block101.tree )
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 25 )

      end
      
      return return_value
    end

    BrowserBlockReturnValue = define_return_scope 

    # 
    # parser rule browser_block
    # 
    # (in Jejune.g)
    # 416:1: browser_block : '!' browser_name statement_block ( 'else' block )? ;
    # 
    def browser_block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )
      return_value = BrowserBlockReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal102 = nil
      string_literal105 = nil
      browser_name103 = nil
      statement_block104 = nil
      block106 = nil

      tree_for_char_literal102 = nil
      tree_for_string_literal105 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 417:5: '!' browser_name statement_block ( 'else' block )?
        char_literal102 = match( NOT, TOKENS_FOLLOWING_NOT_IN_browser_block_2757 )
        if @state.backtracking == 0

          tree_for_char_literal102 = @adaptor.create_with_payload( char_literal102 )
          @adaptor.add_child( root_0, tree_for_char_literal102 )

        end
        @state.following.push( TOKENS_FOLLOWING_browser_name_IN_browser_block_2759 )
        browser_name103 = browser_name
        @state.following.pop
        if @state.backtracking == 0
          root_0 = @adaptor.become_root( browser_name103.tree, root_0 )
        end
        @state.following.push( TOKENS_FOLLOWING_statement_block_IN_browser_block_2762 )
        statement_block104 = statement_block
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, statement_block104.tree )
        end
        # at line 417:39: ( 'else' block )?
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0 == ELSE )
          alt_20 = 1
        end
        case alt_20
        when 1
          # at line 417:41: 'else' block
          string_literal105 = match( ELSE, TOKENS_FOLLOWING_ELSE_IN_browser_block_2766 )
          @state.following.push( TOKENS_FOLLOWING_block_IN_browser_block_2769 )
          block106 = block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, block106.tree )
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 26 )

      end
      
      return return_value
    end

    SwitchStatementReturnValue = define_return_scope 

    # 
    # parser rule switch_statement
    # 
    # (in Jejune.g)
    # 420:1: switch_statement : 'switch' '(' expression_list ')' '{' ( case_clause )* ( default_clause ( case_clause )* )? '}' -> ^( 'switch' expression_list ( case_clause )* ( default_clause )? ) ;
    # 
    def switch_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )
      return_value = SwitchStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal107 = nil
      char_literal108 = nil
      char_literal110 = nil
      char_literal111 = nil
      char_literal115 = nil
      expression_list109 = nil
      case_clause112 = nil
      default_clause113 = nil
      case_clause114 = nil

      tree_for_string_literal107 = nil
      tree_for_char_literal108 = nil
      tree_for_char_literal110 = nil
      tree_for_char_literal111 = nil
      tree_for_char_literal115 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RPAREN" )
      stream_RBRACE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RBRACE" )
      stream_SWITCH = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token SWITCH" )
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LPAREN" )
      stream_LBRACE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LBRACE" )
      stream_expression_list = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule expression_list" )
      stream_case_clause = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule case_clause" )
      stream_default_clause = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule default_clause" )
      begin
        # at line 421:5: 'switch' '(' expression_list ')' '{' ( case_clause )* ( default_clause ( case_clause )* )? '}'
        string_literal107 = match( SWITCH, TOKENS_FOLLOWING_SWITCH_IN_switch_statement_2785 )
        if @state.backtracking == 0
          stream_SWITCH.add( string_literal107 )
        end
        char_literal108 = match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_switch_statement_2788 )
        if @state.backtracking == 0
          stream_LPAREN.add( char_literal108 )
        end
        @state.following.push( TOKENS_FOLLOWING_expression_list_IN_switch_statement_2791 )
        expression_list109 = expression_list
        @state.following.pop
        if @state.backtracking == 0
          stream_expression_list.add( expression_list109.tree )
        end
        char_literal110 = match( RPAREN, TOKENS_FOLLOWING_RPAREN_IN_switch_statement_2794 )
        if @state.backtracking == 0
          stream_RPAREN.add( char_literal110 )
        end
        char_literal111 = match( LBRACE, TOKENS_FOLLOWING_LBRACE_IN_switch_statement_2801 )
        if @state.backtracking == 0
          stream_LBRACE.add( char_literal111 )
        end
        # at line 423:5: ( case_clause )*
        while true # decision 21
          alt_21 = 2
          look_21_0 = @input.peek( 1 )

          if ( look_21_0 == CASE )
            alt_21 = 1

          end
          case alt_21
          when 1
            # at line 423:7: case_clause
            @state.following.push( TOKENS_FOLLOWING_case_clause_IN_switch_statement_2809 )
            case_clause112 = case_clause
            @state.following.pop
            if @state.backtracking == 0
              stream_case_clause.add( case_clause112.tree )
            end

          else
            break # out of loop for decision 21
          end
        end # loop for decision 21
        # at line 424:5: ( default_clause ( case_clause )* )?
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == DEFAULT )
          alt_23 = 1
        end
        case alt_23
        when 1
          # at line 424:7: default_clause ( case_clause )*
          @state.following.push( TOKENS_FOLLOWING_default_clause_IN_switch_statement_2820 )
          default_clause113 = default_clause
          @state.following.pop
          if @state.backtracking == 0
            stream_default_clause.add( default_clause113.tree )
          end
          # at line 424:22: ( case_clause )*
          while true # decision 22
            alt_22 = 2
            look_22_0 = @input.peek( 1 )

            if ( look_22_0 == CASE )
              alt_22 = 1

            end
            case alt_22
            when 1
              # at line 424:25: case_clause
              @state.following.push( TOKENS_FOLLOWING_case_clause_IN_switch_statement_2825 )
              case_clause114 = case_clause
              @state.following.pop
              if @state.backtracking == 0
                stream_case_clause.add( case_clause114.tree )
              end

            else
              break # out of loop for decision 22
            end
          end # loop for decision 22

        end
        char_literal115 = match( RBRACE, TOKENS_FOLLOWING_RBRACE_IN_switch_statement_2838 )
        if @state.backtracking == 0
          stream_RBRACE.add( char_literal115 )
        end
        # AST Rewrite
        # elements: default_clause, SWITCH, case_clause, expression_list
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 426:5: -> ^( 'switch' expression_list ( case_clause )* ( default_clause )? )
          # at line 426:8: ^( 'switch' expression_list ( case_clause )* ( default_clause )? )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( stream_SWITCH.next_node, root_1 )

          @adaptor.add_child( root_1, stream_expression_list.next_tree )
          # at line 426:36: ( case_clause )*
          while stream_case_clause.has_next?
            @adaptor.add_child( root_1, stream_case_clause.next_tree )

          end

          stream_case_clause.reset();
          # at line 426:49: ( default_clause )?
          if stream_default_clause.has_next?
            @adaptor.add_child( root_1, stream_default_clause.next_tree )

          end

          stream_default_clause.reset();

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )

      end
      
      return return_value
    end

    CaseClauseReturnValue = define_return_scope 

    # 
    # parser rule case_clause
    # 
    # (in Jejune.g)
    # 429:1: case_clause : 'case' expression_list ':' ( statement_list )? ;
    # 
    def case_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )
      return_value = CaseClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal116 = nil
      char_literal118 = nil
      expression_list117 = nil
      statement_list119 = nil

      tree_for_string_literal116 = nil
      tree_for_char_literal118 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 430:5: 'case' expression_list ':' ( statement_list )?
        string_literal116 = match( CASE, TOKENS_FOLLOWING_CASE_IN_case_clause_2873 )
        if @state.backtracking == 0

          tree_for_string_literal116 = @adaptor.create_with_payload( string_literal116 )
          root_0 = @adaptor.become_root( tree_for_string_literal116, root_0 )

        end
        @state.following.push( TOKENS_FOLLOWING_expression_list_IN_case_clause_2877 )
        expression_list117 = expression_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, expression_list117.tree )
        end
        char_literal118 = match( COLON, TOKENS_FOLLOWING_COLON_IN_case_clause_2880 )
        # at line 430:37: ( statement_list )?
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == GENERAL || look_24_0 == GET || look_24_0 == ARROW || look_24_0 == IF || look_24_0 == REGEX || look_24_0 == INCR || look_24_0 == BREAK || look_24_0 == RETURN || look_24_0 == IS_DEFINED || look_24_0 == LBRACE || look_24_0 == LBRACK || look_24_0.between?( SEMI, CONST ) || look_24_0.between?( SET, LET ) || look_24_0 == DDOC || look_24_0.between?( DECR, LPAREN ) || look_24_0 == DELETE || look_24_0.between?( DGENERAL, DO ) || look_24_0 == THROW || look_24_0 == TILDE || look_24_0 == TRUE || look_24_0 == TRY || look_24_0.between?( TYPEOF, NEW ) || look_24_0.between?( EACH, UNDEFINED ) || look_24_0.between?( NULL, UNLESS ) || look_24_0 == UNTIL || look_24_0 == FALSE || look_24_0 == VAR || look_24_0.between?( VOID, FOR ) || look_24_0 == WHILE || look_24_0.between?( WITH, YIELD ) || look_24_0.between?( IS_UNDEFINED, DOC ) || look_24_0.between?( T__148, T__150 ) )
          alt_24 = 1
        end
        case alt_24
        when 1
          # at line 430:37: statement_list
          @state.following.push( TOKENS_FOLLOWING_statement_list_IN_case_clause_2884 )
          statement_list119 = statement_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, statement_list119.tree )
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )

      end
      
      return return_value
    end

    DefaultClauseReturnValue = define_return_scope 

    # 
    # parser rule default_clause
    # 
    # (in Jejune.g)
    # 433:1: default_clause : 'default' ':' ( statement_list )? ;
    # 
    def default_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )
      return_value = DefaultClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal120 = nil
      char_literal121 = nil
      statement_list122 = nil

      tree_for_string_literal120 = nil
      tree_for_char_literal121 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 434:5: 'default' ':' ( statement_list )?
        string_literal120 = match( DEFAULT, TOKENS_FOLLOWING_DEFAULT_IN_default_clause_2900 )
        if @state.backtracking == 0

          tree_for_string_literal120 = @adaptor.create_with_payload( string_literal120 )
          root_0 = @adaptor.become_root( tree_for_string_literal120, root_0 )

        end
        char_literal121 = match( COLON, TOKENS_FOLLOWING_COLON_IN_default_clause_2904 )
        # at line 434:23: ( statement_list )?
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == GENERAL || look_25_0 == GET || look_25_0 == ARROW || look_25_0 == IF || look_25_0 == REGEX || look_25_0 == INCR || look_25_0 == BREAK || look_25_0 == RETURN || look_25_0 == IS_DEFINED || look_25_0 == LBRACE || look_25_0 == LBRACK || look_25_0.between?( SEMI, CONST ) || look_25_0.between?( SET, LET ) || look_25_0 == DDOC || look_25_0.between?( DECR, LPAREN ) || look_25_0 == DELETE || look_25_0.between?( DGENERAL, DO ) || look_25_0 == THROW || look_25_0 == TILDE || look_25_0 == TRUE || look_25_0 == TRY || look_25_0.between?( TYPEOF, NEW ) || look_25_0.between?( EACH, UNDEFINED ) || look_25_0.between?( NULL, UNLESS ) || look_25_0 == UNTIL || look_25_0 == FALSE || look_25_0 == VAR || look_25_0.between?( VOID, FOR ) || look_25_0 == WHILE || look_25_0.between?( WITH, YIELD ) || look_25_0.between?( IS_UNDEFINED, DOC ) || look_25_0.between?( T__148, T__150 ) )
          alt_25 = 1
        end
        case alt_25
        when 1
          # at line 434:23: statement_list
          @state.following.push( TOKENS_FOLLOWING_statement_list_IN_default_clause_2908 )
          statement_list122 = statement_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, statement_list122.tree )
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 29 )

      end
      
      return return_value
    end

    DoWhileStatementReturnValue = define_return_scope 

    # 
    # parser rule do_while_statement
    # 
    # (in Jejune.g)
    # 441:1: do_while_statement : 'do' block ( 'while' clause statement_end -> ^( 'while' clause block ) | 'until' clause statement_end -> ^( 'until' clause block ) ) -> ^( 'do' $do_while_statement) ;
    # 
    def do_while_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )
      return_value = DoWhileStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal123 = nil
      string_literal125 = nil
      string_literal128 = nil
      block124 = nil
      clause126 = nil
      statement_end127 = nil
      clause129 = nil
      statement_end130 = nil

      tree_for_string_literal123 = nil
      tree_for_string_literal125 = nil
      tree_for_string_literal128 = nil
      stream_DO = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token DO" )
      stream_WHILE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token WHILE" )
      stream_UNTIL = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token UNTIL" )
      stream_statement_end = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule statement_end" )
      stream_block = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule block" )
      stream_clause = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule clause" )
      begin
        # at line 442:5: 'do' block ( 'while' clause statement_end -> ^( 'while' clause block ) | 'until' clause statement_end -> ^( 'until' clause block ) )
        string_literal123 = match( DO, TOKENS_FOLLOWING_DO_IN_do_while_statement_2926 )
        if @state.backtracking == 0
          stream_DO.add( string_literal123 )
        end
        @state.following.push( TOKENS_FOLLOWING_block_IN_do_while_statement_2928 )
        block124 = block
        @state.following.pop
        if @state.backtracking == 0
          stream_block.add( block124.tree )
        end
        # at line 443:5: ( 'while' clause statement_end -> ^( 'while' clause block ) | 'until' clause statement_end -> ^( 'until' clause block ) )
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == WHILE )
          alt_26 = 1
        elsif ( look_26_0 == UNTIL )
          alt_26 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 26, 0 )
        end
        case alt_26
        when 1
          # at line 443:7: 'while' clause statement_end
          string_literal125 = match( WHILE, TOKENS_FOLLOWING_WHILE_IN_do_while_statement_2936 )
          if @state.backtracking == 0
            stream_WHILE.add( string_literal125 )
          end
          @state.following.push( TOKENS_FOLLOWING_clause_IN_do_while_statement_2938 )
          clause126 = clause
          @state.following.pop
          if @state.backtracking == 0
            stream_clause.add( clause126.tree )
          end
          @state.following.push( TOKENS_FOLLOWING_statement_end_IN_do_while_statement_2940 )
          statement_end127 = statement_end
          @state.following.pop
          if @state.backtracking == 0
            stream_statement_end.add( statement_end127.tree )
          end
          # AST Rewrite
          # elements: clause, block, WHILE
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 443:36: -> ^( 'while' clause block )
            # at line 443:39: ^( 'while' clause block )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_WHILE.next_node, root_1 )

            @adaptor.add_child( root_1, stream_clause.next_tree )
            @adaptor.add_child( root_1, stream_block.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 2
          # at line 444:7: 'until' clause statement_end
          string_literal128 = match( UNTIL, TOKENS_FOLLOWING_UNTIL_IN_do_while_statement_2960 )
          if @state.backtracking == 0
            stream_UNTIL.add( string_literal128 )
          end
          @state.following.push( TOKENS_FOLLOWING_clause_IN_do_while_statement_2962 )
          clause129 = clause
          @state.following.pop
          if @state.backtracking == 0
            stream_clause.add( clause129.tree )
          end
          @state.following.push( TOKENS_FOLLOWING_statement_end_IN_do_while_statement_2964 )
          statement_end130 = statement_end
          @state.following.pop
          if @state.backtracking == 0
            stream_statement_end.add( statement_end130.tree )
          end
          # AST Rewrite
          # elements: block, clause, UNTIL
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 444:36: -> ^( 'until' clause block )
            # at line 444:39: ^( 'until' clause block )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_UNTIL.next_node, root_1 )

            @adaptor.add_child( root_1, stream_clause.next_tree )
            @adaptor.add_child( root_1, stream_block.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        end
        # AST Rewrite
        # elements: DO, do_while_statement
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 446:5: -> ^( 'do' $do_while_statement)
          # at line 446:8: ^( 'do' $do_while_statement)
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( stream_DO.next_node, root_1 )

          @adaptor.add_child( root_1, stream_return_value.next_tree )

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 30 )

      end
      
      return return_value
    end

    WhileStatementReturnValue = define_return_scope 

    # 
    # parser rule while_statement
    # 
    # (in Jejune.g)
    # 449:1: while_statement : ( 'while' clause block | 'until' clause block );
    # 
    def while_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )
      return_value = WhileStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal131 = nil
      string_literal134 = nil
      clause132 = nil
      block133 = nil
      clause135 = nil
      block136 = nil

      tree_for_string_literal131 = nil
      tree_for_string_literal134 = nil

      begin
        # at line 450:3: ( 'while' clause block | 'until' clause block )
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == WHILE )
          alt_27 = 1
        elsif ( look_27_0 == UNTIL )
          alt_27 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 27, 0 )
        end
        case alt_27
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 450:5: 'while' clause block
          string_literal131 = match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_statement_3010 )
          if @state.backtracking == 0

            tree_for_string_literal131 = @adaptor.create_with_payload( string_literal131 )
            root_0 = @adaptor.become_root( tree_for_string_literal131, root_0 )

          end
          @state.following.push( TOKENS_FOLLOWING_clause_IN_while_statement_3013 )
          clause132 = clause
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, clause132.tree )
          end
          @state.following.push( TOKENS_FOLLOWING_block_IN_while_statement_3015 )
          block133 = block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, block133.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 451:5: 'until' clause block
          string_literal134 = match( UNTIL, TOKENS_FOLLOWING_UNTIL_IN_while_statement_3021 )
          if @state.backtracking == 0

            tree_for_string_literal134 = @adaptor.create_with_payload( string_literal134 )
            root_0 = @adaptor.become_root( tree_for_string_literal134, root_0 )

          end
          @state.following.push( TOKENS_FOLLOWING_clause_IN_while_statement_3024 )
          clause135 = clause
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, clause135.tree )
          end
          @state.following.push( TOKENS_FOLLOWING_block_IN_while_statement_3026 )
          block136 = block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, block136.tree )
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 31 )

      end
      
      return return_value
    end

    ForLoopReturnValue = define_return_scope 

    # 
    # parser rule for_loop
    # 
    # (in Jejune.g)
    # 458:1: for_loop : ({...}? => for_each_in_statement | ( 'for' '(' (~ ( ')' | ';' | 'in' ) )* 'in' )=> for_in_statement | for_statement );
    # 
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )
      return_value = ForLoopReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      for_each_in_statement137 = nil
      for_in_statement138 = nil
      for_statement139 = nil


      begin
        # at line 459:3: ({...}? => for_each_in_statement | ( 'for' '(' (~ ( ')' | ';' | 'in' ) )* 'in' )=> for_in_statement | for_statement )
        alt_28 = 3
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == FOR )
          look_28_1 = @input.peek( 2 )

          if ( (  @input.peek( 2 ) == EACH  ) )
            alt_28 = 1
          elsif ( syntactic_predicate?( :synpred7_Jejune ) )
            alt_28 = 2
          elsif ( true )
            alt_28 = 3
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 28, 1 )
          end
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 28, 0 )
        end
        case alt_28
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 459:5: {...}? => for_each_in_statement
          unless ( (  @input.peek( 2 ) == EACH  ) )
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise FailedPredicate( "for_loop", " @input.peek( 2 ) == EACH " )
          end
          @state.following.push( TOKENS_FOLLOWING_for_each_in_statement_IN_for_loop_3046 )
          for_each_in_statement137 = for_each_in_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, for_each_in_statement137.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 460:5: ( 'for' '(' (~ ( ')' | ';' | 'in' ) )* 'in' )=> for_in_statement
          @state.following.push( TOKENS_FOLLOWING_for_in_statement_IN_for_loop_3082 )
          for_in_statement138 = for_in_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, for_in_statement138.tree )
          end

        when 3
          root_0 = @adaptor.create_flat_list


          # at line 461:5: for_statement
          @state.following.push( TOKENS_FOLLOWING_for_statement_IN_for_loop_3088 )
          for_statement139 = for_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, for_statement139.tree )
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 32 )

      end
      
      return return_value
    end

    ForStatementReturnValue = define_return_scope 

    # 
    # parser rule for_statement
    # 
    # (in Jejune.g)
    # 464:1: for_statement : 'for' '(' ( for_statement_initialiser_part | blank ) ';' ( expression_list | blank ) ';' ( expression_list | blank ) ')' block ;
    # 
    def for_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )
      return_value = ForStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal140 = nil
      char_literal141 = nil
      char_literal144 = nil
      char_literal147 = nil
      char_literal150 = nil
      for_statement_initialiser_part142 = nil
      blank143 = nil
      expression_list145 = nil
      blank146 = nil
      expression_list148 = nil
      blank149 = nil
      block151 = nil

      tree_for_string_literal140 = nil
      tree_for_char_literal141 = nil
      tree_for_char_literal144 = nil
      tree_for_char_literal147 = nil
      tree_for_char_literal150 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 465:5: 'for' '(' ( for_statement_initialiser_part | blank ) ';' ( expression_list | blank ) ';' ( expression_list | blank ) ')' block
        string_literal140 = match( FOR, TOKENS_FOLLOWING_FOR_IN_for_statement_3101 )
        if @state.backtracking == 0

          tree_for_string_literal140 = @adaptor.create_with_payload( string_literal140 )
          root_0 = @adaptor.become_root( tree_for_string_literal140, root_0 )

        end
        char_literal141 = match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_for_statement_3108 )
        # at line 467:5: ( for_statement_initialiser_part | blank )
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == GENERAL || look_29_0 == GET || look_29_0 == ARROW || look_29_0 == REGEX || look_29_0 == INCR || look_29_0 == IS_DEFINED || look_29_0 == LBRACE || look_29_0 == LBRACK || look_29_0 == SET || look_29_0 == LET || look_29_0 == DDOC || look_29_0.between?( DECR, LPAREN ) || look_29_0 == DELETE || look_29_0.between?( DGENERAL, MACRO ) || look_29_0.between?( MINUS, THIS ) || look_29_0 == TILDE || look_29_0 == TRUE || look_29_0.between?( TYPEOF, NEW ) || look_29_0.between?( EACH, UNDEFINED ) || look_29_0 == NULL || look_29_0 == FALSE || look_29_0 == VAR || look_29_0 == VOID || look_29_0.between?( FUNCTION, PLUS ) || look_29_0.between?( IS_UNDEFINED, DOC ) || look_29_0.between?( T__148, T__150 ) )
          alt_29 = 1
        elsif ( look_29_0 == SEMI )
          alt_29 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 29, 0 )
        end
        case alt_29
        when 1
          # at line 467:7: for_statement_initialiser_part
          @state.following.push( TOKENS_FOLLOWING_for_statement_initialiser_part_IN_for_statement_3117 )
          for_statement_initialiser_part142 = for_statement_initialiser_part
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, for_statement_initialiser_part142.tree )
          end

        when 2
          # at line 467:40: blank
          @state.following.push( TOKENS_FOLLOWING_blank_IN_for_statement_3121 )
          blank143 = blank
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, blank143.tree )
          end

        end
        char_literal144 = match( SEMI, TOKENS_FOLLOWING_SEMI_IN_for_statement_3125 )
        # at line 468:5: ( expression_list | blank )
        alt_30 = 2
        look_30_0 = @input.peek( 1 )

        if ( look_30_0 == GENERAL || look_30_0 == GET || look_30_0 == ARROW || look_30_0 == REGEX || look_30_0 == INCR || look_30_0 == IS_DEFINED || look_30_0 == LBRACE || look_30_0 == LBRACK || look_30_0 == SET || look_30_0 == DDOC || look_30_0.between?( DECR, LPAREN ) || look_30_0 == DELETE || look_30_0.between?( DGENERAL, MACRO ) || look_30_0.between?( MINUS, THIS ) || look_30_0 == TILDE || look_30_0 == TRUE || look_30_0.between?( TYPEOF, NEW ) || look_30_0.between?( EACH, UNDEFINED ) || look_30_0 == NULL || look_30_0 == FALSE || look_30_0 == VOID || look_30_0.between?( FUNCTION, PLUS ) || look_30_0.between?( IS_UNDEFINED, DOC ) || look_30_0.between?( T__148, T__150 ) )
          alt_30 = 1
        elsif ( look_30_0 == SEMI )
          alt_30 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 30, 0 )
        end
        case alt_30
        when 1
          # at line 468:7: expression_list
          @state.following.push( TOKENS_FOLLOWING_expression_list_IN_for_statement_3134 )
          expression_list145 = expression_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression_list145.tree )
          end

        when 2
          # at line 468:25: blank
          @state.following.push( TOKENS_FOLLOWING_blank_IN_for_statement_3138 )
          blank146 = blank
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, blank146.tree )
          end

        end
        char_literal147 = match( SEMI, TOKENS_FOLLOWING_SEMI_IN_for_statement_3143 )
        # at line 469:5: ( expression_list | blank )
        alt_31 = 2
        look_31_0 = @input.peek( 1 )

        if ( look_31_0 == GENERAL || look_31_0 == GET || look_31_0 == ARROW || look_31_0 == REGEX || look_31_0 == INCR || look_31_0 == IS_DEFINED || look_31_0 == LBRACE || look_31_0 == LBRACK || look_31_0 == SET || look_31_0 == DDOC || look_31_0.between?( DECR, LPAREN ) || look_31_0 == DELETE || look_31_0.between?( DGENERAL, MACRO ) || look_31_0.between?( MINUS, THIS ) || look_31_0 == TILDE || look_31_0 == TRUE || look_31_0.between?( TYPEOF, NEW ) || look_31_0.between?( EACH, UNDEFINED ) || look_31_0 == NULL || look_31_0 == FALSE || look_31_0 == VOID || look_31_0.between?( FUNCTION, PLUS ) || look_31_0.between?( IS_UNDEFINED, DOC ) || look_31_0.between?( T__148, T__150 ) )
          alt_31 = 1
        elsif ( look_31_0 == RPAREN )
          alt_31 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 31, 0 )
        end
        case alt_31
        when 1
          # at line 469:7: expression_list
          @state.following.push( TOKENS_FOLLOWING_expression_list_IN_for_statement_3152 )
          expression_list148 = expression_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression_list148.tree )
          end

        when 2
          # at line 469:25: blank
          @state.following.push( TOKENS_FOLLOWING_blank_IN_for_statement_3156 )
          blank149 = blank
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, blank149.tree )
          end

        end
        char_literal150 = match( RPAREN, TOKENS_FOLLOWING_RPAREN_IN_for_statement_3164 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_for_statement_3171 )
        block151 = block
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, block151.tree )
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 33 )

      end
      
      return return_value
    end

    ForStatementInitialiserPartReturnValue = define_return_scope 

    # 
    # parser rule for_statement_initialiser_part
    # 
    # (in Jejune.g)
    # 474:1: for_statement_initialiser_part : ( expression_list | ( 'var' | 'let' ) variable_declaration_list );
    # 
    def for_statement_initialiser_part
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )
      @InFor_stack.push( @@InFor.new )
      return_value = ForStatementInitialiserPartReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal153 = nil
      string_literal154 = nil
      expression_list152 = nil
      variable_declaration_list155 = nil

      tree_for_string_literal153 = nil
      tree_for_string_literal154 = nil

      begin
        # at line 478:3: ( expression_list | ( 'var' | 'let' ) variable_declaration_list )
        alt_33 = 2
        look_33_0 = @input.peek( 1 )

        if ( look_33_0 == GENERAL || look_33_0 == GET || look_33_0 == ARROW || look_33_0 == REGEX || look_33_0 == INCR || look_33_0 == IS_DEFINED || look_33_0 == LBRACE || look_33_0 == LBRACK || look_33_0 == SET || look_33_0 == DDOC || look_33_0.between?( DECR, LPAREN ) || look_33_0 == DELETE || look_33_0.between?( DGENERAL, MACRO ) || look_33_0.between?( MINUS, THIS ) || look_33_0 == TILDE || look_33_0 == TRUE || look_33_0.between?( TYPEOF, NEW ) || look_33_0.between?( EACH, UNDEFINED ) || look_33_0 == NULL || look_33_0 == FALSE || look_33_0 == VOID || look_33_0.between?( FUNCTION, PLUS ) || look_33_0.between?( IS_UNDEFINED, DOC ) || look_33_0.between?( T__148, T__150 ) )
          alt_33 = 1
        elsif ( look_33_0 == LET || look_33_0 == VAR )
          alt_33 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 33, 0 )
        end
        case alt_33
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 478:5: expression_list
          @state.following.push( TOKENS_FOLLOWING_expression_list_IN_for_statement_initialiser_part_3208 )
          expression_list152 = expression_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression_list152.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 479:5: ( 'var' | 'let' ) variable_declaration_list
          # at line 479:5: ( 'var' | 'let' )
          alt_32 = 2
          look_32_0 = @input.peek( 1 )

          if ( look_32_0 == VAR )
            alt_32 = 1
          elsif ( look_32_0 == LET )
            alt_32 = 2
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 32, 0 )
          end
          case alt_32
          when 1
            # at line 479:7: 'var'
            string_literal153 = match( VAR, TOKENS_FOLLOWING_VAR_IN_for_statement_initialiser_part_3216 )
            if @state.backtracking == 0

              tree_for_string_literal153 = @adaptor.create_with_payload( string_literal153 )
              root_0 = @adaptor.become_root( tree_for_string_literal153, root_0 )

            end

          when 2
            # at line 479:16: 'let'
            string_literal154 = match( LET, TOKENS_FOLLOWING_LET_IN_for_statement_initialiser_part_3221 )
            if @state.backtracking == 0

              tree_for_string_literal154 = @adaptor.create_with_payload( string_literal154 )
              root_0 = @adaptor.become_root( tree_for_string_literal154, root_0 )

            end

          end
          @state.following.push( TOKENS_FOLLOWING_variable_declaration_list_IN_for_statement_initialiser_part_3227 )
          variable_declaration_list155 = variable_declaration_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, variable_declaration_list155.tree )
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end# syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           @InFor_stack.last.active = false 
          # <-- action
        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 34 )
        @InFor_stack.pop

      end
      
      return return_value
    end

    ForEachInStatementReturnValue = define_return_scope 

    # 
    # parser rule for_each_in_statement
    # 
    # (in Jejune.g)
    # 482:1: for_each_in_statement : 'for' 'each' '(' for_in_statement_initialiser_part 'in' expression ')' block -> ^( 'each' for_in_statement_initialiser_part expression block ) ;
    # 
    def for_each_in_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )
      return_value = ForEachInStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal156 = nil
      string_literal157 = nil
      char_literal158 = nil
      string_literal160 = nil
      char_literal162 = nil
      for_in_statement_initialiser_part159 = nil
      expression161 = nil
      block163 = nil

      tree_for_string_literal156 = nil
      tree_for_string_literal157 = nil
      tree_for_char_literal158 = nil
      tree_for_string_literal160 = nil
      tree_for_char_literal162 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RPAREN" )
      stream_FOR = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token FOR" )
      stream_IN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token IN" )
      stream_EACH = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token EACH" )
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LPAREN" )
      stream_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule expression" )
      stream_for_in_statement_initialiser_part = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule for_in_statement_initialiser_part" )
      stream_block = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule block" )
      begin
        # at line 483:5: 'for' 'each' '(' for_in_statement_initialiser_part 'in' expression ')' block
        string_literal156 = match( FOR, TOKENS_FOLLOWING_FOR_IN_for_each_in_statement_3240 )
        if @state.backtracking == 0
          stream_FOR.add( string_literal156 )
        end
        string_literal157 = match( EACH, TOKENS_FOLLOWING_EACH_IN_for_each_in_statement_3242 )
        if @state.backtracking == 0
          stream_EACH.add( string_literal157 )
        end
        char_literal158 = match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_for_each_in_statement_3244 )
        if @state.backtracking == 0
          stream_LPAREN.add( char_literal158 )
        end
        @state.following.push( TOKENS_FOLLOWING_for_in_statement_initialiser_part_IN_for_each_in_statement_3247 )
        for_in_statement_initialiser_part159 = for_in_statement_initialiser_part
        @state.following.pop
        if @state.backtracking == 0
          stream_for_in_statement_initialiser_part.add( for_in_statement_initialiser_part159.tree )
        end
        string_literal160 = match( IN, TOKENS_FOLLOWING_IN_IN_for_each_in_statement_3250 )
        if @state.backtracking == 0
          stream_IN.add( string_literal160 )
        end
        @state.following.push( TOKENS_FOLLOWING_expression_IN_for_each_in_statement_3253 )
        expression161 = expression
        @state.following.pop
        if @state.backtracking == 0
          stream_expression.add( expression161.tree )
        end
        char_literal162 = match( RPAREN, TOKENS_FOLLOWING_RPAREN_IN_for_each_in_statement_3256 )
        if @state.backtracking == 0
          stream_RPAREN.add( char_literal162 )
        end
        @state.following.push( TOKENS_FOLLOWING_block_IN_for_each_in_statement_3259 )
        block163 = block
        @state.following.pop
        if @state.backtracking == 0
          stream_block.add( block163.tree )
        end
        # AST Rewrite
        # elements: block, for_in_statement_initialiser_part, expression, EACH
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 484:5: -> ^( 'each' for_in_statement_initialiser_part expression block )
          # at line 484:8: ^( 'each' for_in_statement_initialiser_part expression block )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( stream_EACH.next_node, root_1 )

          @adaptor.add_child( root_1, stream_for_in_statement_initialiser_part.next_tree )
          @adaptor.add_child( root_1, stream_expression.next_tree )
          @adaptor.add_child( root_1, stream_block.next_tree )

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 35 )

      end
      
      return return_value
    end

    ForInStatementReturnValue = define_return_scope 

    # 
    # parser rule for_in_statement
    # 
    # (in Jejune.g)
    # 487:1: for_in_statement : f= 'for' '(' for_in_statement_initialiser_part 'in' expression ')' block -> ^( FOR_IN[ $f ] for_in_statement_initialiser_part expression block ) ;
    # 
    def for_in_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )
      return_value = ForInStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      f = nil
      char_literal164 = nil
      string_literal166 = nil
      char_literal168 = nil
      for_in_statement_initialiser_part165 = nil
      expression167 = nil
      block169 = nil

      tree_for_f = nil
      tree_for_char_literal164 = nil
      tree_for_string_literal166 = nil
      tree_for_char_literal168 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RPAREN" )
      stream_FOR = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token FOR" )
      stream_IN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token IN" )
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LPAREN" )
      stream_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule expression" )
      stream_for_in_statement_initialiser_part = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule for_in_statement_initialiser_part" )
      stream_block = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule block" )
      begin
        # at line 488:5: f= 'for' '(' for_in_statement_initialiser_part 'in' expression ')' block
        f = match( FOR, TOKENS_FOLLOWING_FOR_IN_for_in_statement_3294 )
        if @state.backtracking == 0
          stream_FOR.add( f )
        end
        char_literal164 = match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_for_in_statement_3297 )
        if @state.backtracking == 0
          stream_LPAREN.add( char_literal164 )
        end
        @state.following.push( TOKENS_FOLLOWING_for_in_statement_initialiser_part_IN_for_in_statement_3300 )
        for_in_statement_initialiser_part165 = for_in_statement_initialiser_part
        @state.following.pop
        if @state.backtracking == 0
          stream_for_in_statement_initialiser_part.add( for_in_statement_initialiser_part165.tree )
        end
        string_literal166 = match( IN, TOKENS_FOLLOWING_IN_IN_for_in_statement_3303 )
        if @state.backtracking == 0
          stream_IN.add( string_literal166 )
        end
        @state.following.push( TOKENS_FOLLOWING_expression_IN_for_in_statement_3306 )
        expression167 = expression
        @state.following.pop
        if @state.backtracking == 0
          stream_expression.add( expression167.tree )
        end
        char_literal168 = match( RPAREN, TOKENS_FOLLOWING_RPAREN_IN_for_in_statement_3309 )
        if @state.backtracking == 0
          stream_RPAREN.add( char_literal168 )
        end
        @state.following.push( TOKENS_FOLLOWING_block_IN_for_in_statement_3312 )
        block169 = block
        @state.following.pop
        if @state.backtracking == 0
          stream_block.add( block169.tree )
        end
        # AST Rewrite
        # elements: expression, for_in_statement_initialiser_part, block
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 489:5: -> ^( FOR_IN[ $f ] for_in_statement_initialiser_part expression block )
          # at line 489:8: ^( FOR_IN[ $f ] for_in_statement_initialiser_part expression block )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( @adaptor.create( FOR_IN, f ), root_1 )

          @adaptor.add_child( root_1, stream_for_in_statement_initialiser_part.next_tree )
          @adaptor.add_child( root_1, stream_expression.next_tree )
          @adaptor.add_child( root_1, stream_block.next_tree )

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 36 )

      end
      
      return return_value
    end

    ForInStatementInitialiserPartReturnValue = define_return_scope 

    # 
    # parser rule for_in_statement_initialiser_part
    # 
    # (in Jejune.g)
    # 492:1: for_in_statement_initialiser_part : ( ( 'var' | 'let' ) declaration_target | member );
    # 
    def for_in_statement_initialiser_part
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )
      @InFor_stack.push( @@InFor.new )
      return_value = ForInStatementInitialiserPartReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal170 = nil
      string_literal171 = nil
      declaration_target172 = nil
      member173 = nil

      tree_for_string_literal170 = nil
      tree_for_string_literal171 = nil

      begin
        # at line 500:3: ( ( 'var' | 'let' ) declaration_target | member )
        alt_35 = 2
        look_35_0 = @input.peek( 1 )

        if ( look_35_0 == LET || look_35_0 == VAR )
          alt_35 = 1
        elsif ( look_35_0 == GENERAL || look_35_0 == GET || look_35_0 == ARROW || look_35_0 == REGEX || look_35_0 == LBRACE || look_35_0 == LBRACK || look_35_0 == SET || look_35_0 == DDOC || look_35_0 == LPAREN || look_35_0.between?( DGENERAL, MACRO ) || look_35_0 == THIS || look_35_0 == TRUE || look_35_0.between?( DSTRING, NEW ) || look_35_0 == EACH || look_35_0 == UNDEFINED || look_35_0 == NULL || look_35_0 == FALSE || look_35_0 == FUNCTION || look_35_0.between?( POUND, DOC ) || look_35_0.between?( T__148, T__150 ) )
          alt_35 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 35, 0 )
        end
        case alt_35
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 500:5: ( 'var' | 'let' ) declaration_target
          # at line 500:5: ( 'var' | 'let' )
          alt_34 = 2
          look_34_0 = @input.peek( 1 )

          if ( look_34_0 == VAR )
            alt_34 = 1
          elsif ( look_34_0 == LET )
            alt_34 = 2
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 34, 0 )
          end
          case alt_34
          when 1
            # at line 500:7: 'var'
            string_literal170 = match( VAR, TOKENS_FOLLOWING_VAR_IN_for_in_statement_initialiser_part_3369 )
            if @state.backtracking == 0

              tree_for_string_literal170 = @adaptor.create_with_payload( string_literal170 )
              root_0 = @adaptor.become_root( tree_for_string_literal170, root_0 )

            end

          when 2
            # at line 500:16: 'let'
            string_literal171 = match( LET, TOKENS_FOLLOWING_LET_IN_for_in_statement_initialiser_part_3374 )
            if @state.backtracking == 0

              tree_for_string_literal171 = @adaptor.create_with_payload( string_literal171 )
              root_0 = @adaptor.become_root( tree_for_string_literal171, root_0 )

            end

          end
          @state.following.push( TOKENS_FOLLOWING_declaration_target_IN_for_in_statement_initialiser_part_3380 )
          declaration_target172 = declaration_target
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, declaration_target172.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 501:5: member
          @state.following.push( TOKENS_FOLLOWING_member_IN_for_in_statement_initialiser_part_3386 )
          member173 = member
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, member173.tree )
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end# syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              @InFor_stack.last.active = false
            
          # <-- action
        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 37 )
        @InFor_stack.pop

      end
      
      return return_value
    end

    ContinueStatementReturnValue = define_return_scope 

    # 
    # parser rule continue_statement
    # 
    # (in Jejune.g)
    # 508:1: continue_statement : 'continue' ({...}? => ID )? statement_end ;
    # 
    def continue_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )
      return_value = ContinueStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal174 = nil
      __ID175__ = nil
      statement_end176 = nil

      tree_for_string_literal174 = nil
      tree_for_ID175 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 509:5: 'continue' ({...}? => ID )? statement_end
        string_literal174 = match( CONTINUE, TOKENS_FOLLOWING_CONTINUE_IN_continue_statement_3403 )
        if @state.backtracking == 0

          tree_for_string_literal174 = @adaptor.create_with_payload( string_literal174 )
          root_0 = @adaptor.become_root( tree_for_string_literal174, root_0 )

        end
        # at line 509:17: ({...}? => ID )?
        alt_36 = 2
        look_36_0 = @input.peek( 1 )

        if ( look_36_0 == ID )
          look_36_1 = @input.peek( 2 )

          if ( (  same_line?  ) )
            alt_36 = 1
          end
        end
        case alt_36
        when 1
          # at line 509:19: {...}? => ID
          unless ( (  same_line?  ) )
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise FailedPredicate( "continue_statement", " same_line? " )
          end
          __ID175__ = match( ID, TOKENS_FOLLOWING_ID_IN_continue_statement_3411 )
          if @state.backtracking == 0

            tree_for_ID175 = @adaptor.create_with_payload( __ID175__ )
            @adaptor.add_child( root_0, tree_for_ID175 )

          end

        end
        @state.following.push( TOKENS_FOLLOWING_statement_end_IN_continue_statement_3416 )
        statement_end176 = statement_end
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 38 )

      end
      
      return return_value
    end

    BreakStatementReturnValue = define_return_scope 

    # 
    # parser rule break_statement
    # 
    # (in Jejune.g)
    # 512:1: break_statement : 'break' ({...}? => ID )? statement_end ;
    # 
    def break_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )
      return_value = BreakStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal177 = nil
      __ID178__ = nil
      statement_end179 = nil

      tree_for_string_literal177 = nil
      tree_for_ID178 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 513:5: 'break' ({...}? => ID )? statement_end
        string_literal177 = match( BREAK, TOKENS_FOLLOWING_BREAK_IN_break_statement_3430 )
        if @state.backtracking == 0

          tree_for_string_literal177 = @adaptor.create_with_payload( string_literal177 )
          root_0 = @adaptor.become_root( tree_for_string_literal177, root_0 )

        end
        # at line 513:14: ({...}? => ID )?
        alt_37 = 2
        look_37_0 = @input.peek( 1 )

        if ( look_37_0 == ID )
          look_37_1 = @input.peek( 2 )

          if ( (  same_line?  ) )
            alt_37 = 1
          end
        end
        case alt_37
        when 1
          # at line 513:16: {...}? => ID
          unless ( (  same_line?  ) )
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise FailedPredicate( "break_statement", " same_line? " )
          end
          __ID178__ = match( ID, TOKENS_FOLLOWING_ID_IN_break_statement_3438 )
          if @state.backtracking == 0

            tree_for_ID178 = @adaptor.create_with_payload( __ID178__ )
            @adaptor.add_child( root_0, tree_for_ID178 )

          end

        end
        @state.following.push( TOKENS_FOLLOWING_statement_end_IN_break_statement_3443 )
        statement_end179 = statement_end
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 39 )

      end
      
      return return_value
    end

    ReturnStatementReturnValue = define_return_scope 

    # 
    # parser rule return_statement
    # 
    # (in Jejune.g)
    # 516:1: return_statement : 'return' ({...}? => expression_list )? statement_end ;
    # 
    def return_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )
      return_value = ReturnStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal180 = nil
      expression_list181 = nil
      statement_end182 = nil

      tree_for_string_literal180 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 517:5: 'return' ({...}? => expression_list )? statement_end
        string_literal180 = match( RETURN, TOKENS_FOLLOWING_RETURN_IN_return_statement_3457 )
        if @state.backtracking == 0

          tree_for_string_literal180 = @adaptor.create_with_payload( string_literal180 )
          root_0 = @adaptor.become_root( tree_for_string_literal180, root_0 )

        end
        # at line 517:15: ({...}? => expression_list )?
        alt_38 = 2
        alt_38 = @dfa38.predict( @input )
        case alt_38
        when 1
          # at line 517:17: {...}? => expression_list
          unless ( (  same_line?  ) )
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise FailedPredicate( "return_statement", " same_line? " )
          end
          @state.following.push( TOKENS_FOLLOWING_expression_list_IN_return_statement_3465 )
          expression_list181 = expression_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression_list181.tree )
          end

        end
        @state.following.push( TOKENS_FOLLOWING_statement_end_IN_return_statement_3470 )
        statement_end182 = statement_end
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 40 )

      end
      
      return return_value
    end

    YieldStatementReturnValue = define_return_scope 

    # 
    # parser rule yield_statement
    # 
    # (in Jejune.g)
    # 520:1: yield_statement : 'yield' ({...}? => expression_list )? statement_end ;
    # 
    def yield_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )
      return_value = YieldStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal183 = nil
      expression_list184 = nil
      statement_end185 = nil

      tree_for_string_literal183 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 521:5: 'yield' ({...}? => expression_list )? statement_end
        string_literal183 = match( YIELD, TOKENS_FOLLOWING_YIELD_IN_yield_statement_3484 )
        if @state.backtracking == 0

          tree_for_string_literal183 = @adaptor.create_with_payload( string_literal183 )
          root_0 = @adaptor.become_root( tree_for_string_literal183, root_0 )

        end
        # at line 521:14: ({...}? => expression_list )?
        alt_39 = 2
        alt_39 = @dfa39.predict( @input )
        case alt_39
        when 1
          # at line 521:16: {...}? => expression_list
          unless ( (  same_line?  ) )
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise FailedPredicate( "yield_statement", " same_line? " )
          end
          @state.following.push( TOKENS_FOLLOWING_expression_list_IN_yield_statement_3492 )
          expression_list184 = expression_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression_list184.tree )
          end

        end
        @state.following.push( TOKENS_FOLLOWING_statement_end_IN_yield_statement_3497 )
        statement_end185 = statement_end
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 41 )

      end
      
      return return_value
    end

    ThrowStatementReturnValue = define_return_scope 

    # 
    # parser rule throw_statement
    # 
    # (in Jejune.g)
    # 524:1: throw_statement : 'throw' ({...}? => expression_list )? statement_end ;
    # 
    def throw_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )
      return_value = ThrowStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal186 = nil
      expression_list187 = nil
      statement_end188 = nil

      tree_for_string_literal186 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 525:5: 'throw' ({...}? => expression_list )? statement_end
        string_literal186 = match( THROW, TOKENS_FOLLOWING_THROW_IN_throw_statement_3513 )
        if @state.backtracking == 0

          tree_for_string_literal186 = @adaptor.create_with_payload( string_literal186 )
          root_0 = @adaptor.become_root( tree_for_string_literal186, root_0 )

        end
        # at line 525:14: ({...}? => expression_list )?
        alt_40 = 2
        alt_40 = @dfa40.predict( @input )
        case alt_40
        when 1
          # at line 525:16: {...}? => expression_list
          unless ( (  same_line?  ) )
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise FailedPredicate( "throw_statement", " same_line? " )
          end
          @state.following.push( TOKENS_FOLLOWING_expression_list_IN_throw_statement_3521 )
          expression_list187 = expression_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression_list187.tree )
          end

        end
        @state.following.push( TOKENS_FOLLOWING_statement_end_IN_throw_statement_3526 )
        statement_end188 = statement_end
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 42 )

      end
      
      return return_value
    end

    ClassStatementReturnValue = define_return_scope 

    # 
    # parser rule class_statement
    # 
    # (in Jejune.g)
    # 532:1: class_statement : ( 'class' ID '{' ( class_member )* '}' | 'object' ( 'var' )? ID '{' ( class_member )* '}' );
    # 
    def class_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )
      return_value = ClassStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal189 = nil
      __ID190__ = nil
      char_literal191 = nil
      char_literal193 = nil
      string_literal194 = nil
      string_literal195 = nil
      __ID196__ = nil
      char_literal197 = nil
      char_literal199 = nil
      class_member192 = nil
      class_member198 = nil

      tree_for_string_literal189 = nil
      tree_for_ID190 = nil
      tree_for_char_literal191 = nil
      tree_for_char_literal193 = nil
      tree_for_string_literal194 = nil
      tree_for_string_literal195 = nil
      tree_for_ID196 = nil
      tree_for_char_literal197 = nil
      tree_for_char_literal199 = nil

      begin
        # at line 533:3: ( 'class' ID '{' ( class_member )* '}' | 'object' ( 'var' )? ID '{' ( class_member )* '}' )
        alt_44 = 2
        look_44_0 = @input.peek( 1 )

        if ( look_44_0 == CLASS_DEF )
          alt_44 = 1
        elsif ( look_44_0 == OBJECT_DEF )
          alt_44 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 44, 0 )
        end
        case alt_44
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 533:5: 'class' ID '{' ( class_member )* '}'
          string_literal189 = match( CLASS_DEF, TOKENS_FOLLOWING_CLASS_DEF_IN_class_statement_3544 )
          if @state.backtracking == 0

            tree_for_string_literal189 = @adaptor.create_with_payload( string_literal189 )
            root_0 = @adaptor.become_root( tree_for_string_literal189, root_0 )

          end
          __ID190__ = match( ID, TOKENS_FOLLOWING_ID_IN_class_statement_3547 )
          if @state.backtracking == 0

            tree_for_ID190 = @adaptor.create_with_payload( __ID190__ )
            @adaptor.add_child( root_0, tree_for_ID190 )

          end
          char_literal191 = match( LBRACE, TOKENS_FOLLOWING_LBRACE_IN_class_statement_3549 )
          # at line 533:22: ( class_member )*
          while true # decision 41
            alt_41 = 2
            look_41_0 = @input.peek( 1 )

            if ( look_41_0 == GET || look_41_0 == SEMI || look_41_0 == SET || look_41_0 == MACRO || look_41_0 == EACH || look_41_0 == VAR || look_41_0.between?( DEF, OBJECT_DEF ) || look_41_0 == ID || look_41_0.between?( T__148, T__150 ) )
              alt_41 = 1

            end
            case alt_41
            when 1
              # at line 533:22: class_member
              @state.following.push( TOKENS_FOLLOWING_class_member_IN_class_statement_3552 )
              class_member192 = class_member
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child( root_0, class_member192.tree )
              end

            else
              break # out of loop for decision 41
            end
          end # loop for decision 41
          char_literal193 = match( RBRACE, TOKENS_FOLLOWING_RBRACE_IN_class_statement_3555 )

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 534:5: 'object' ( 'var' )? ID '{' ( class_member )* '}'
          string_literal194 = match( OBJECT_DEF, TOKENS_FOLLOWING_OBJECT_DEF_IN_class_statement_3562 )
          if @state.backtracking == 0

            tree_for_string_literal194 = @adaptor.create_with_payload( string_literal194 )
            root_0 = @adaptor.become_root( tree_for_string_literal194, root_0 )

          end
          # at line 534:15: ( 'var' )?
          alt_42 = 2
          look_42_0 = @input.peek( 1 )

          if ( look_42_0 == VAR )
            alt_42 = 1
          end
          case alt_42
          when 1
            # at line 534:15: 'var'
            string_literal195 = match( VAR, TOKENS_FOLLOWING_VAR_IN_class_statement_3565 )
            if @state.backtracking == 0

              tree_for_string_literal195 = @adaptor.create_with_payload( string_literal195 )
              @adaptor.add_child( root_0, tree_for_string_literal195 )

            end

          end
          __ID196__ = match( ID, TOKENS_FOLLOWING_ID_IN_class_statement_3568 )
          if @state.backtracking == 0

            tree_for_ID196 = @adaptor.create_with_payload( __ID196__ )
            @adaptor.add_child( root_0, tree_for_ID196 )

          end
          char_literal197 = match( LBRACE, TOKENS_FOLLOWING_LBRACE_IN_class_statement_3570 )
          # at line 534:30: ( class_member )*
          while true # decision 43
            alt_43 = 2
            look_43_0 = @input.peek( 1 )

            if ( look_43_0 == GET || look_43_0 == SEMI || look_43_0 == SET || look_43_0 == MACRO || look_43_0 == EACH || look_43_0 == VAR || look_43_0.between?( DEF, OBJECT_DEF ) || look_43_0 == ID || look_43_0.between?( T__148, T__150 ) )
              alt_43 = 1

            end
            case alt_43
            when 1
              # at line 534:30: class_member
              @state.following.push( TOKENS_FOLLOWING_class_member_IN_class_statement_3573 )
              class_member198 = class_member
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child( root_0, class_member198.tree )
              end

            else
              break # out of loop for decision 43
            end
          end # loop for decision 43
          char_literal199 = match( RBRACE, TOKENS_FOLLOWING_RBRACE_IN_class_statement_3576 )

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 43 )

      end
      
      return return_value
    end

    ClassMemberReturnValue = define_return_scope 

    # 
    # parser rule class_member
    # 
    # (in Jejune.g)
    # 537:1: class_member : ( variable_statement | 'def' variable_name ( function_parameters )? statement_block | 'get' ID ( function_parameters )? block | 'set' ID ( function_parameters )? block | variable_name '=' expression | ';' );
    # 
    def class_member
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )
      return_value = ClassMemberReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal201 = nil
      string_literal205 = nil
      __ID206__ = nil
      string_literal209 = nil
      __ID210__ = nil
      char_literal214 = nil
      char_literal216 = nil
      variable_statement200 = nil
      variable_name202 = nil
      function_parameters203 = nil
      statement_block204 = nil
      function_parameters207 = nil
      block208 = nil
      function_parameters211 = nil
      block212 = nil
      variable_name213 = nil
      expression215 = nil

      tree_for_string_literal201 = nil
      tree_for_string_literal205 = nil
      tree_for_ID206 = nil
      tree_for_string_literal209 = nil
      tree_for_ID210 = nil
      tree_for_char_literal214 = nil
      tree_for_char_literal216 = nil

      begin
        # at line 538:3: ( variable_statement | 'def' variable_name ( function_parameters )? statement_block | 'get' ID ( function_parameters )? block | 'set' ID ( function_parameters )? block | variable_name '=' expression | ';' )
        alt_48 = 6
        alt_48 = @dfa48.predict( @input )
        case alt_48
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 538:5: variable_statement
          @state.following.push( TOKENS_FOLLOWING_variable_statement_IN_class_member_3590 )
          variable_statement200 = variable_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, variable_statement200.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 539:5: 'def' variable_name ( function_parameters )? statement_block
          string_literal201 = match( DEF, TOKENS_FOLLOWING_DEF_IN_class_member_3596 )
          if @state.backtracking == 0

            tree_for_string_literal201 = @adaptor.create_with_payload( string_literal201 )
            root_0 = @adaptor.become_root( tree_for_string_literal201, root_0 )

          end
          @state.following.push( TOKENS_FOLLOWING_variable_name_IN_class_member_3599 )
          variable_name202 = variable_name
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, variable_name202.tree )
          end
          # at line 539:26: ( function_parameters )?
          alt_45 = 2
          look_45_0 = @input.peek( 1 )

          if ( look_45_0 == LPAREN )
            alt_45 = 1
          end
          case alt_45
          when 1
            # at line 539:26: function_parameters
            @state.following.push( TOKENS_FOLLOWING_function_parameters_IN_class_member_3601 )
            function_parameters203 = function_parameters
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, function_parameters203.tree )
            end

          end
          @state.following.push( TOKENS_FOLLOWING_statement_block_IN_class_member_3604 )
          statement_block204 = statement_block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, statement_block204.tree )
          end

        when 3
          root_0 = @adaptor.create_flat_list


          # at line 540:5: 'get' ID ( function_parameters )? block
          string_literal205 = match( GET, TOKENS_FOLLOWING_GET_IN_class_member_3610 )
          if @state.backtracking == 0

            tree_for_string_literal205 = @adaptor.create_with_payload( string_literal205 )
            root_0 = @adaptor.become_root( tree_for_string_literal205, root_0 )

          end
          __ID206__ = match( ID, TOKENS_FOLLOWING_ID_IN_class_member_3613 )
          if @state.backtracking == 0

            tree_for_ID206 = @adaptor.create_with_payload( __ID206__ )
            @adaptor.add_child( root_0, tree_for_ID206 )

          end
          # at line 540:15: ( function_parameters )?
          alt_46 = 2
          alt_46 = @dfa46.predict( @input )
          case alt_46
          when 1
            # at line 540:15: function_parameters
            @state.following.push( TOKENS_FOLLOWING_function_parameters_IN_class_member_3615 )
            function_parameters207 = function_parameters
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, function_parameters207.tree )
            end

          end
          @state.following.push( TOKENS_FOLLOWING_block_IN_class_member_3618 )
          block208 = block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, block208.tree )
          end

        when 4
          root_0 = @adaptor.create_flat_list


          # at line 541:5: 'set' ID ( function_parameters )? block
          string_literal209 = match( SET, TOKENS_FOLLOWING_SET_IN_class_member_3624 )
          if @state.backtracking == 0

            tree_for_string_literal209 = @adaptor.create_with_payload( string_literal209 )
            root_0 = @adaptor.become_root( tree_for_string_literal209, root_0 )

          end
          __ID210__ = match( ID, TOKENS_FOLLOWING_ID_IN_class_member_3627 )
          if @state.backtracking == 0

            tree_for_ID210 = @adaptor.create_with_payload( __ID210__ )
            @adaptor.add_child( root_0, tree_for_ID210 )

          end
          # at line 541:15: ( function_parameters )?
          alt_47 = 2
          alt_47 = @dfa47.predict( @input )
          case alt_47
          when 1
            # at line 541:15: function_parameters
            @state.following.push( TOKENS_FOLLOWING_function_parameters_IN_class_member_3629 )
            function_parameters211 = function_parameters
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, function_parameters211.tree )
            end

          end
          @state.following.push( TOKENS_FOLLOWING_block_IN_class_member_3632 )
          block212 = block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, block212.tree )
          end

        when 5
          root_0 = @adaptor.create_flat_list


          # at line 542:5: variable_name '=' expression
          @state.following.push( TOKENS_FOLLOWING_variable_name_IN_class_member_3638 )
          variable_name213 = variable_name
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, variable_name213.tree )
          end
          char_literal214 = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_class_member_3640 )
          if @state.backtracking == 0

            tree_for_char_literal214 = @adaptor.create_with_payload( char_literal214 )
            root_0 = @adaptor.become_root( tree_for_char_literal214, root_0 )

          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_class_member_3643 )
          expression215 = expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression215.tree )
          end

        when 6
          root_0 = @adaptor.create_flat_list


          # at line 543:5: ';'
          char_literal216 = match( SEMI, TOKENS_FOLLOWING_SEMI_IN_class_member_3649 )

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 44 )

      end
      
      return return_value
    end

    ExpressionListReturnValue = define_return_scope 

    # 
    # parser rule expression_list
    # 
    # (in Jejune.g)
    # 547:1: expression_list : expression ( ',' expression )* ;
    # 
    def expression_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )
      return_value = ExpressionListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal218 = nil
      expression217 = nil
      expression219 = nil

      tree_for_char_literal218 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 552:5: expression ( ',' expression )*
        @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_list_3667 )
        expression217 = expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, expression217.tree )
        end
        # at line 552:16: ( ',' expression )*
        while true # decision 49
          alt_49 = 2
          alt_49 = @dfa49.predict( @input )
          case alt_49
          when 1
            # at line 552:18: ',' expression
            char_literal218 = match( COMMA, TOKENS_FOLLOWING_COMMA_IN_expression_list_3671 )
            if @state.backtracking == 0

              tree_for_char_literal218 = @adaptor.create_with_payload( char_literal218 )
              root_0 = @adaptor.become_root( tree_for_char_literal218, root_0 )

            end
            @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_list_3674 )
            expression219 = expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, expression219.tree )
            end

          else
            break # out of loop for decision 49
          end
        end # loop for decision 49
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 45 )

      end
      
      return return_value
    end

    ExpressionReturnValue = define_return_scope 

    # 
    # parser rule expression
    # 
    # (in Jejune.g)
    # 555:1: expression : ( ( member assignment_op )=> member assignment_op expression | conditional );
    # 
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )
      return_value = ExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      member220 = nil
      assignment_op221 = nil
      expression222 = nil
      conditional223 = nil


      begin
        # at line 556:3: ( ( member assignment_op )=> member assignment_op expression | conditional )
        alt_50 = 2
        alt_50 = @dfa50.predict( @input )
        case alt_50
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 556:5: ( member assignment_op )=> member assignment_op expression
          @state.following.push( TOKENS_FOLLOWING_member_IN_expression_3699 )
          member220 = member
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, member220.tree )
          end
          @state.following.push( TOKENS_FOLLOWING_assignment_op_IN_expression_3701 )
          assignment_op221 = assignment_op
          @state.following.pop
          if @state.backtracking == 0
            root_0 = @adaptor.become_root( assignment_op221.tree, root_0 )
          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_3704 )
          expression222 = expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression222.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 557:5: conditional
          @state.following.push( TOKENS_FOLLOWING_conditional_IN_expression_3710 )
          conditional223 = conditional
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, conditional223.tree )
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 46 )

      end
      
      return return_value
    end

    AssignmentOpReturnValue = define_return_scope 

    # 
    # parser rule assignment_op
    # 
    # (in Jejune.g)
    # 560:1: assignment_op : ( '=' | '*=' | SLASH_ASGN | MOD_ASGN | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '||=' | '|=' );
    # 
    def assignment_op
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )
      return_value = AssignmentOpReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set224 = nil

      tree_for_set224 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 
        set224 = @input.look
        if @input.peek(1) == AMP_ASGN || @input.peek(1) == HAT_ASGN || @input.peek(1) == ASGN || @input.peek(1) == RSHIFT3_ASGN || @input.peek(1) == RSHIFT_ASGN || @input.peek(1) == SLASH_ASGN || @input.peek( 1 ).between?( LSHIFT_ASGN, STAR_ASGN ) || @input.peek(1) == MINUS_ASGN || @input.peek(1) == MOD_ASGN || @input.peek(1) == OR_ASGN || @input.peek(1) == PIPE_ASGN || @input.peek(1) == PLUS_ASGN
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child( root_0, @adaptor.create_with_payload( set224 ) )
          end
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 47 )

      end
      
      return return_value
    end

    ConditionalReturnValue = define_return_scope 

    # 
    # parser rule conditional
    # 
    # (in Jejune.g)
    # 576:1: conditional : logical_or ( '?' t= expression ':' f= expression )? ;
    # 
    def conditional
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )
      return_value = ConditionalReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal226 = nil
      char_literal227 = nil
      t = nil
      f = nil
      logical_or225 = nil

      tree_for_char_literal226 = nil
      tree_for_char_literal227 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 577:5: logical_or ( '?' t= expression ':' f= expression )?
        @state.following.push( TOKENS_FOLLOWING_logical_or_IN_conditional_3808 )
        logical_or225 = logical_or
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, logical_or225.tree )
        end
        # at line 577:16: ( '?' t= expression ':' f= expression )?
        alt_51 = 2
        look_51_0 = @input.peek( 1 )

        if ( look_51_0 == QMARK )
          alt_51 = 1
        end
        case alt_51
        when 1
          # at line 577:19: '?' t= expression ':' f= expression
          char_literal226 = match( QMARK, TOKENS_FOLLOWING_QMARK_IN_conditional_3813 )
          if @state.backtracking == 0

            tree_for_char_literal226 = @adaptor.create_with_payload( char_literal226 )
            root_0 = @adaptor.become_root( tree_for_char_literal226, root_0 )

          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_conditional_3819 )
          t = expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, t.tree )
          end
          char_literal227 = match( COLON, TOKENS_FOLLOWING_COLON_IN_conditional_3822 )
          @state.following.push( TOKENS_FOLLOWING_expression_IN_conditional_3828 )
          f = expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, f.tree )
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 48 )

      end
      
      return return_value
    end

    LogicalOrReturnValue = define_return_scope 

    # 
    # parser rule logical_or
    # 
    # (in Jejune.g)
    # 580:1: logical_or : logical_and ( '||' logical_and )* ;
    # 
    def logical_or
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )
      return_value = LogicalOrReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal229 = nil
      logical_and228 = nil
      logical_and230 = nil

      tree_for_string_literal229 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 581:5: logical_and ( '||' logical_and )*
        @state.following.push( TOKENS_FOLLOWING_logical_and_IN_logical_or_3844 )
        logical_and228 = logical_and
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, logical_and228.tree )
        end
        # at line 581:17: ( '||' logical_and )*
        while true # decision 52
          alt_52 = 2
          look_52_0 = @input.peek( 1 )

          if ( look_52_0 == OR )
            alt_52 = 1

          end
          case alt_52
          when 1
            # at line 581:20: '||' logical_and
            string_literal229 = match( OR, TOKENS_FOLLOWING_OR_IN_logical_or_3849 )
            if @state.backtracking == 0

              tree_for_string_literal229 = @adaptor.create_with_payload( string_literal229 )
              root_0 = @adaptor.become_root( tree_for_string_literal229, root_0 )

            end
            @state.following.push( TOKENS_FOLLOWING_logical_and_IN_logical_or_3853 )
            logical_and230 = logical_and
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, logical_and230.tree )
            end

          else
            break # out of loop for decision 52
          end
        end # loop for decision 52
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 49 )

      end
      
      return return_value
    end

    LogicalAndReturnValue = define_return_scope 

    # 
    # parser rule logical_and
    # 
    # (in Jejune.g)
    # 584:1: logical_and : bit_or ( '&&' bit_or )* ;
    # 
    def logical_and
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )
      return_value = LogicalAndReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal232 = nil
      bit_or231 = nil
      bit_or233 = nil

      tree_for_string_literal232 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 585:5: bit_or ( '&&' bit_or )*
        @state.following.push( TOKENS_FOLLOWING_bit_or_IN_logical_and_3869 )
        bit_or231 = bit_or
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, bit_or231.tree )
        end
        # at line 585:13: ( '&&' bit_or )*
        while true # decision 53
          alt_53 = 2
          look_53_0 = @input.peek( 1 )

          if ( look_53_0 == AND )
            alt_53 = 1

          end
          case alt_53
          when 1
            # at line 585:15: '&&' bit_or
            string_literal232 = match( AND, TOKENS_FOLLOWING_AND_IN_logical_and_3874 )
            if @state.backtracking == 0

              tree_for_string_literal232 = @adaptor.create_with_payload( string_literal232 )
              root_0 = @adaptor.become_root( tree_for_string_literal232, root_0 )

            end
            @state.following.push( TOKENS_FOLLOWING_bit_or_IN_logical_and_3878 )
            bit_or233 = bit_or
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, bit_or233.tree )
            end

          else
            break # out of loop for decision 53
          end
        end # loop for decision 53
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 50 )

      end
      
      return return_value
    end

    BitOrReturnValue = define_return_scope 

    # 
    # parser rule bit_or
    # 
    # (in Jejune.g)
    # 588:1: bit_or : bit_xor ( '|' bit_xor )* ;
    # 
    def bit_or
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )
      return_value = BitOrReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal235 = nil
      bit_xor234 = nil
      bit_xor236 = nil

      tree_for_char_literal235 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 589:5: bit_xor ( '|' bit_xor )*
        @state.following.push( TOKENS_FOLLOWING_bit_xor_IN_bit_or_3894 )
        bit_xor234 = bit_xor
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, bit_xor234.tree )
        end
        # at line 589:13: ( '|' bit_xor )*
        while true # decision 54
          alt_54 = 2
          alt_54 = @dfa54.predict( @input )
          case alt_54
          when 1
            # at line 589:15: '|' bit_xor
            char_literal235 = match( PIPE, TOKENS_FOLLOWING_PIPE_IN_bit_or_3898 )
            if @state.backtracking == 0

              tree_for_char_literal235 = @adaptor.create_with_payload( char_literal235 )
              root_0 = @adaptor.become_root( tree_for_char_literal235, root_0 )

            end
            @state.following.push( TOKENS_FOLLOWING_bit_xor_IN_bit_or_3902 )
            bit_xor236 = bit_xor
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, bit_xor236.tree )
            end

          else
            break # out of loop for decision 54
          end
        end # loop for decision 54
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 51 )

      end
      
      return return_value
    end

    BitXorReturnValue = define_return_scope 

    # 
    # parser rule bit_xor
    # 
    # (in Jejune.g)
    # 592:1: bit_xor : bit_and ( '^' bit_and )* ;
    # 
    def bit_xor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 52 )
      return_value = BitXorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal238 = nil
      bit_and237 = nil
      bit_and239 = nil

      tree_for_char_literal238 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 593:5: bit_and ( '^' bit_and )*
        @state.following.push( TOKENS_FOLLOWING_bit_and_IN_bit_xor_3918 )
        bit_and237 = bit_and
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, bit_and237.tree )
        end
        # at line 593:13: ( '^' bit_and )*
        while true # decision 55
          alt_55 = 2
          look_55_0 = @input.peek( 1 )

          if ( look_55_0 == HAT )
            alt_55 = 1

          end
          case alt_55
          when 1
            # at line 593:16: '^' bit_and
            char_literal238 = match( HAT, TOKENS_FOLLOWING_HAT_IN_bit_xor_3923 )
            if @state.backtracking == 0

              tree_for_char_literal238 = @adaptor.create_with_payload( char_literal238 )
              root_0 = @adaptor.become_root( tree_for_char_literal238, root_0 )

            end
            @state.following.push( TOKENS_FOLLOWING_bit_and_IN_bit_xor_3927 )
            bit_and239 = bit_and
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, bit_and239.tree )
            end

          else
            break # out of loop for decision 55
          end
        end # loop for decision 55
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 52 )

      end
      
      return return_value
    end

    BitAndReturnValue = define_return_scope 

    # 
    # parser rule bit_and
    # 
    # (in Jejune.g)
    # 596:1: bit_and : equality ( '&' equality )* ;
    # 
    def bit_and
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 53 )
      return_value = BitAndReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal241 = nil
      equality240 = nil
      equality242 = nil

      tree_for_char_literal241 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 597:5: equality ( '&' equality )*
        @state.following.push( TOKENS_FOLLOWING_equality_IN_bit_and_3943 )
        equality240 = equality
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, equality240.tree )
        end
        # at line 597:14: ( '&' equality )*
        while true # decision 56
          alt_56 = 2
          look_56_0 = @input.peek( 1 )

          if ( look_56_0 == AMP )
            alt_56 = 1

          end
          case alt_56
          when 1
            # at line 597:17: '&' equality
            char_literal241 = match( AMP, TOKENS_FOLLOWING_AMP_IN_bit_and_3948 )
            if @state.backtracking == 0

              tree_for_char_literal241 = @adaptor.create_with_payload( char_literal241 )
              root_0 = @adaptor.become_root( tree_for_char_literal241, root_0 )

            end
            @state.following.push( TOKENS_FOLLOWING_equality_IN_bit_and_3952 )
            equality242 = equality
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, equality242.tree )
            end

          else
            break # out of loop for decision 56
          end
        end # loop for decision 56
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 53 )

      end
      
      return return_value
    end

    EqualityReturnValue = define_return_scope 

    # 
    # parser rule equality
    # 
    # (in Jejune.g)
    # 600:1: equality : relation ( ( '==' | '!=' | '===' | '!==' ) relation )* ;
    # 
    def equality
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 54 )
      return_value = EqualityReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal244 = nil
      string_literal245 = nil
      string_literal246 = nil
      string_literal247 = nil
      relation243 = nil
      relation248 = nil

      tree_for_string_literal244 = nil
      tree_for_string_literal245 = nil
      tree_for_string_literal246 = nil
      tree_for_string_literal247 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 601:5: relation ( ( '==' | '!=' | '===' | '!==' ) relation )*
        @state.following.push( TOKENS_FOLLOWING_relation_IN_equality_3968 )
        relation243 = relation
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, relation243.tree )
        end
        # at line 602:5: ( ( '==' | '!=' | '===' | '!==' ) relation )*
        while true # decision 58
          alt_58 = 2
          look_58_0 = @input.peek( 1 )

          if ( look_58_0 == NEQ || look_58_0 == NEQQ || look_58_0 == EQ || look_58_0 == EQQ )
            alt_58 = 1

          end
          case alt_58
          when 1
            # at line 603:7: ( '==' | '!=' | '===' | '!==' ) relation
            # at line 603:7: ( '==' | '!=' | '===' | '!==' )
            alt_57 = 4
            case look_57 = @input.peek( 1 )
            when EQ then alt_57 = 1
            when NEQ then alt_57 = 2
            when EQQ then alt_57 = 3
            when NEQQ then alt_57 = 4
            else
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              raise NoViableAlternative( "", 57, 0 )
            end
            case alt_57
            when 1
              # at line 603:9: '=='
              string_literal244 = match( EQ, TOKENS_FOLLOWING_EQ_IN_equality_3986 )
              if @state.backtracking == 0

                tree_for_string_literal244 = @adaptor.create_with_payload( string_literal244 )
                root_0 = @adaptor.become_root( tree_for_string_literal244, root_0 )

              end

            when 2
              # at line 603:17: '!='
              string_literal245 = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_equality_3991 )
              if @state.backtracking == 0

                tree_for_string_literal245 = @adaptor.create_with_payload( string_literal245 )
                root_0 = @adaptor.become_root( tree_for_string_literal245, root_0 )

              end

            when 3
              # at line 603:25: '==='
              string_literal246 = match( EQQ, TOKENS_FOLLOWING_EQQ_IN_equality_3996 )
              if @state.backtracking == 0

                tree_for_string_literal246 = @adaptor.create_with_payload( string_literal246 )
                root_0 = @adaptor.become_root( tree_for_string_literal246, root_0 )

              end

            when 4
              # at line 603:34: '!=='
              string_literal247 = match( NEQQ, TOKENS_FOLLOWING_NEQQ_IN_equality_4001 )
              if @state.backtracking == 0

                tree_for_string_literal247 = @adaptor.create_with_payload( string_literal247 )
                root_0 = @adaptor.become_root( tree_for_string_literal247, root_0 )

              end

            end
            @state.following.push( TOKENS_FOLLOWING_relation_IN_equality_4013 )
            relation248 = relation
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, relation248.tree )
            end

          else
            break # out of loop for decision 58
          end
        end # loop for decision 58
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 54 )

      end
      
      return return_value
    end

    RelationReturnValue = define_return_scope 

    # 
    # parser rule relation
    # 
    # (in Jejune.g)
    # 608:1: relation : shift ( relation_op shift )* ;
    # 
    def relation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 55 )
      return_value = RelationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      shift249 = nil
      relation_op250 = nil
      shift251 = nil


      begin
        root_0 = @adaptor.create_flat_list


        # at line 609:5: shift ( relation_op shift )*
        @state.following.push( TOKENS_FOLLOWING_shift_IN_relation_4033 )
        shift249 = shift
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, shift249.tree )
        end
        # at line 609:11: ( relation_op shift )*
        while true # decision 59
          alt_59 = 2
          look_59_0 = @input.peek( 1 )

          if ( look_59_0 == GEQ || look_59_0 == GREATER || look_59_0 == INSTANCEOF || look_59_0 == LEQ || look_59_0 == LESS )
            alt_59 = 1
          elsif ( look_59_0 == IN ) and ( (  !( @InFor_stack.last && @InFor_stack.last.active )  ) )
            alt_59 = 1

          end
          case alt_59
          when 1
            # at line 609:14: relation_op shift
            @state.following.push( TOKENS_FOLLOWING_relation_op_IN_relation_4038 )
            relation_op250 = relation_op
            @state.following.pop
            if @state.backtracking == 0
              root_0 = @adaptor.become_root( relation_op250.tree, root_0 )
            end
            @state.following.push( TOKENS_FOLLOWING_shift_IN_relation_4042 )
            shift251 = shift
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, shift251.tree )
            end

          else
            break # out of loop for decision 59
          end
        end # loop for decision 59
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 55 )

      end
      
      return return_value
    end

    RelationOpReturnValue = define_return_scope 

    # 
    # parser rule relation_op
    # 
    # (in Jejune.g)
    # 612:1: relation_op : ( '<' | '>' | '<=' | '>=' | 'instanceof' | {...}? => 'in' );
    # 
    def relation_op
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 56 )
      return_value = RelationOpReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal252 = nil
      char_literal253 = nil
      string_literal254 = nil
      string_literal255 = nil
      string_literal256 = nil
      string_literal257 = nil

      tree_for_char_literal252 = nil
      tree_for_char_literal253 = nil
      tree_for_string_literal254 = nil
      tree_for_string_literal255 = nil
      tree_for_string_literal256 = nil
      tree_for_string_literal257 = nil

      begin
        # at line 613:3: ( '<' | '>' | '<=' | '>=' | 'instanceof' | {...}? => 'in' )
        alt_60 = 6
        look_60_0 = @input.peek( 1 )

        if ( look_60_0 == LESS )
          alt_60 = 1
        elsif ( look_60_0 == GREATER )
          alt_60 = 2
        elsif ( look_60_0 == LEQ )
          alt_60 = 3
        elsif ( look_60_0 == GEQ )
          alt_60 = 4
        elsif ( look_60_0 == INSTANCEOF )
          alt_60 = 5
        elsif ( look_60_0 == IN ) and ( (  !( @InFor_stack.last && @InFor_stack.last.active )  ) )
          alt_60 = 6
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 60, 0 )
        end
        case alt_60
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 613:5: '<'
          char_literal252 = match( LESS, TOKENS_FOLLOWING_LESS_IN_relation_op_4060 )
          if @state.backtracking == 0

            tree_for_char_literal252 = @adaptor.create_with_payload( char_literal252 )
            @adaptor.add_child( root_0, tree_for_char_literal252 )

          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 614:5: '>'
          char_literal253 = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_relation_op_4066 )
          if @state.backtracking == 0

            tree_for_char_literal253 = @adaptor.create_with_payload( char_literal253 )
            @adaptor.add_child( root_0, tree_for_char_literal253 )

          end

        when 3
          root_0 = @adaptor.create_flat_list


          # at line 615:5: '<='
          string_literal254 = match( LEQ, TOKENS_FOLLOWING_LEQ_IN_relation_op_4072 )
          if @state.backtracking == 0

            tree_for_string_literal254 = @adaptor.create_with_payload( string_literal254 )
            @adaptor.add_child( root_0, tree_for_string_literal254 )

          end

        when 4
          root_0 = @adaptor.create_flat_list


          # at line 616:5: '>='
          string_literal255 = match( GEQ, TOKENS_FOLLOWING_GEQ_IN_relation_op_4078 )
          if @state.backtracking == 0

            tree_for_string_literal255 = @adaptor.create_with_payload( string_literal255 )
            @adaptor.add_child( root_0, tree_for_string_literal255 )

          end

        when 5
          root_0 = @adaptor.create_flat_list


          # at line 617:5: 'instanceof'
          string_literal256 = match( INSTANCEOF, TOKENS_FOLLOWING_INSTANCEOF_IN_relation_op_4084 )
          if @state.backtracking == 0

            tree_for_string_literal256 = @adaptor.create_with_payload( string_literal256 )
            @adaptor.add_child( root_0, tree_for_string_literal256 )

          end

        when 6
          root_0 = @adaptor.create_flat_list


          # at line 618:5: {...}? => 'in'
          unless ( (  !( @InFor_stack.last && @InFor_stack.last.active )  ) )
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise FailedPredicate( "relation_op", " !( $InFor.last && $InFor::active ) " )
          end
          string_literal257 = match( IN, TOKENS_FOLLOWING_IN_IN_relation_op_4093 )
          if @state.backtracking == 0

            tree_for_string_literal257 = @adaptor.create_with_payload( string_literal257 )
            @adaptor.add_child( root_0, tree_for_string_literal257 )

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 56 )

      end
      
      return return_value
    end

    ShiftReturnValue = define_return_scope 

    # 
    # parser rule shift
    # 
    # (in Jejune.g)
    # 621:1: shift : add ( ( '<<' | '>>' | '>>>' ) add )* ;
    # 
    def shift
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 57 )
      return_value = ShiftReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal259 = nil
      string_literal260 = nil
      string_literal261 = nil
      add258 = nil
      add262 = nil

      tree_for_string_literal259 = nil
      tree_for_string_literal260 = nil
      tree_for_string_literal261 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 622:5: add ( ( '<<' | '>>' | '>>>' ) add )*
        @state.following.push( TOKENS_FOLLOWING_add_IN_shift_4106 )
        add258 = add
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, add258.tree )
        end
        # at line 622:9: ( ( '<<' | '>>' | '>>>' ) add )*
        while true # decision 62
          alt_62 = 2
          look_62_0 = @input.peek( 1 )

          if ( look_62_0 == RSHIFT || look_62_0 == RSHIFT3 || look_62_0 == LSHIFT )
            alt_62 = 1

          end
          case alt_62
          when 1
            # at line 622:12: ( '<<' | '>>' | '>>>' ) add
            # at line 622:12: ( '<<' | '>>' | '>>>' )
            alt_61 = 3
            case look_61 = @input.peek( 1 )
            when LSHIFT then alt_61 = 1
            when RSHIFT then alt_61 = 2
            when RSHIFT3 then alt_61 = 3
            else
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              raise NoViableAlternative( "", 61, 0 )
            end
            case alt_61
            when 1
              # at line 622:14: '<<'
              string_literal259 = match( LSHIFT, TOKENS_FOLLOWING_LSHIFT_IN_shift_4113 )
              if @state.backtracking == 0

                tree_for_string_literal259 = @adaptor.create_with_payload( string_literal259 )
                root_0 = @adaptor.become_root( tree_for_string_literal259, root_0 )

              end

            when 2
              # at line 622:22: '>>'
              string_literal260 = match( RSHIFT, TOKENS_FOLLOWING_RSHIFT_IN_shift_4118 )
              if @state.backtracking == 0

                tree_for_string_literal260 = @adaptor.create_with_payload( string_literal260 )
                root_0 = @adaptor.become_root( tree_for_string_literal260, root_0 )

              end

            when 3
              # at line 622:30: '>>>'
              string_literal261 = match( RSHIFT3, TOKENS_FOLLOWING_RSHIFT3_IN_shift_4123 )
              if @state.backtracking == 0

                tree_for_string_literal261 = @adaptor.create_with_payload( string_literal261 )
                root_0 = @adaptor.become_root( tree_for_string_literal261, root_0 )

              end

            end
            @state.following.push( TOKENS_FOLLOWING_add_IN_shift_4129 )
            add262 = add
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, add262.tree )
            end

          else
            break # out of loop for decision 62
          end
        end # loop for decision 62
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 57 )

      end
      
      return return_value
    end

    AddReturnValue = define_return_scope 

    # 
    # parser rule add
    # 
    # (in Jejune.g)
    # 625:1: add : mult ( ( '+' | '-' ) mult )* ;
    # 
    def add
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 58 )
      return_value = AddReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal264 = nil
      char_literal265 = nil
      mult263 = nil
      mult266 = nil

      tree_for_char_literal264 = nil
      tree_for_char_literal265 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 626:5: mult ( ( '+' | '-' ) mult )*
        @state.following.push( TOKENS_FOLLOWING_mult_IN_add_4145 )
        mult263 = mult
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, mult263.tree )
        end
        # at line 626:10: ( ( '+' | '-' ) mult )*
        while true # decision 64
          alt_64 = 2
          alt_64 = @dfa64.predict( @input )
          case alt_64
          when 1
            # at line 626:13: ( '+' | '-' ) mult
            # at line 626:13: ( '+' | '-' )
            alt_63 = 2
            look_63_0 = @input.peek( 1 )

            if ( look_63_0 == PLUS )
              alt_63 = 1
            elsif ( look_63_0 == MINUS )
              alt_63 = 2
            else
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              raise NoViableAlternative( "", 63, 0 )
            end
            case alt_63
            when 1
              # at line 626:15: '+'
              char_literal264 = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_add_4152 )
              if @state.backtracking == 0

                tree_for_char_literal264 = @adaptor.create_with_payload( char_literal264 )
                root_0 = @adaptor.become_root( tree_for_char_literal264, root_0 )

              end

            when 2
              # at line 626:22: '-'
              char_literal265 = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_add_4157 )
              if @state.backtracking == 0

                tree_for_char_literal265 = @adaptor.create_with_payload( char_literal265 )
                root_0 = @adaptor.become_root( tree_for_char_literal265, root_0 )

              end

            end
            @state.following.push( TOKENS_FOLLOWING_mult_IN_add_4163 )
            mult266 = mult
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, mult266.tree )
            end

          else
            break # out of loop for decision 64
          end
        end # loop for decision 64
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 58 )

      end
      
      return return_value
    end

    MultReturnValue = define_return_scope 

    # 
    # parser rule mult
    # 
    # (in Jejune.g)
    # 629:1: mult : unary ( ( '*' | SLASH | MOD ) unary )* ;
    # 
    def mult
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 59 )
      return_value = MultReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal268 = nil
      __SLASH269__ = nil
      __MOD270__ = nil
      unary267 = nil
      unary271 = nil

      tree_for_char_literal268 = nil
      tree_for_SLASH269 = nil
      tree_for_MOD270 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 630:5: unary ( ( '*' | SLASH | MOD ) unary )*
        @state.following.push( TOKENS_FOLLOWING_unary_IN_mult_4179 )
        unary267 = unary
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, unary267.tree )
        end
        # at line 630:11: ( ( '*' | SLASH | MOD ) unary )*
        while true # decision 66
          alt_66 = 2
          look_66_0 = @input.peek( 1 )

          if ( look_66_0 == SLASH || look_66_0 == STAR || look_66_0 == MOD )
            alt_66 = 1

          end
          case alt_66
          when 1
            # at line 630:14: ( '*' | SLASH | MOD ) unary
            # at line 630:14: ( '*' | SLASH | MOD )
            alt_65 = 3
            case look_65 = @input.peek( 1 )
            when STAR then alt_65 = 1
            when SLASH then alt_65 = 2
            when MOD then alt_65 = 3
            else
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              raise NoViableAlternative( "", 65, 0 )
            end
            case alt_65
            when 1
              # at line 630:16: '*'
              char_literal268 = match( STAR, TOKENS_FOLLOWING_STAR_IN_mult_4186 )
              if @state.backtracking == 0

                tree_for_char_literal268 = @adaptor.create_with_payload( char_literal268 )
                root_0 = @adaptor.become_root( tree_for_char_literal268, root_0 )

              end

            when 2
              # at line 630:23: SLASH
              __SLASH269__ = match( SLASH, TOKENS_FOLLOWING_SLASH_IN_mult_4191 )
              if @state.backtracking == 0

                tree_for_SLASH269 = @adaptor.create_with_payload( __SLASH269__ )
                root_0 = @adaptor.become_root( tree_for_SLASH269, root_0 )

              end

            when 3
              # at line 630:32: MOD
              __MOD270__ = match( MOD, TOKENS_FOLLOWING_MOD_IN_mult_4196 )
              if @state.backtracking == 0

                tree_for_MOD270 = @adaptor.create_with_payload( __MOD270__ )
                root_0 = @adaptor.become_root( tree_for_MOD270, root_0 )

              end

            end
            @state.following.push( TOKENS_FOLLOWING_unary_IN_mult_4202 )
            unary271 = unary
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, unary271.tree )
            end

          else
            break # out of loop for decision 66
          end
        end # loop for decision 66
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 59 )

      end
      
      return return_value
    end

    UnaryReturnValue = define_return_scope 

    # 
    # parser rule unary
    # 
    # (in Jejune.g)
    # 633:1: unary : ( 'delete' unary -> ^( 'delete' unary ) | 'void' unary -> ^( 'void' unary ) | 'typeof' unary -> ^( 'typeof' unary ) | 'defined?' unary -> ^( 'defined?' unary ) | 'undefined?' unary -> ^( 'undefined?' unary ) | '++' unary -> ^( '++' unary ) | '--' unary -> ^( '--' unary ) | '+' unary -> ^( UPLUS[ '+' ] unary ) | '-' unary -> ^( UMINUS[ '-' ] unary ) | '~' unary -> ^( '~' unary ) | '!' unary -> ^( '!' unary ) | postfix -> postfix );
    # 
    def unary
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 60 )
      return_value = UnaryReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal272 = nil
      string_literal274 = nil
      string_literal276 = nil
      string_literal278 = nil
      string_literal280 = nil
      string_literal282 = nil
      string_literal284 = nil
      char_literal286 = nil
      char_literal288 = nil
      char_literal290 = nil
      char_literal292 = nil
      unary273 = nil
      unary275 = nil
      unary277 = nil
      unary279 = nil
      unary281 = nil
      unary283 = nil
      unary285 = nil
      unary287 = nil
      unary289 = nil
      unary291 = nil
      unary293 = nil
      postfix294 = nil

      tree_for_string_literal272 = nil
      tree_for_string_literal274 = nil
      tree_for_string_literal276 = nil
      tree_for_string_literal278 = nil
      tree_for_string_literal280 = nil
      tree_for_string_literal282 = nil
      tree_for_string_literal284 = nil
      tree_for_char_literal286 = nil
      tree_for_char_literal288 = nil
      tree_for_char_literal290 = nil
      tree_for_char_literal292 = nil
      stream_DECR = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token DECR" )
      stream_PLUS = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token PLUS" )
      stream_IS_DEFINED = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token IS_DEFINED" )
      stream_VOID = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token VOID" )
      stream_DELETE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token DELETE" )
      stream_NOT = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token NOT" )
      stream_MINUS = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token MINUS" )
      stream_INCR = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token INCR" )
      stream_TYPEOF = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token TYPEOF" )
      stream_IS_UNDEFINED = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token IS_UNDEFINED" )
      stream_TILDE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token TILDE" )
      stream_unary = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule unary" )
      stream_postfix = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule postfix" )
      begin
        # at line 634:3: ( 'delete' unary -> ^( 'delete' unary ) | 'void' unary -> ^( 'void' unary ) | 'typeof' unary -> ^( 'typeof' unary ) | 'defined?' unary -> ^( 'defined?' unary ) | 'undefined?' unary -> ^( 'undefined?' unary ) | '++' unary -> ^( '++' unary ) | '--' unary -> ^( '--' unary ) | '+' unary -> ^( UPLUS[ '+' ] unary ) | '-' unary -> ^( UMINUS[ '-' ] unary ) | '~' unary -> ^( '~' unary ) | '!' unary -> ^( '!' unary ) | postfix -> postfix )
        alt_67 = 12
        alt_67 = @dfa67.predict( @input )
        case alt_67
        when 1
          # at line 634:5: 'delete' unary
          string_literal272 = match( DELETE, TOKENS_FOLLOWING_DELETE_IN_unary_4218 )
          if @state.backtracking == 0
            stream_DELETE.add( string_literal272 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4224 )
          unary273 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary273.tree )
          end
          # AST Rewrite
          # elements: unary, DELETE
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 634:24: -> ^( 'delete' unary )
            # at line 634:27: ^( 'delete' unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_DELETE.next_node, root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 2
          # at line 635:5: 'void' unary
          string_literal274 = match( VOID, TOKENS_FOLLOWING_VOID_IN_unary_4240 )
          if @state.backtracking == 0
            stream_VOID.add( string_literal274 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4248 )
          unary275 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary275.tree )
          end
          # AST Rewrite
          # elements: VOID, unary
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 635:24: -> ^( 'void' unary )
            # at line 635:27: ^( 'void' unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_VOID.next_node, root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 3
          # at line 636:5: 'typeof' unary
          string_literal276 = match( TYPEOF, TOKENS_FOLLOWING_TYPEOF_IN_unary_4264 )
          if @state.backtracking == 0
            stream_TYPEOF.add( string_literal276 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4270 )
          unary277 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary277.tree )
          end
          # AST Rewrite
          # elements: unary, TYPEOF
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 636:24: -> ^( 'typeof' unary )
            # at line 636:27: ^( 'typeof' unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_TYPEOF.next_node, root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 4
          # at line 637:5: 'defined?' unary
          string_literal278 = match( IS_DEFINED, TOKENS_FOLLOWING_IS_DEFINED_IN_unary_4286 )
          if @state.backtracking == 0
            stream_IS_DEFINED.add( string_literal278 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4290 )
          unary279 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary279.tree )
          end
          # AST Rewrite
          # elements: unary, IS_DEFINED
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 637:24: -> ^( 'defined?' unary )
            # at line 637:27: ^( 'defined?' unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_IS_DEFINED.next_node, root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 5
          # at line 638:5: 'undefined?' unary
          string_literal280 = match( IS_UNDEFINED, TOKENS_FOLLOWING_IS_UNDEFINED_IN_unary_4306 )
          if @state.backtracking == 0
            stream_IS_UNDEFINED.add( string_literal280 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4308 )
          unary281 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary281.tree )
          end
          # AST Rewrite
          # elements: IS_UNDEFINED, unary
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 638:24: -> ^( 'undefined?' unary )
            # at line 638:27: ^( 'undefined?' unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_IS_UNDEFINED.next_node, root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 6
          # at line 639:5: '++' unary
          string_literal282 = match( INCR, TOKENS_FOLLOWING_INCR_IN_unary_4324 )
          if @state.backtracking == 0
            stream_INCR.add( string_literal282 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4334 )
          unary283 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary283.tree )
          end
          # AST Rewrite
          # elements: INCR, unary
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 639:24: -> ^( '++' unary )
            # at line 639:27: ^( '++' unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_INCR.next_node, root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 7
          # at line 640:5: '--' unary
          string_literal284 = match( DECR, TOKENS_FOLLOWING_DECR_IN_unary_4350 )
          if @state.backtracking == 0
            stream_DECR.add( string_literal284 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4360 )
          unary285 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary285.tree )
          end
          # AST Rewrite
          # elements: DECR, unary
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 640:24: -> ^( '--' unary )
            # at line 640:27: ^( '--' unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_DECR.next_node, root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 8
          # at line 641:5: '+' unary
          char_literal286 = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_unary_4376 )
          if @state.backtracking == 0
            stream_PLUS.add( char_literal286 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4387 )
          unary287 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary287.tree )
          end
          # AST Rewrite
          # elements: unary
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 641:24: -> ^( UPLUS[ '+' ] unary )
            # at line 641:27: ^( UPLUS[ '+' ] unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create( UPLUS, '+' ), root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 9
          # at line 642:5: '-' unary
          char_literal288 = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_unary_4404 )
          if @state.backtracking == 0
            stream_MINUS.add( char_literal288 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4415 )
          unary289 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary289.tree )
          end
          # AST Rewrite
          # elements: unary
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 642:24: -> ^( UMINUS[ '-' ] unary )
            # at line 642:27: ^( UMINUS[ '-' ] unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create( UMINUS, '-' ), root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 10
          # at line 643:5: '~' unary
          char_literal290 = match( TILDE, TOKENS_FOLLOWING_TILDE_IN_unary_4432 )
          if @state.backtracking == 0
            stream_TILDE.add( char_literal290 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4443 )
          unary291 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary291.tree )
          end
          # AST Rewrite
          # elements: TILDE, unary
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 643:24: -> ^( '~' unary )
            # at line 643:27: ^( '~' unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_TILDE.next_node, root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 11
          # at line 644:5: '!' unary
          char_literal292 = match( NOT, TOKENS_FOLLOWING_NOT_IN_unary_4459 )
          if @state.backtracking == 0
            stream_NOT.add( char_literal292 )
          end
          @state.following.push( TOKENS_FOLLOWING_unary_IN_unary_4470 )
          unary293 = unary
          @state.following.pop
          if @state.backtracking == 0
            stream_unary.add( unary293.tree )
          end
          # AST Rewrite
          # elements: unary, NOT
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 644:24: -> ^( '!' unary )
            # at line 644:27: ^( '!' unary )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_NOT.next_node, root_1 )

            @adaptor.add_child( root_1, stream_unary.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 12
          # at line 645:5: postfix
          @state.following.push( TOKENS_FOLLOWING_postfix_IN_unary_4486 )
          postfix294 = postfix
          @state.following.pop
          if @state.backtracking == 0
            stream_postfix.add( postfix294.tree )
          end
          # AST Rewrite
          # elements: postfix
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 645:24: -> postfix
            @adaptor.add_child( root_0, stream_postfix.next_tree )



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 60 )

      end
      
      return return_value
    end

    PostfixReturnValue = define_return_scope 

    # 
    # parser rule postfix
    # 
    # (in Jejune.g)
    # 648:1: postfix : member ({...}? => ( '++' -> ^( POST_INCR[ '++' ] member ) | '--' -> ^( POST_DECR[ '--' ] member ) ) | -> member ) ;
    # 
    def postfix
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 61 )
      return_value = PostfixReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal296 = nil
      string_literal297 = nil
      member295 = nil

      tree_for_string_literal296 = nil
      tree_for_string_literal297 = nil
      stream_DECR = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token DECR" )
      stream_INCR = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token INCR" )
      stream_member = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule member" )
      begin
        # at line 649:5: member ({...}? => ( '++' -> ^( POST_INCR[ '++' ] member ) | '--' -> ^( POST_DECR[ '--' ] member ) ) | -> member )
        @state.following.push( TOKENS_FOLLOWING_member_IN_postfix_4514 )
        member295 = member
        @state.following.pop
        if @state.backtracking == 0
          stream_member.add( member295.tree )
        end
        # at line 650:5: ({...}? => ( '++' -> ^( POST_INCR[ '++' ] member ) | '--' -> ^( POST_DECR[ '--' ] member ) ) | -> member )
        alt_69 = 2
        alt_69 = @dfa69.predict( @input )
        case alt_69
        when 1
          # at line 650:7: {...}? => ( '++' -> ^( POST_INCR[ '++' ] member ) | '--' -> ^( POST_DECR[ '--' ] member ) )
          unless ( (  same_line?  ) )
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise FailedPredicate( "postfix", " same_line? " )
          end
          # at line 651:7: ( '++' -> ^( POST_INCR[ '++' ] member ) | '--' -> ^( POST_DECR[ '--' ] member ) )
          alt_68 = 2
          look_68_0 = @input.peek( 1 )

          if ( look_68_0 == INCR )
            alt_68 = 1
          elsif ( look_68_0 == DECR )
            alt_68 = 2
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 68, 0 )
          end
          case alt_68
          when 1
            # at line 651:9: '++'
            string_literal296 = match( INCR, TOKENS_FOLLOWING_INCR_IN_postfix_4533 )
            if @state.backtracking == 0
              stream_INCR.add( string_literal296 )
            end
            # AST Rewrite
            # elements: member
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

              root_0 = @adaptor.create_flat_list
              # 651:14: -> ^( POST_INCR[ '++' ] member )
              # at line 651:17: ^( POST_INCR[ '++' ] member )
              root_1 = @adaptor.create_flat_list
              root_1 = @adaptor.become_root( @adaptor.create( POST_INCR, '++' ), root_1 )

              @adaptor.add_child( root_1, stream_member.next_tree )

              @adaptor.add_child( root_0, root_1 )



              return_value.tree = root_0

            end
          when 2
            # at line 652:9: '--'
            string_literal297 = match( DECR, TOKENS_FOLLOWING_DECR_IN_postfix_4554 )
            if @state.backtracking == 0
              stream_DECR.add( string_literal297 )
            end
            # AST Rewrite
            # elements: member
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

              root_0 = @adaptor.create_flat_list
              # 652:14: -> ^( POST_DECR[ '--' ] member )
              # at line 652:17: ^( POST_DECR[ '--' ] member )
              root_1 = @adaptor.create_flat_list
              root_1 = @adaptor.become_root( @adaptor.create( POST_DECR, '--' ), root_1 )

              @adaptor.add_child( root_1, stream_member.next_tree )

              @adaptor.add_child( root_0, root_1 )



              return_value.tree = root_0

            end
          end

        when 2
          # at line 654:12: 
          # AST Rewrite
          # elements: member
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 654:12: -> member
            @adaptor.add_child( root_0, stream_member.next_tree )



            return_value.tree = root_0

          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 61 )

      end
      
      return return_value
    end

    MemberReturnValue = define_return_scope 

    # 
    # parser rule member
    # 
    # (in Jejune.g)
    # 662:1: member : ( receiver -> receiver ) ( accessor -> | arguments -> ^( CALL $member arguments ) | {...}? => iteration -> ^( ITER $member iteration ) )* ;
    # 
    def member
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 62 )
      return_value = MemberReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      receiver298 = nil
      accessor299 = nil
      arguments300 = nil
      iteration301 = nil

      stream_arguments = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule arguments" )
      stream_receiver = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule receiver" )
      stream_accessor = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule accessor" )
      stream_iteration = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule iteration" )
      begin
        # at line 663:5: ( receiver -> receiver ) ( accessor -> | arguments -> ^( CALL $member arguments ) | {...}? => iteration -> ^( ITER $member iteration ) )*
        # at line 663:5: ( receiver -> receiver )
        # at line 663:7: receiver
        @state.following.push( TOKENS_FOLLOWING_receiver_IN_member_4613 )
        receiver298 = receiver
        @state.following.pop
        if @state.backtracking == 0
          stream_receiver.add( receiver298.tree )
        end
        # AST Rewrite
        # elements: receiver
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 663:19: -> receiver
          @adaptor.add_child( root_0, stream_receiver.next_tree )



          return_value.tree = root_0

        end
        # at line 664:5: ( accessor -> | arguments -> ^( CALL $member arguments ) | {...}? => iteration -> ^( ITER $member iteration ) )*
        while true # decision 70
          alt_70 = 4
          alt_70 = @dfa70.predict( @input )
          case alt_70
          when 1
            # at line 664:7: accessor
            @state.following.push( TOKENS_FOLLOWING_accessor_IN_member_4630 )
            accessor299 = accessor
            @state.following.pop
            if @state.backtracking == 0
              stream_accessor.add( accessor299.tree )
            end
            # AST Rewrite
            # elements: 
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

              root_0 = @adaptor.create_flat_list
              # 664:19: ->
              @adaptor.add_child( root_0, (  prepend_tree( accessor299.tree, return_value.tree )  ) )



              return_value.tree = root_0

            end
          when 2
            # at line 665:7: arguments
            @state.following.push( TOKENS_FOLLOWING_arguments_IN_member_4645 )
            arguments300 = arguments
            @state.following.pop
            if @state.backtracking == 0
              stream_arguments.add( arguments300.tree )
            end
            # AST Rewrite
            # elements: arguments, member
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

              root_0 = @adaptor.create_flat_list
              # 665:19: -> ^( CALL $member arguments )
              # at line 665:22: ^( CALL $member arguments )
              root_1 = @adaptor.create_flat_list
              root_1 = @adaptor.become_root( @adaptor.create_from_type( CALL, "CALL" ), root_1 )

              @adaptor.add_child( root_1, stream_return_value.next_tree )
              @adaptor.add_child( root_1, stream_arguments.next_tree )

              @adaptor.add_child( root_0, root_1 )



              return_value.tree = root_0

            end
          when 3
            # at line 666:7: {...}? => iteration
            unless ( (  same_line?  ) )
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              raise FailedPredicate( "member", " same_line? " )
            end
            @state.following.push( TOKENS_FOLLOWING_iteration_IN_member_4679 )
            iteration301 = iteration
            @state.following.pop
            if @state.backtracking == 0
              stream_iteration.add( iteration301.tree )
            end
            # AST Rewrite
            # elements: member, iteration
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

              root_0 = @adaptor.create_flat_list
              # 667:19: -> ^( ITER $member iteration )
              # at line 667:22: ^( ITER $member iteration )
              root_1 = @adaptor.create_flat_list
              root_1 = @adaptor.become_root( @adaptor.create_from_type( ITER, "ITER" ), root_1 )

              @adaptor.add_child( root_1, stream_return_value.next_tree )
              @adaptor.add_child( root_1, stream_iteration.next_tree )

              @adaptor.add_child( root_0, root_1 )



              return_value.tree = root_0

            end
          else
            break # out of loop for decision 70
          end
        end # loop for decision 70
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 62 )

      end
      
      return return_value
    end

    AccessorReturnValue = define_return_scope 

    # 
    # parser rule accessor
    # 
    # (in Jejune.g)
    # 671:1: accessor : ( '[' expression ']' -> ^( AREF[ '[' ] expression ) | '.' ( ID | STRING | NUMBER | reserved ) );
    # 
    def accessor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 63 )
      return_value = AccessorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal302 = nil
      char_literal304 = nil
      char_literal305 = nil
      __ID306__ = nil
      __STRING307__ = nil
      __NUMBER308__ = nil
      expression303 = nil
      reserved309 = nil

      tree_for_char_literal302 = nil
      tree_for_char_literal304 = nil
      tree_for_char_literal305 = nil
      tree_for_ID306 = nil
      tree_for_STRING307 = nil
      tree_for_NUMBER308 = nil
      stream_RBRACK = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RBRACK" )
      stream_LBRACK = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LBRACK" )
      stream_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule expression" )
      begin
        # at line 672:3: ( '[' expression ']' -> ^( AREF[ '[' ] expression ) | '.' ( ID | STRING | NUMBER | reserved ) )
        alt_72 = 2
        look_72_0 = @input.peek( 1 )

        if ( look_72_0 == LBRACK )
          alt_72 = 1
        elsif ( look_72_0 == DOT )
          alt_72 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 72, 0 )
        end
        case alt_72
        when 1
          # at line 672:5: '[' expression ']'
          char_literal302 = match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_accessor_4714 )
          if @state.backtracking == 0
            stream_LBRACK.add( char_literal302 )
          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_accessor_4717 )
          expression303 = expression
          @state.following.pop
          if @state.backtracking == 0
            stream_expression.add( expression303.tree )
          end
          char_literal304 = match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_accessor_4720 )
          if @state.backtracking == 0
            stream_RBRACK.add( char_literal304 )
          end
          # AST Rewrite
          # elements: expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 672:26: -> ^( AREF[ '[' ] expression )
            # at line 672:29: ^( AREF[ '[' ] expression )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create( AREF, '[' ), root_1 )

            @adaptor.add_child( root_1, stream_expression.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 2
          root_0 = @adaptor.create_flat_list


          # at line 673:6: '.' ( ID | STRING | NUMBER | reserved )
          char_literal305 = match( DOT, TOKENS_FOLLOWING_DOT_IN_accessor_4740 )
          if @state.backtracking == 0

            tree_for_char_literal305 = @adaptor.create_with_payload( char_literal305 )
            root_0 = @adaptor.become_root( tree_for_char_literal305, root_0 )

          end
          # at line 673:11: ( ID | STRING | NUMBER | reserved )
          alt_71 = 4
          case look_71 = @input.peek( 1 )
          when ID then alt_71 = 1
          when STRING then alt_71 = 2
          when NUMBER then alt_71 = 3
          when GET, IF, IN, BREAK, INSTANCEOF, RETURN, CASE, CATCH, SET, CONTINUE, LET, DEFAULT, DELETE, SWITCH, THIS, DO, THROW, TRUE, TRY, TYPEOF, NEW, EACH, UNDEFINED, ELSE, NULL, UNLESS, UNTIL, FALSE, VAR, FINALLY, VOID, FOR, WHILE, WITH, FUNCTION, YIELD, DEF, CLASS_DEF, OBJECT_DEF, T__148, T__149, T__150 then alt_71 = 4
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 71, 0 )
          end
          case alt_71
          when 1
            # at line 673:13: ID
            __ID306__ = match( ID, TOKENS_FOLLOWING_ID_IN_accessor_4745 )
            if @state.backtracking == 0

              tree_for_ID306 = @adaptor.create_with_payload( __ID306__ )
              @adaptor.add_child( root_0, tree_for_ID306 )

            end

          when 2
            # at line 673:18: STRING
            __STRING307__ = match( STRING, TOKENS_FOLLOWING_STRING_IN_accessor_4749 )
            if @state.backtracking == 0

              tree_for_STRING307 = @adaptor.create_with_payload( __STRING307__ )
              @adaptor.add_child( root_0, tree_for_STRING307 )

            end

          when 3
            # at line 673:27: NUMBER
            __NUMBER308__ = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_accessor_4753 )
            if @state.backtracking == 0

              tree_for_NUMBER308 = @adaptor.create_with_payload( __NUMBER308__ )
              @adaptor.add_child( root_0, tree_for_NUMBER308 )

            end

          when 4
            # at line 673:36: reserved
            @state.following.push( TOKENS_FOLLOWING_reserved_IN_accessor_4757 )
            reserved309 = reserved
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, reserved309.tree )
            end
            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
               reserved309.tree.token.type = ID 
              # <-- action
            end

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 63 )

      end
      
      return return_value
    end

    ReceiverReturnValue = define_return_scope 

    # 
    # parser rule receiver
    # 
    # (in Jejune.g)
    # 676:1: receiver : ( primary -> primary | function -> function | EJS -> EJS | ( 'new' new_target ( arguments )? )=> 'new' new_target ( arguments )? -> ^( 'new' new_target ( arguments )? ) );
    # 
    def receiver
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 64 )
      return_value = ReceiverReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __EJS312__ = nil
      string_literal313 = nil
      primary310 = nil
      function311 = nil
      new_target314 = nil
      arguments315 = nil

      tree_for_EJS312 = nil
      tree_for_string_literal313 = nil
      stream_NEW = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token NEW" )
      stream_EJS = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token EJS" )
      stream_arguments = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule arguments" )
      stream_primary = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule primary" )
      stream_new_target = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule new_target" )
      stream_function = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule function" )
      begin
        # at line 677:3: ( primary -> primary | function -> function | EJS -> EJS | ( 'new' new_target ( arguments )? )=> 'new' new_target ( arguments )? -> ^( 'new' new_target ( arguments )? ) )
        alt_74 = 4
        look_74_0 = @input.peek( 1 )

        if ( look_74_0 == GENERAL || look_74_0 == GET || look_74_0 == REGEX || look_74_0 == LBRACE || look_74_0 == LBRACK || look_74_0 == SET || look_74_0 == DDOC || look_74_0 == LPAREN || look_74_0.between?( DGENERAL, MACRO ) || look_74_0 == THIS || look_74_0 == TRUE || look_74_0 == DSTRING || look_74_0 == EACH || look_74_0 == UNDEFINED || look_74_0 == NULL || look_74_0 == FALSE || look_74_0.between?( POUND, OBJECT_DEF ) || look_74_0.between?( ID, DOC ) || look_74_0.between?( T__148, T__150 ) )
          alt_74 = 1
        elsif ( look_74_0 == ARROW || look_74_0 == FUNCTION )
          alt_74 = 2
        elsif ( look_74_0 == EJS )
          alt_74 = 3
        elsif ( look_74_0 == NEW ) and ( syntactic_predicate?( :synpred9_Jejune ) )
          alt_74 = 4
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 74, 0 )
        end
        case alt_74
        when 1
          # at line 677:5: primary
          @state.following.push( TOKENS_FOLLOWING_primary_IN_receiver_4774 )
          primary310 = primary
          @state.following.pop
          if @state.backtracking == 0
            stream_primary.add( primary310.tree )
          end
          # AST Rewrite
          # elements: primary
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 677:14: -> primary
            @adaptor.add_child( root_0, stream_primary.next_tree )



            return_value.tree = root_0

          end
        when 2
          # at line 678:5: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_receiver_4785 )
          function311 = function
          @state.following.pop
          if @state.backtracking == 0
            stream_function.add( function311.tree )
          end
          # AST Rewrite
          # elements: function
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 678:14: -> function
            @adaptor.add_child( root_0, stream_function.next_tree )



            return_value.tree = root_0

          end
        when 3
          # at line 679:5: EJS
          __EJS312__ = match( EJS, TOKENS_FOLLOWING_EJS_IN_receiver_4795 )
          if @state.backtracking == 0
            stream_EJS.add( __EJS312__ )
          end
          # AST Rewrite
          # elements: EJS
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 679:14: -> EJS
            @adaptor.add_child( root_0, stream_EJS.next_node )



            return_value.tree = root_0

          end
        when 4
          # at line 680:5: ( 'new' new_target ( arguments )? )=> 'new' new_target ( arguments )?
          string_literal313 = match( NEW, TOKENS_FOLLOWING_NEW_IN_receiver_4828 )
          if @state.backtracking == 0
            stream_NEW.add( string_literal313 )
          end
          @state.following.push( TOKENS_FOLLOWING_new_target_IN_receiver_4830 )
          new_target314 = new_target
          @state.following.pop
          if @state.backtracking == 0
            stream_new_target.add( new_target314.tree )
          end
          # at line 681:24: ( arguments )?
          alt_73 = 2
          look_73_0 = @input.peek( 1 )

          if ( look_73_0 == LPAREN )
            alt_73 = 1
          end
          case alt_73
          when 1
            # at line 681:24: arguments
            @state.following.push( TOKENS_FOLLOWING_arguments_IN_receiver_4832 )
            arguments315 = arguments
            @state.following.pop
            if @state.backtracking == 0
              stream_arguments.add( arguments315.tree )
            end

          end
          # AST Rewrite
          # elements: new_target, arguments, NEW
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 681:35: -> ^( 'new' new_target ( arguments )? )
            # at line 681:38: ^( 'new' new_target ( arguments )? )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_NEW.next_node, root_1 )

            @adaptor.add_child( root_1, stream_new_target.next_tree )
            # at line 681:58: ( arguments )?
            if stream_arguments.has_next?
              @adaptor.add_child( root_1, stream_arguments.next_tree )

            end

            stream_arguments.reset();

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 64 )

      end
      
      return return_value
    end

    NewTargetReturnValue = define_return_scope 

    # 
    # parser rule new_target
    # 
    # (in Jejune.g)
    # 684:1: new_target : ( receiver -> receiver ) ( accessor ->)* ;
    # 
    def new_target
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 65 )
      return_value = NewTargetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      receiver316 = nil
      accessor317 = nil

      stream_receiver = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule receiver" )
      stream_accessor = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule accessor" )
      begin
        # at line 685:5: ( receiver -> receiver ) ( accessor ->)*
        # at line 685:5: ( receiver -> receiver )
        # at line 685:7: receiver
        @state.following.push( TOKENS_FOLLOWING_receiver_IN_new_target_4861 )
        receiver316 = receiver
        @state.following.pop
        if @state.backtracking == 0
          stream_receiver.add( receiver316.tree )
        end
        # AST Rewrite
        # elements: receiver
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 685:16: -> receiver
          @adaptor.add_child( root_0, stream_receiver.next_tree )



          return_value.tree = root_0

        end
        # at line 686:5: ( accessor ->)*
        while true # decision 75
          alt_75 = 2
          look_75_0 = @input.peek( 1 )

          if ( look_75_0 == LBRACK )
            alt_75 = 1
          elsif ( look_75_0 == DOT )
            alt_75 = 1

          end
          case alt_75
          when 1
            # at line 686:7: accessor
            @state.following.push( TOKENS_FOLLOWING_accessor_IN_new_target_4875 )
            accessor317 = accessor
            @state.following.pop
            if @state.backtracking == 0
              stream_accessor.add( accessor317.tree )
            end
            # AST Rewrite
            # elements: 
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

              root_0 = @adaptor.create_flat_list
              # 686:16: ->
              @adaptor.add_child( root_0, (  prepend_tree( accessor317.tree, return_value.tree )   ) )



              return_value.tree = root_0

            end
          else
            break # out of loop for decision 75
          end
        end # loop for decision 75
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 65 )

      end
      
      return return_value
    end

    ArgumentsReturnValue = define_return_scope 

    # 
    # parser rule arguments
    # 
    # (in Jejune.g)
    # 689:1: arguments : '(' ( argument ( ',' argument )* ( ',' )? )? ')' -> ^( ARGUMENTS ( argument )* ) ;
    # 
    def arguments
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 66 )
      return_value = ArgumentsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal318 = nil
      char_literal320 = nil
      char_literal322 = nil
      char_literal323 = nil
      argument319 = nil
      argument321 = nil

      tree_for_char_literal318 = nil
      tree_for_char_literal320 = nil
      tree_for_char_literal322 = nil
      tree_for_char_literal323 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RPAREN" )
      stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token COMMA" )
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LPAREN" )
      stream_argument = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule argument" )
      begin
        # at line 690:5: '(' ( argument ( ',' argument )* ( ',' )? )? ')'
        char_literal318 = match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_arguments_4895 )
        if @state.backtracking == 0
          stream_LPAREN.add( char_literal318 )
        end
        # at line 690:10: ( argument ( ',' argument )* ( ',' )? )?
        alt_78 = 2
        look_78_0 = @input.peek( 1 )

        if ( look_78_0 == GENERAL || look_78_0 == GET || look_78_0 == ARROW || look_78_0 == REGEX || look_78_0 == LBRACE || look_78_0 == LBRACK || look_78_0 == SET || look_78_0 == DDOC || look_78_0 == LPAREN || look_78_0 == DELETE || look_78_0.between?( DGENERAL, MACRO ) || look_78_0 == THIS || look_78_0 == TRUE || look_78_0.between?( TYPEOF, NEW ) || look_78_0 == EACH || look_78_0 == UNDEFINED || look_78_0 == NULL || look_78_0 == FALSE || look_78_0 == VOID || look_78_0 == FUNCTION || look_78_0.between?( POUND, DOC ) || look_78_0.between?( T__148, T__150 ) )
          alt_78 = 1
        elsif ( look_78_0 == IF || look_78_0 == IN || look_78_0.between?( BREAK, RETURN ) || look_78_0 == CASE || look_78_0 == CATCH || look_78_0.between?( CONTINUE, LET ) || look_78_0 == DEFAULT || look_78_0 == SWITCH || look_78_0 == DO || look_78_0 == THROW || look_78_0 == TRY || look_78_0 == ELSE || look_78_0 == UNLESS || look_78_0 == UNTIL || look_78_0.between?( VAR, FINALLY ) || look_78_0 == FOR || look_78_0 == WHILE || look_78_0 == WITH || look_78_0 == YIELD ) and ( (  property_definition?  ) )
          alt_78 = 1
        elsif ( look_78_0 == AMP || look_78_0 == INCR || look_78_0 == IS_DEFINED || look_78_0 == DECR || look_78_0 == MINUS || look_78_0 == TILDE || look_78_0 == NOT || look_78_0 == PLUS || look_78_0 == IS_UNDEFINED )
          alt_78 = 1
        end
        case alt_78
        when 1
          # at line 690:12: argument ( ',' argument )* ( ',' )?
          @state.following.push( TOKENS_FOLLOWING_argument_IN_arguments_4900 )
          argument319 = argument
          @state.following.pop
          if @state.backtracking == 0
            stream_argument.add( argument319.tree )
          end
          # at line 690:22: ( ',' argument )*
          while true # decision 76
            alt_76 = 2
            look_76_0 = @input.peek( 1 )

            if ( look_76_0 == COMMA )
              look_76_1 = @input.peek( 2 )

              if ( look_76_1.between?( AMP, GENERAL ) || look_76_1 == GET || look_76_1 == ARROW || look_76_1 == IF || look_76_1.between?( IN, REGEX ) || look_76_1 == INCR || look_76_1.between?( BREAK, RETURN ) || look_76_1 == IS_DEFINED || look_76_1 == CASE || look_76_1 == CATCH || look_76_1 == LBRACE || look_76_1 == LBRACK || look_76_1.between?( SET, LET ) || look_76_1 == DDOC || look_76_1.between?( DECR, LPAREN ) || look_76_1 == DEFAULT || look_76_1 == DELETE || look_76_1.between?( DGENERAL, SWITCH ) || look_76_1.between?( MINUS, DO ) || look_76_1 == THROW || look_76_1 == TILDE || look_76_1 == TRUE || look_76_1 == TRY || look_76_1.between?( TYPEOF, NEW ) || look_76_1.between?( EACH, UNLESS ) || look_76_1 == UNTIL || look_76_1 == FALSE || look_76_1.between?( VAR, FINALLY ) || look_76_1.between?( VOID, FOR ) || look_76_1 == WHILE || look_76_1.between?( WITH, YIELD ) || look_76_1.between?( IS_UNDEFINED, DOC ) || look_76_1.between?( T__148, T__150 ) )
                alt_76 = 1

              end

            end
            case alt_76
            when 1
              # at line 690:24: ',' argument
              char_literal320 = match( COMMA, TOKENS_FOLLOWING_COMMA_IN_arguments_4905 )
              if @state.backtracking == 0
                stream_COMMA.add( char_literal320 )
              end
              @state.following.push( TOKENS_FOLLOWING_argument_IN_arguments_4907 )
              argument321 = argument
              @state.following.pop
              if @state.backtracking == 0
                stream_argument.add( argument321.tree )
              end

            else
              break # out of loop for decision 76
            end
          end # loop for decision 76
          # at line 690:41: ( ',' )?
          alt_77 = 2
          look_77_0 = @input.peek( 1 )

          if ( look_77_0 == COMMA )
            alt_77 = 1
          end
          case alt_77
          when 1
            # at line 690:41: ','
            char_literal322 = match( COMMA, TOKENS_FOLLOWING_COMMA_IN_arguments_4913 )
            if @state.backtracking == 0
              stream_COMMA.add( char_literal322 )
            end

          end

        end
        char_literal323 = match( RPAREN, TOKENS_FOLLOWING_RPAREN_IN_arguments_4919 )
        if @state.backtracking == 0
          stream_RPAREN.add( char_literal323 )
        end
        # AST Rewrite
        # elements: argument
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 690:53: -> ^( ARGUMENTS ( argument )* )
          # at line 690:56: ^( ARGUMENTS ( argument )* )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( @adaptor.create_from_type( ARGUMENTS, "ARGUMENTS" ), root_1 )

          # at line 690:69: ( argument )*
          while stream_argument.has_next?
            @adaptor.add_child( root_1, stream_argument.next_tree )

          end

          stream_argument.reset();

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 66 )

      end
      
      return return_value
    end

    ArgumentReturnValue = define_return_scope 

    # 
    # parser rule argument
    # 
    # (in Jejune.g)
    # 693:1: argument : ({...}? => property_definition | expression | a= '&' );
    # 
    def argument
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 67 )
      return_value = ArgumentReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      a = nil
      property_definition324 = nil
      expression325 = nil

      tree_for_a = nil

      begin
        # at line 694:3: ({...}? => property_definition | expression | a= '&' )
        alt_79 = 3
        alt_79 = @dfa79.predict( @input )
        case alt_79
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 694:5: {...}? => property_definition
          unless ( (  property_definition?  ) )
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise FailedPredicate( "argument", " property_definition? " )
          end
          @state.following.push( TOKENS_FOLLOWING_property_definition_IN_argument_4946 )
          property_definition324 = property_definition
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, property_definition324.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 695:5: expression
          @state.following.push( TOKENS_FOLLOWING_expression_IN_argument_4952 )
          expression325 = expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression325.tree )
          end

        when 3
          root_0 = @adaptor.create_flat_list


          # at line 697:5: a= '&'
          a = match( AMP, TOKENS_FOLLOWING_AMP_IN_argument_4965 )
          if @state.backtracking == 0

            tree_for_a = @adaptor.create_with_payload( a )
            @adaptor.add_child( root_0, tree_for_a )

          end
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             t = a; t.type = FUNC_ARG 
            # <-- action
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 67 )

      end
      
      return return_value
    end

    MacroReturnValue = define_return_scope 

    # 
    # parser rule macro
    # 
    # (in Jejune.g)
    # 704:1: macro : 'macro' variable_name ( function_parameters )? block ;
    # 
    def macro
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 68 )
      return_value = MacroReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal326 = nil
      variable_name327 = nil
      function_parameters328 = nil
      block329 = nil

      tree_for_string_literal326 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 705:5: 'macro' variable_name ( function_parameters )? block
        string_literal326 = match( MACRO, TOKENS_FOLLOWING_MACRO_IN_macro_4986 )
        if @state.backtracking == 0

          tree_for_string_literal326 = @adaptor.create_with_payload( string_literal326 )
          root_0 = @adaptor.become_root( tree_for_string_literal326, root_0 )

        end
        @state.following.push( TOKENS_FOLLOWING_variable_name_IN_macro_4989 )
        variable_name327 = variable_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, variable_name327.tree )
        end
        # at line 705:28: ( function_parameters )?
        alt_80 = 2
        alt_80 = @dfa80.predict( @input )
        case alt_80
        when 1
          # at line 705:28: function_parameters
          @state.following.push( TOKENS_FOLLOWING_function_parameters_IN_macro_4991 )
          function_parameters328 = function_parameters
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, function_parameters328.tree )
          end

        end
        @state.following.push( TOKENS_FOLLOWING_block_IN_macro_4994 )
        block329 = block
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, block329.tree )
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 68 )

      end
      
      return return_value
    end

    FunctionReturnValue = define_return_scope 

    # 
    # parser rule function
    # 
    # (in Jejune.g)
    # 708:1: function : ( function_literal -> function_literal ) ( catch_clause ->)* ( finally_clause ->)? ;
    # 
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 69 )
      return_value = FunctionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      function_literal330 = nil
      catch_clause331 = nil
      finally_clause332 = nil

      stream_function_literal = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule function_literal" )
      stream_catch_clause = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule catch_clause" )
      stream_finally_clause = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule finally_clause" )
      begin
        # at line 709:5: ( function_literal -> function_literal ) ( catch_clause ->)* ( finally_clause ->)?
        # at line 709:5: ( function_literal -> function_literal )
        # at line 709:7: function_literal
        @state.following.push( TOKENS_FOLLOWING_function_literal_IN_function_5009 )
        function_literal330 = function_literal
        @state.following.pop
        if @state.backtracking == 0
          stream_function_literal.add( function_literal330.tree )
        end
        # AST Rewrite
        # elements: function_literal
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 709:24: -> function_literal
          @adaptor.add_child( root_0, stream_function_literal.next_tree )



          return_value.tree = root_0

        end
        # at line 710:5: ( catch_clause ->)*
        while true # decision 81
          alt_81 = 2
          look_81_0 = @input.peek( 1 )

          if ( look_81_0 == CATCH )
            alt_81 = 1

          end
          case alt_81
          when 1
            # at line 710:7: catch_clause
            @state.following.push( TOKENS_FOLLOWING_catch_clause_IN_function_5023 )
            catch_clause331 = catch_clause
            @state.following.pop
            if @state.backtracking == 0
              stream_catch_clause.add( catch_clause331.tree )
            end
            # AST Rewrite
            # elements: 
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

              root_0 = @adaptor.create_flat_list
              # 710:24: ->
              @adaptor.add_child( root_0, (  prepend_tree( catch_clause331.tree, return_value.tree )  ) )



              return_value.tree = root_0

            end
          else
            break # out of loop for decision 81
          end
        end # loop for decision 81
        # at line 711:5: ( finally_clause ->)?
        alt_82 = 2
        look_82_0 = @input.peek( 1 )

        if ( look_82_0 == FINALLY )
          alt_82 = 1
        end
        case alt_82
        when 1
          # at line 711:7: finally_clause
          @state.following.push( TOKENS_FOLLOWING_finally_clause_IN_function_5042 )
          finally_clause332 = finally_clause
          @state.following.pop
          if @state.backtracking == 0
            stream_finally_clause.add( finally_clause332.tree )
          end
          # AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 711:24: ->
            @adaptor.add_child( root_0, (  prepend_tree( finally_clause332.tree, return_value.tree )  ) )



            return_value.tree = root_0

          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 69 )

      end
      
      return return_value
    end

    FunctionLiteralReturnValue = define_return_scope 

    # 
    # parser rule function_literal
    # 
    # (in Jejune.g)
    # 714:1: function_literal : ( 'function' ( variable_name )? function_parameters statement_block | '->' ( variable_name )? ( function_parameters )? statement_block );
    # 
    def function_literal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 70 )
      return_value = FunctionLiteralReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal333 = nil
      string_literal337 = nil
      variable_name334 = nil
      function_parameters335 = nil
      statement_block336 = nil
      variable_name338 = nil
      function_parameters339 = nil
      statement_block340 = nil

      tree_for_string_literal333 = nil
      tree_for_string_literal337 = nil

      begin
        # at line 715:3: ( 'function' ( variable_name )? function_parameters statement_block | '->' ( variable_name )? ( function_parameters )? statement_block )
        alt_86 = 2
        look_86_0 = @input.peek( 1 )

        if ( look_86_0 == FUNCTION )
          alt_86 = 1
        elsif ( look_86_0 == ARROW )
          alt_86 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 86, 0 )
        end
        case alt_86
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 715:5: 'function' ( variable_name )? function_parameters statement_block
          string_literal333 = match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_literal_5064 )
          if @state.backtracking == 0

            tree_for_string_literal333 = @adaptor.create_with_payload( string_literal333 )
            root_0 = @adaptor.become_root( tree_for_string_literal333, root_0 )

          end
          # at line 715:17: ( variable_name )?
          alt_83 = 2
          look_83_0 = @input.peek( 1 )

          if ( look_83_0 == GET || look_83_0 == SET || look_83_0 == MACRO || look_83_0 == EACH || look_83_0.between?( DEF, OBJECT_DEF ) || look_83_0 == ID || look_83_0.between?( T__148, T__150 ) )
            alt_83 = 1
          end
          case alt_83
          when 1
            # at line 715:17: variable_name
            @state.following.push( TOKENS_FOLLOWING_variable_name_IN_function_literal_5067 )
            variable_name334 = variable_name
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, variable_name334.tree )
            end

          end
          @state.following.push( TOKENS_FOLLOWING_function_parameters_IN_function_literal_5070 )
          function_parameters335 = function_parameters
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, function_parameters335.tree )
          end
          @state.following.push( TOKENS_FOLLOWING_statement_block_IN_function_literal_5072 )
          statement_block336 = statement_block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, statement_block336.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 716:5: '->' ( variable_name )? ( function_parameters )? statement_block
          string_literal337 = match( ARROW, TOKENS_FOLLOWING_ARROW_IN_function_literal_5078 )
          if @state.backtracking == 0

            tree_for_string_literal337 = @adaptor.create_with_payload( string_literal337 )
            root_0 = @adaptor.become_root( tree_for_string_literal337, root_0 )

          end
          # at line 716:11: ( variable_name )?
          alt_84 = 2
          look_84_0 = @input.peek( 1 )

          if ( look_84_0 == GET || look_84_0 == SET || look_84_0 == MACRO || look_84_0 == EACH || look_84_0.between?( DEF, OBJECT_DEF ) || look_84_0 == ID || look_84_0.between?( T__148, T__150 ) )
            alt_84 = 1
          end
          case alt_84
          when 1
            # at line 716:11: variable_name
            @state.following.push( TOKENS_FOLLOWING_variable_name_IN_function_literal_5081 )
            variable_name338 = variable_name
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, variable_name338.tree )
            end

          end
          # at line 716:26: ( function_parameters )?
          alt_85 = 2
          look_85_0 = @input.peek( 1 )

          if ( look_85_0 == LPAREN )
            alt_85 = 1
          end
          case alt_85
          when 1
            # at line 716:26: function_parameters
            @state.following.push( TOKENS_FOLLOWING_function_parameters_IN_function_literal_5084 )
            function_parameters339 = function_parameters
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, function_parameters339.tree )
            end

          end
          @state.following.push( TOKENS_FOLLOWING_statement_block_IN_function_literal_5087 )
          statement_block340 = statement_block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, statement_block340.tree )
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 70 )

      end
      
      return return_value
    end

    IterationReturnValue = define_return_scope 

    # 
    # parser rule iteration
    # 
    # (in Jejune.g)
    # 724:1: iteration : ( '{' iteration_parameters statement_list '}' -> iteration_parameters ^( BLOCK['{'] statement_list ) | 'do' iteration_parameters statement_list 'end' -> iteration_parameters ^( BLOCK['do'] statement_list ) );
    # 
    def iteration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 71 )
      return_value = IterationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal341 = nil
      char_literal344 = nil
      string_literal345 = nil
      string_literal348 = nil
      iteration_parameters342 = nil
      statement_list343 = nil
      iteration_parameters346 = nil
      statement_list347 = nil

      tree_for_char_literal341 = nil
      tree_for_char_literal344 = nil
      tree_for_string_literal345 = nil
      tree_for_string_literal348 = nil
      stream_DO = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token DO" )
      stream_RBRACE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RBRACE" )
      stream_BL_END = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token BL_END" )
      stream_LBRACE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LBRACE" )
      stream_iteration_parameters = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule iteration_parameters" )
      stream_statement_list = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule statement_list" )
      begin
        # at line 726:3: ( '{' iteration_parameters statement_list '}' -> iteration_parameters ^( BLOCK['{'] statement_list ) | 'do' iteration_parameters statement_list 'end' -> iteration_parameters ^( BLOCK['do'] statement_list ) )
        alt_87 = 2
        look_87_0 = @input.peek( 1 )

        if ( look_87_0 == LBRACE )
          alt_87 = 1
        elsif ( look_87_0 == DO )
          alt_87 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 87, 0 )
        end
        case alt_87
        when 1
          # at line 726:5: '{' iteration_parameters statement_list '}'
          char_literal341 = match( LBRACE, TOKENS_FOLLOWING_LBRACE_IN_iteration_5112 )
          if @state.backtracking == 0
            stream_LBRACE.add( char_literal341 )
          end
          @state.following.push( TOKENS_FOLLOWING_iteration_parameters_IN_iteration_5114 )
          iteration_parameters342 = iteration_parameters
          @state.following.pop
          if @state.backtracking == 0
            stream_iteration_parameters.add( iteration_parameters342.tree )
          end
          @state.following.push( TOKENS_FOLLOWING_statement_list_IN_iteration_5116 )
          statement_list343 = statement_list
          @state.following.pop
          if @state.backtracking == 0
            stream_statement_list.add( statement_list343.tree )
          end
          char_literal344 = match( RBRACE, TOKENS_FOLLOWING_RBRACE_IN_iteration_5118 )
          if @state.backtracking == 0
            stream_RBRACE.add( char_literal344 )
          end
          # AST Rewrite
          # elements: iteration_parameters, statement_list
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 727:5: -> iteration_parameters ^( BLOCK['{'] statement_list )
            @adaptor.add_child( root_0, stream_iteration_parameters.next_tree )
            # at line 727:29: ^( BLOCK['{'] statement_list )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create( BLOCK, '{' ), root_1 )

            @adaptor.add_child( root_1, stream_statement_list.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 2
          # at line 728:5: 'do' iteration_parameters statement_list 'end'
          string_literal345 = match( DO, TOKENS_FOLLOWING_DO_IN_iteration_5142 )
          if @state.backtracking == 0
            stream_DO.add( string_literal345 )
          end
          @state.following.push( TOKENS_FOLLOWING_iteration_parameters_IN_iteration_5144 )
          iteration_parameters346 = iteration_parameters
          @state.following.pop
          if @state.backtracking == 0
            stream_iteration_parameters.add( iteration_parameters346.tree )
          end
          @state.following.push( TOKENS_FOLLOWING_statement_list_IN_iteration_5146 )
          statement_list347 = statement_list
          @state.following.pop
          if @state.backtracking == 0
            stream_statement_list.add( statement_list347.tree )
          end
          string_literal348 = match( BL_END, TOKENS_FOLLOWING_BL_END_IN_iteration_5148 )
          if @state.backtracking == 0
            stream_BL_END.add( string_literal348 )
          end
          # AST Rewrite
          # elements: iteration_parameters, statement_list
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 729:5: -> iteration_parameters ^( BLOCK['do'] statement_list )
            @adaptor.add_child( root_0, stream_iteration_parameters.next_tree )
            # at line 729:29: ^( BLOCK['do'] statement_list )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create( BLOCK, 'do' ), root_1 )

            @adaptor.add_child( root_1, stream_statement_list.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end# syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           @adaptor.set_token_boundaries( return_value.tree.last, return_value.start, return_value.stop ) 
          # <-- action
        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 71 )

      end
      
      return return_value
    end

    FunctionParametersReturnValue = define_return_scope 

    # 
    # parser rule function_parameters
    # 
    # (in Jejune.g)
    # 732:1: function_parameters : '(' ( parameters )? ')' -> ^( PARAMS ( parameters )? ) ;
    # 
    def function_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 72 )
      return_value = FunctionParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal349 = nil
      char_literal351 = nil
      parameters350 = nil

      tree_for_char_literal349 = nil
      tree_for_char_literal351 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RPAREN" )
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LPAREN" )
      stream_parameters = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule parameters" )
      begin
        # at line 733:5: '(' ( parameters )? ')'
        char_literal349 = match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_function_parameters_5178 )
        if @state.backtracking == 0
          stream_LPAREN.add( char_literal349 )
        end
        # at line 733:9: ( parameters )?
        alt_88 = 2
        look_88_0 = @input.peek( 1 )

        if ( look_88_0 == GET || look_88_0 == SET || look_88_0 == STAR || look_88_0 == MACRO || look_88_0 == EACH || look_88_0.between?( DEF, OBJECT_DEF ) || look_88_0 == ID || look_88_0.between?( T__148, T__150 ) )
          alt_88 = 1
        end
        case alt_88
        when 1
          # at line 733:9: parameters
          @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_parameters_5180 )
          parameters350 = parameters
          @state.following.pop
          if @state.backtracking == 0
            stream_parameters.add( parameters350.tree )
          end

        end
        char_literal351 = match( RPAREN, TOKENS_FOLLOWING_RPAREN_IN_function_parameters_5183 )
        if @state.backtracking == 0
          stream_RPAREN.add( char_literal351 )
        end
        # AST Rewrite
        # elements: parameters
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 733:25: -> ^( PARAMS ( parameters )? )
          # at line 733:28: ^( PARAMS ( parameters )? )
          root_1 = @adaptor.create_flat_list
          root_1 = @adaptor.become_root( @adaptor.create_from_type( PARAMS, "PARAMS" ), root_1 )

          # at line 733:38: ( parameters )?
          if stream_parameters.has_next?
            @adaptor.add_child( root_1, stream_parameters.next_tree )

          end

          stream_parameters.reset();

          @adaptor.add_child( root_0, root_1 )



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 72 )

      end
      
      return return_value
    end

    IterationParametersReturnValue = define_return_scope 

    # 
    # parser rule iteration_parameters
    # 
    # (in Jejune.g)
    # 736:1: iteration_parameters : ( '|' ( parameters )? '|' -> ^( PARAMS ( parameters )? ) | -> ^( PARAMS ) );
    # 
    def iteration_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 73 )
      return_value = IterationParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal352 = nil
      char_literal354 = nil
      parameters353 = nil

      tree_for_char_literal352 = nil
      tree_for_char_literal354 = nil
      stream_PIPE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token PIPE" )
      stream_parameters = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule parameters" )
      begin
        # at line 737:3: ( '|' ( parameters )? '|' -> ^( PARAMS ( parameters )? ) | -> ^( PARAMS ) )
        alt_90 = 2
        look_90_0 = @input.peek( 1 )

        if ( look_90_0 == PIPE )
          alt_90 = 1
        elsif ( look_90_0 == GENERAL || look_90_0 == GET || look_90_0 == ARROW || look_90_0 == IF || look_90_0 == REGEX || look_90_0 == INCR || look_90_0 == BREAK || look_90_0 == RETURN || look_90_0 == IS_DEFINED || look_90_0 == LBRACE || look_90_0 == LBRACK || look_90_0.between?( SEMI, CONST ) || look_90_0.between?( SET, LET ) || look_90_0 == DDOC || look_90_0.between?( DECR, LPAREN ) || look_90_0 == DELETE || look_90_0.between?( DGENERAL, DO ) || look_90_0 == THROW || look_90_0 == TILDE || look_90_0 == TRUE || look_90_0 == TRY || look_90_0.between?( TYPEOF, NEW ) || look_90_0.between?( EACH, UNDEFINED ) || look_90_0.between?( NULL, UNLESS ) || look_90_0 == UNTIL || look_90_0 == FALSE || look_90_0 == VAR || look_90_0.between?( VOID, FOR ) || look_90_0 == WHILE || look_90_0.between?( WITH, YIELD ) || look_90_0.between?( IS_UNDEFINED, DOC ) || look_90_0.between?( T__148, T__150 ) )
          alt_90 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 90, 0 )
        end
        case alt_90
        when 1
          # at line 737:5: '|' ( parameters )? '|'
          char_literal352 = match( PIPE, TOKENS_FOLLOWING_PIPE_IN_iteration_parameters_5207 )
          if @state.backtracking == 0
            stream_PIPE.add( char_literal352 )
          end
          # at line 737:9: ( parameters )?
          alt_89 = 2
          look_89_0 = @input.peek( 1 )

          if ( look_89_0 == GET || look_89_0 == SET || look_89_0 == STAR || look_89_0 == MACRO || look_89_0 == EACH || look_89_0.between?( DEF, OBJECT_DEF ) || look_89_0 == ID || look_89_0.between?( T__148, T__150 ) )
            alt_89 = 1
          end
          case alt_89
          when 1
            # at line 737:9: parameters
            @state.following.push( TOKENS_FOLLOWING_parameters_IN_iteration_parameters_5209 )
            parameters353 = parameters
            @state.following.pop
            if @state.backtracking == 0
              stream_parameters.add( parameters353.tree )
            end

          end
          char_literal354 = match( PIPE, TOKENS_FOLLOWING_PIPE_IN_iteration_parameters_5212 )
          if @state.backtracking == 0
            stream_PIPE.add( char_literal354 )
          end
          # AST Rewrite
          # elements: parameters
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 737:25: -> ^( PARAMS ( parameters )? )
            # at line 737:28: ^( PARAMS ( parameters )? )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create_from_type( PARAMS, "PARAMS" ), root_1 )

            # at line 737:38: ( parameters )?
            if stream_parameters.has_next?
              @adaptor.add_child( root_1, stream_parameters.next_tree )

            end

            stream_parameters.reset();

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 2
          # at line 738:5: 
          # AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 738:5: -> ^( PARAMS )
            # at line 738:8: ^( PARAMS )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create_from_type( PARAMS, "PARAMS" ), root_1 )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 73 )

      end
      
      return return_value
    end

    ParametersReturnValue = define_return_scope 

    # 
    # parser rule parameters
    # 
    # (in Jejune.g)
    # 741:1: parameters : parameter ( ',' parameter )* -> ( parameter )+ ;
    # 
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 74 )
      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal356 = nil
      parameter355 = nil
      parameter357 = nil

      tree_for_char_literal356 = nil
      stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token COMMA" )
      stream_parameter = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule parameter" )
      begin
        # at line 742:5: parameter ( ',' parameter )*
        @state.following.push( TOKENS_FOLLOWING_parameter_IN_parameters_5248 )
        parameter355 = parameter
        @state.following.pop
        if @state.backtracking == 0
          stream_parameter.add( parameter355.tree )
        end
        # at line 742:15: ( ',' parameter )*
        while true # decision 91
          alt_91 = 2
          look_91_0 = @input.peek( 1 )

          if ( look_91_0 == COMMA )
            alt_91 = 1

          end
          case alt_91
          when 1
            # at line 742:18: ',' parameter
            char_literal356 = match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_5253 )
            if @state.backtracking == 0
              stream_COMMA.add( char_literal356 )
            end
            @state.following.push( TOKENS_FOLLOWING_parameter_IN_parameters_5256 )
            parameter357 = parameter
            @state.following.pop
            if @state.backtracking == 0
              stream_parameter.add( parameter357.tree )
            end

          else
            break # out of loop for decision 91
          end
        end # loop for decision 91
        # AST Rewrite
        # elements: parameter
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

          root_0 = @adaptor.create_flat_list
          # 742:36: -> ( parameter )+
          # at line 742:39: ( parameter )+
          stream_parameter.has_next? or raise ANTLR3::RewriteEarlyExit

          while stream_parameter.has_next?
            @adaptor.add_child( root_0, stream_parameter.next_tree )

          end
          stream_parameter.reset



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 74 )

      end
      
      return return_value
    end

    ParameterReturnValue = define_return_scope 

    # 
    # parser rule parameter
    # 
    # (in Jejune.g)
    # 745:1: parameter : ( '*' variable_name -> ^( SPLAT['*'] variable_name ) | variable_name ( '=' expression -> ^( '=' variable_name expression ) | -> variable_name ) );
    # 
    def parameter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 75 )
      return_value = ParameterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal358 = nil
      char_literal361 = nil
      variable_name359 = nil
      variable_name360 = nil
      expression362 = nil

      tree_for_char_literal358 = nil
      tree_for_char_literal361 = nil
      stream_STAR = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token STAR" )
      stream_ASGN = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token ASGN" )
      stream_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule expression" )
      stream_variable_name = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule variable_name" )
      begin
        # at line 746:3: ( '*' variable_name -> ^( SPLAT['*'] variable_name ) | variable_name ( '=' expression -> ^( '=' variable_name expression ) | -> variable_name ) )
        alt_93 = 2
        look_93_0 = @input.peek( 1 )

        if ( look_93_0 == STAR )
          alt_93 = 1
        elsif ( look_93_0 == GET || look_93_0 == SET || look_93_0 == MACRO || look_93_0 == EACH || look_93_0.between?( DEF, OBJECT_DEF ) || look_93_0 == ID || look_93_0.between?( T__148, T__150 ) )
          alt_93 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 93, 0 )
        end
        case alt_93
        when 1
          # at line 746:5: '*' variable_name
          char_literal358 = match( STAR, TOKENS_FOLLOWING_STAR_IN_parameter_5277 )
          if @state.backtracking == 0
            stream_STAR.add( char_literal358 )
          end
          @state.following.push( TOKENS_FOLLOWING_variable_name_IN_parameter_5279 )
          variable_name359 = variable_name
          @state.following.pop
          if @state.backtracking == 0
            stream_variable_name.add( variable_name359.tree )
          end
          # AST Rewrite
          # elements: variable_name
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 746:24: -> ^( SPLAT['*'] variable_name )
            # at line 746:27: ^( SPLAT['*'] variable_name )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create( SPLAT, '*' ), root_1 )

            @adaptor.add_child( root_1, stream_variable_name.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 2
          # at line 747:5: variable_name ( '=' expression -> ^( '=' variable_name expression ) | -> variable_name )
          @state.following.push( TOKENS_FOLLOWING_variable_name_IN_parameter_5297 )
          variable_name360 = variable_name
          @state.following.pop
          if @state.backtracking == 0
            stream_variable_name.add( variable_name360.tree )
          end
          # at line 748:5: ( '=' expression -> ^( '=' variable_name expression ) | -> variable_name )
          alt_92 = 2
          look_92_0 = @input.peek( 1 )

          if ( look_92_0 == ASGN )
            alt_92 = 1
          elsif ( look_92_0 == RPAREN || look_92_0 == COMMA || look_92_0 == PIPE )
            alt_92 = 2
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 92, 0 )
          end
          case alt_92
          when 1
            # at line 748:7: '=' expression
            char_literal361 = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_parameter_5305 )
            if @state.backtracking == 0
              stream_ASGN.add( char_literal361 )
            end
            @state.following.push( TOKENS_FOLLOWING_expression_IN_parameter_5307 )
            expression362 = expression
            @state.following.pop
            if @state.backtracking == 0
              stream_expression.add( expression362.tree )
            end
            # AST Rewrite
            # elements: ASGN, expression, variable_name
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

              root_0 = @adaptor.create_flat_list
              # 748:22: -> ^( '=' variable_name expression )
              # at line 748:25: ^( '=' variable_name expression )
              root_1 = @adaptor.create_flat_list
              root_1 = @adaptor.become_root( stream_ASGN.next_node, root_1 )

              @adaptor.add_child( root_1, stream_variable_name.next_tree )
              @adaptor.add_child( root_1, stream_expression.next_tree )

              @adaptor.add_child( root_0, root_1 )



              return_value.tree = root_0

            end
          when 2
            # at line 749:22: 
            # AST Rewrite
            # elements: variable_name
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

              root_0 = @adaptor.create_flat_list
              # 749:22: -> variable_name
              @adaptor.add_child( root_0, stream_variable_name.next_tree )



              return_value.tree = root_0

            end
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 75 )

      end
      
      return return_value
    end

    PrimaryReturnValue = define_return_scope 

    # 
    # parser rule primary
    # 
    # (in Jejune.g)
    # 757:1: primary : ( 'this' | IVAR | variable_name | 'null' | 'true' | 'false' | 'undefined' | NUMBER | STRING | DSTRING | DOC | DDOC | REGEX | GENERAL | DGENERAL | macro_expansion | array_literal | object_literal | '(' expression_list ')' );
    # 
    def primary
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 76 )
      return_value = PrimaryReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal363 = nil
      __IVAR364__ = nil
      string_literal366 = nil
      string_literal367 = nil
      string_literal368 = nil
      string_literal369 = nil
      __NUMBER370__ = nil
      __STRING371__ = nil
      __DSTRING372__ = nil
      __DOC373__ = nil
      __DDOC374__ = nil
      __REGEX375__ = nil
      __GENERAL376__ = nil
      __DGENERAL377__ = nil
      char_literal381 = nil
      char_literal383 = nil
      variable_name365 = nil
      macro_expansion378 = nil
      array_literal379 = nil
      object_literal380 = nil
      expression_list382 = nil

      tree_for_string_literal363 = nil
      tree_for_IVAR364 = nil
      tree_for_string_literal366 = nil
      tree_for_string_literal367 = nil
      tree_for_string_literal368 = nil
      tree_for_string_literal369 = nil
      tree_for_NUMBER370 = nil
      tree_for_STRING371 = nil
      tree_for_DSTRING372 = nil
      tree_for_DOC373 = nil
      tree_for_DDOC374 = nil
      tree_for_REGEX375 = nil
      tree_for_GENERAL376 = nil
      tree_for_DGENERAL377 = nil
      tree_for_char_literal381 = nil
      tree_for_char_literal383 = nil

      begin
        # at line 758:3: ( 'this' | IVAR | variable_name | 'null' | 'true' | 'false' | 'undefined' | NUMBER | STRING | DSTRING | DOC | DDOC | REGEX | GENERAL | DGENERAL | macro_expansion | array_literal | object_literal | '(' expression_list ')' )
        alt_94 = 19
        case look_94 = @input.peek( 1 )
        when THIS then alt_94 = 1
        when IVAR then alt_94 = 2
        when GET, SET, MACRO, EACH, DEF, CLASS_DEF, OBJECT_DEF, ID, T__148, T__149, T__150 then alt_94 = 3
        when NULL then alt_94 = 4
        when TRUE then alt_94 = 5
        when FALSE then alt_94 = 6
        when UNDEFINED then alt_94 = 7
        when NUMBER then alt_94 = 8
        when STRING then alt_94 = 9
        when DSTRING then alt_94 = 10
        when DOC then alt_94 = 11
        when DDOC then alt_94 = 12
        when REGEX then alt_94 = 13
        when GENERAL then alt_94 = 14
        when DGENERAL then alt_94 = 15
        when POUND then alt_94 = 16
        when LBRACK then alt_94 = 17
        when LBRACE then alt_94 = 18
        when LPAREN then alt_94 = 19
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 94, 0 )
        end
        case alt_94
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 758:5: 'this'
          string_literal363 = match( THIS, TOKENS_FOLLOWING_THIS_IN_primary_5367 )
          if @state.backtracking == 0

            tree_for_string_literal363 = @adaptor.create_with_payload( string_literal363 )
            root_0 = @adaptor.become_root( tree_for_string_literal363, root_0 )

          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 759:5: IVAR
          __IVAR364__ = match( IVAR, TOKENS_FOLLOWING_IVAR_IN_primary_5374 )
          if @state.backtracking == 0

            tree_for_IVAR364 = @adaptor.create_with_payload( __IVAR364__ )
            root_0 = @adaptor.become_root( tree_for_IVAR364, root_0 )

          end

        when 3
          root_0 = @adaptor.create_flat_list


          # at line 760:5: variable_name
          @state.following.push( TOKENS_FOLLOWING_variable_name_IN_primary_5381 )
          variable_name365 = variable_name
          @state.following.pop
          if @state.backtracking == 0
            root_0 = @adaptor.become_root( variable_name365.tree, root_0 )
          end

        when 4
          root_0 = @adaptor.create_flat_list


          # at line 761:5: 'null'
          string_literal366 = match( NULL, TOKENS_FOLLOWING_NULL_IN_primary_5388 )
          if @state.backtracking == 0

            tree_for_string_literal366 = @adaptor.create_with_payload( string_literal366 )
            root_0 = @adaptor.become_root( tree_for_string_literal366, root_0 )

          end

        when 5
          root_0 = @adaptor.create_flat_list


          # at line 762:5: 'true'
          string_literal367 = match( TRUE, TOKENS_FOLLOWING_TRUE_IN_primary_5395 )
          if @state.backtracking == 0

            tree_for_string_literal367 = @adaptor.create_with_payload( string_literal367 )
            root_0 = @adaptor.become_root( tree_for_string_literal367, root_0 )

          end

        when 6
          root_0 = @adaptor.create_flat_list


          # at line 763:5: 'false'
          string_literal368 = match( FALSE, TOKENS_FOLLOWING_FALSE_IN_primary_5402 )
          if @state.backtracking == 0

            tree_for_string_literal368 = @adaptor.create_with_payload( string_literal368 )
            root_0 = @adaptor.become_root( tree_for_string_literal368, root_0 )

          end

        when 7
          root_0 = @adaptor.create_flat_list


          # at line 764:5: 'undefined'
          string_literal369 = match( UNDEFINED, TOKENS_FOLLOWING_UNDEFINED_IN_primary_5409 )
          if @state.backtracking == 0

            tree_for_string_literal369 = @adaptor.create_with_payload( string_literal369 )
            root_0 = @adaptor.become_root( tree_for_string_literal369, root_0 )

          end

        when 8
          root_0 = @adaptor.create_flat_list


          # at line 765:5: NUMBER
          __NUMBER370__ = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_primary_5416 )
          if @state.backtracking == 0

            tree_for_NUMBER370 = @adaptor.create_with_payload( __NUMBER370__ )
            root_0 = @adaptor.become_root( tree_for_NUMBER370, root_0 )

          end

        when 9
          root_0 = @adaptor.create_flat_list


          # at line 766:5: STRING
          __STRING371__ = match( STRING, TOKENS_FOLLOWING_STRING_IN_primary_5423 )
          if @state.backtracking == 0

            tree_for_STRING371 = @adaptor.create_with_payload( __STRING371__ )
            root_0 = @adaptor.become_root( tree_for_STRING371, root_0 )

          end

        when 10
          root_0 = @adaptor.create_flat_list


          # at line 767:5: DSTRING
          __DSTRING372__ = match( DSTRING, TOKENS_FOLLOWING_DSTRING_IN_primary_5430 )
          if @state.backtracking == 0

            tree_for_DSTRING372 = @adaptor.create_with_payload( __DSTRING372__ )
            root_0 = @adaptor.become_root( tree_for_DSTRING372, root_0 )

          end

        when 11
          root_0 = @adaptor.create_flat_list


          # at line 768:5: DOC
          __DOC373__ = match( DOC, TOKENS_FOLLOWING_DOC_IN_primary_5437 )
          if @state.backtracking == 0

            tree_for_DOC373 = @adaptor.create_with_payload( __DOC373__ )
            root_0 = @adaptor.become_root( tree_for_DOC373, root_0 )

          end

        when 12
          root_0 = @adaptor.create_flat_list


          # at line 769:5: DDOC
          __DDOC374__ = match( DDOC, TOKENS_FOLLOWING_DDOC_IN_primary_5444 )
          if @state.backtracking == 0

            tree_for_DDOC374 = @adaptor.create_with_payload( __DDOC374__ )
            root_0 = @adaptor.become_root( tree_for_DDOC374, root_0 )

          end

        when 13
          root_0 = @adaptor.create_flat_list


          # at line 770:5: REGEX
          __REGEX375__ = match( REGEX, TOKENS_FOLLOWING_REGEX_IN_primary_5451 )
          if @state.backtracking == 0

            tree_for_REGEX375 = @adaptor.create_with_payload( __REGEX375__ )
            root_0 = @adaptor.become_root( tree_for_REGEX375, root_0 )

          end

        when 14
          root_0 = @adaptor.create_flat_list


          # at line 771:5: GENERAL
          __GENERAL376__ = match( GENERAL, TOKENS_FOLLOWING_GENERAL_IN_primary_5458 )
          if @state.backtracking == 0

            tree_for_GENERAL376 = @adaptor.create_with_payload( __GENERAL376__ )
            root_0 = @adaptor.become_root( tree_for_GENERAL376, root_0 )

          end

        when 15
          root_0 = @adaptor.create_flat_list


          # at line 772:5: DGENERAL
          __DGENERAL377__ = match( DGENERAL, TOKENS_FOLLOWING_DGENERAL_IN_primary_5465 )
          if @state.backtracking == 0

            tree_for_DGENERAL377 = @adaptor.create_with_payload( __DGENERAL377__ )
            root_0 = @adaptor.become_root( tree_for_DGENERAL377, root_0 )

          end

        when 16
          root_0 = @adaptor.create_flat_list


          # at line 773:5: macro_expansion
          @state.following.push( TOKENS_FOLLOWING_macro_expansion_IN_primary_5472 )
          macro_expansion378 = macro_expansion
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, macro_expansion378.tree )
          end

        when 17
          root_0 = @adaptor.create_flat_list


          # at line 774:5: array_literal
          @state.following.push( TOKENS_FOLLOWING_array_literal_IN_primary_5478 )
          array_literal379 = array_literal
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, array_literal379.tree )
          end

        when 18
          root_0 = @adaptor.create_flat_list


          # at line 775:5: object_literal
          @state.following.push( TOKENS_FOLLOWING_object_literal_IN_primary_5484 )
          object_literal380 = object_literal
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, object_literal380.tree )
          end

        when 19
          root_0 = @adaptor.create_flat_list


          # at line 776:5: '(' expression_list ')'
          char_literal381 = match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_primary_5490 )
          @state.following.push( TOKENS_FOLLOWING_expression_list_IN_primary_5494 )
          expression_list382 = expression_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, expression_list382.tree )
          end
          char_literal383 = match( RPAREN, TOKENS_FOLLOWING_RPAREN_IN_primary_5497 )

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 76 )

      end
      
      return return_value
    end

    MacroExpansionReturnValue = define_return_scope 

    # 
    # parser rule macro_expansion
    # 
    # (in Jejune.g)
    # 779:1: macro_expansion : '#' ID arguments ;
    # 
    def macro_expansion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 77 )
      return_value = MacroExpansionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal384 = nil
      __ID385__ = nil
      arguments386 = nil

      tree_for_char_literal384 = nil
      tree_for_ID385 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 780:5: '#' ID arguments
        char_literal384 = match( POUND, TOKENS_FOLLOWING_POUND_IN_macro_expansion_5511 )
        if @state.backtracking == 0

          tree_for_char_literal384 = @adaptor.create_with_payload( char_literal384 )
          root_0 = @adaptor.become_root( tree_for_char_literal384, root_0 )

        end
        __ID385__ = match( ID, TOKENS_FOLLOWING_ID_IN_macro_expansion_5514 )
        if @state.backtracking == 0

          tree_for_ID385 = @adaptor.create_with_payload( __ID385__ )
          @adaptor.add_child( root_0, tree_for_ID385 )

        end
        @state.following.push( TOKENS_FOLLOWING_arguments_IN_macro_expansion_5516 )
        arguments386 = arguments
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, arguments386.tree )
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 77 )

      end
      
      return return_value
    end

    ArrayLiteralReturnValue = define_return_scope 

    # 
    # parser rule array_literal
    # 
    # (in Jejune.g)
    # 783:1: array_literal : ( '[' ']' -> ^( ARRAY ) | '[' list_item ( ',' list_item )* ']' -> ^( ARRAY ( list_item )* ) );
    # 
    def array_literal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 78 )
      return_value = ArrayLiteralReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal387 = nil
      char_literal388 = nil
      char_literal389 = nil
      char_literal391 = nil
      char_literal393 = nil
      list_item390 = nil
      list_item392 = nil

      tree_for_char_literal387 = nil
      tree_for_char_literal388 = nil
      tree_for_char_literal389 = nil
      tree_for_char_literal391 = nil
      tree_for_char_literal393 = nil
      stream_RBRACK = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RBRACK" )
      stream_LBRACK = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LBRACK" )
      stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token COMMA" )
      stream_list_item = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule list_item" )
      begin
        # at line 784:3: ( '[' ']' -> ^( ARRAY ) | '[' list_item ( ',' list_item )* ']' -> ^( ARRAY ( list_item )* ) )
        alt_96 = 2
        look_96_0 = @input.peek( 1 )

        if ( look_96_0 == LBRACK )
          look_96_1 = @input.peek( 2 )

          if ( look_96_1 == RBRACK )
            alt_96 = 1
          elsif ( look_96_1 == GENERAL || look_96_1 == GET || look_96_1 == ARROW || look_96_1 == IF || look_96_1.between?( IN, REGEX ) || look_96_1 == INCR || look_96_1.between?( BREAK, RETURN ) || look_96_1 == IS_DEFINED || look_96_1 == CASE || look_96_1 == CATCH || look_96_1 == LBRACE || look_96_1.between?( COMMA, LBRACK ) || look_96_1.between?( SET, LET ) || look_96_1 == DDOC || look_96_1.between?( DECR, LPAREN ) || look_96_1 == DEFAULT || look_96_1 == DELETE || look_96_1.between?( DGENERAL, SWITCH ) || look_96_1.between?( MINUS, DO ) || look_96_1 == THROW || look_96_1 == TILDE || look_96_1 == TRUE || look_96_1 == TRY || look_96_1.between?( TYPEOF, NEW ) || look_96_1.between?( EACH, UNLESS ) || look_96_1 == UNTIL || look_96_1 == FALSE || look_96_1.between?( VAR, FINALLY ) || look_96_1.between?( VOID, FOR ) || look_96_1 == WHILE || look_96_1.between?( WITH, YIELD ) || look_96_1.between?( IS_UNDEFINED, DOC ) || look_96_1.between?( T__148, T__150 ) )
            alt_96 = 2
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 96, 1 )
          end
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 96, 0 )
        end
        case alt_96
        when 1
          # at line 784:5: '[' ']'
          char_literal387 = match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_literal_5529 )
          if @state.backtracking == 0
            stream_LBRACK.add( char_literal387 )
          end
          char_literal388 = match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_array_literal_5531 )
          if @state.backtracking == 0
            stream_RBRACK.add( char_literal388 )
          end
          # AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 784:13: -> ^( ARRAY )
            # at line 784:16: ^( ARRAY )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create_from_type( ARRAY, "ARRAY" ), root_1 )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 2
          # at line 785:5: '[' list_item ( ',' list_item )* ']'
          char_literal389 = match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_literal_5545 )
          if @state.backtracking == 0
            stream_LBRACK.add( char_literal389 )
          end
          @state.following.push( TOKENS_FOLLOWING_list_item_IN_array_literal_5547 )
          list_item390 = list_item
          @state.following.pop
          if @state.backtracking == 0
            stream_list_item.add( list_item390.tree )
          end
          # at line 785:19: ( ',' list_item )*
          while true # decision 95
            alt_95 = 2
            look_95_0 = @input.peek( 1 )

            if ( look_95_0 == COMMA )
              alt_95 = 1

            end
            case alt_95
            when 1
              # at line 785:21: ',' list_item
              char_literal391 = match( COMMA, TOKENS_FOLLOWING_COMMA_IN_array_literal_5551 )
              if @state.backtracking == 0
                stream_COMMA.add( char_literal391 )
              end
              @state.following.push( TOKENS_FOLLOWING_list_item_IN_array_literal_5553 )
              list_item392 = list_item
              @state.following.pop
              if @state.backtracking == 0
                stream_list_item.add( list_item392.tree )
              end

            else
              break # out of loop for decision 95
            end
          end # loop for decision 95
          char_literal393 = match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_array_literal_5558 )
          if @state.backtracking == 0
            stream_RBRACK.add( char_literal393 )
          end
          # AST Rewrite
          # elements: list_item
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 785:42: -> ^( ARRAY ( list_item )* )
            # at line 785:45: ^( ARRAY ( list_item )* )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create_from_type( ARRAY, "ARRAY" ), root_1 )

            # at line 785:54: ( list_item )*
            while stream_list_item.has_next?
              @adaptor.add_child( root_1, stream_list_item.next_tree )

            end

            stream_list_item.reset();

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 78 )

      end
      
      return return_value
    end

    ListItemReturnValue = define_return_scope 

    # 
    # parser rule list_item
    # 
    # (in Jejune.g)
    # 788:1: list_item : ({...}? => property_name ':' expression -> ^( ':' property_name expression ) | ( ',' )=> -> ^( UNDEFINED ) | expression -> expression );
    # 
    def list_item
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 79 )
      return_value = ListItemReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal395 = nil
      property_name394 = nil
      expression396 = nil
      expression397 = nil

      tree_for_char_literal395 = nil
      stream_COLON = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token COLON" )
      stream_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule expression" )
      stream_property_name = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule property_name" )
      begin
        # at line 789:3: ({...}? => property_name ':' expression -> ^( ':' property_name expression ) | ( ',' )=> -> ^( UNDEFINED ) | expression -> expression )
        alt_97 = 3
        alt_97 = @dfa97.predict( @input )
        case alt_97
        when 1
          # at line 789:5: {...}? => property_name ':' expression
          unless ( (  @input.peek( 2 ) == COLON  ) )
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise FailedPredicate( "list_item", " @input.peek( 2 ) == COLON " )
          end
          @state.following.push( TOKENS_FOLLOWING_property_name_IN_list_item_5587 )
          property_name394 = property_name
          @state.following.pop
          if @state.backtracking == 0
            stream_property_name.add( property_name394.tree )
          end
          char_literal395 = match( COLON, TOKENS_FOLLOWING_COLON_IN_list_item_5589 )
          if @state.backtracking == 0
            stream_COLON.add( char_literal395 )
          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_list_item_5591 )
          expression396 = expression
          @state.following.pop
          if @state.backtracking == 0
            stream_expression.add( expression396.tree )
          end
          # AST Rewrite
          # elements: expression, property_name, COLON
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 789:67: -> ^( ':' property_name expression )
            # at line 789:70: ^( ':' property_name expression )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( stream_COLON.next_node, root_1 )

            @adaptor.add_child( root_1, stream_property_name.next_tree )
            @adaptor.add_child( root_1, stream_expression.next_tree )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 2
          # at line 790:5: ( ',' )=>
          # AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 790:15: -> ^( UNDEFINED )
            # at line 790:18: ^( UNDEFINED )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create_from_type( UNDEFINED, "UNDEFINED" ), root_1 )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 3
          # at line 791:5: expression
          @state.following.push( TOKENS_FOLLOWING_expression_IN_list_item_5628 )
          expression397 = expression
          @state.following.pop
          if @state.backtracking == 0
            stream_expression.add( expression397.tree )
          end
          # AST Rewrite
          # elements: expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 791:16: -> expression
            @adaptor.add_child( root_0, stream_expression.next_tree )



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 79 )

      end
      
      return return_value
    end

    ObjectLiteralReturnValue = define_return_scope 

    # 
    # parser rule object_literal
    # 
    # (in Jejune.g)
    # 794:1: object_literal : ( '{' '}' -> ^( OBJECT ) | '{' property_definition ( ',' property_definition )* '}' -> ^( OBJECT ( property_definition )+ ) );
    # 
    def object_literal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 80 )
      return_value = ObjectLiteralReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal398 = nil
      char_literal399 = nil
      char_literal400 = nil
      char_literal402 = nil
      char_literal404 = nil
      property_definition401 = nil
      property_definition403 = nil

      tree_for_char_literal398 = nil
      tree_for_char_literal399 = nil
      tree_for_char_literal400 = nil
      tree_for_char_literal402 = nil
      tree_for_char_literal404 = nil
      stream_RBRACE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token RBRACE" )
      stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token COMMA" )
      stream_LBRACE = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token LBRACE" )
      stream_property_definition = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule property_definition" )
      begin
        # at line 795:3: ( '{' '}' -> ^( OBJECT ) | '{' property_definition ( ',' property_definition )* '}' -> ^( OBJECT ( property_definition )+ ) )
        alt_99 = 2
        look_99_0 = @input.peek( 1 )

        if ( look_99_0 == LBRACE )
          look_99_1 = @input.peek( 2 )

          if ( look_99_1 == RBRACE )
            alt_99 = 1
          elsif ( look_99_1 == GET || look_99_1 == IF || look_99_1 == IN || look_99_1.between?( BREAK, RETURN ) || look_99_1 == CASE || look_99_1 == CATCH || look_99_1.between?( SET, LET ) || look_99_1 == DEFAULT || look_99_1 == DELETE || look_99_1 == SWITCH || look_99_1.between?( THIS, DO ) || look_99_1 == THROW || look_99_1 == TRUE || look_99_1 == TRY || look_99_1 == TYPEOF || look_99_1 == NEW || look_99_1 == EACH || look_99_1.between?( UNDEFINED, UNLESS ) || look_99_1 == UNTIL || look_99_1 == FALSE || look_99_1.between?( VAR, FINALLY ) || look_99_1.between?( VOID, FOR ) || look_99_1 == WHILE || look_99_1.between?( WITH, FUNCTION ) || look_99_1 == YIELD || look_99_1.between?( DEF, OBJECT_DEF ) || look_99_1.between?( ID, NUMBER ) || look_99_1.between?( T__148, T__150 ) )
            alt_99 = 2
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 99, 1 )
          end
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 99, 0 )
        end
        case alt_99
        when 1
          # at line 795:5: '{' '}'
          char_literal398 = match( LBRACE, TOKENS_FOLLOWING_LBRACE_IN_object_literal_5647 )
          if @state.backtracking == 0
            stream_LBRACE.add( char_literal398 )
          end
          char_literal399 = match( RBRACE, TOKENS_FOLLOWING_RBRACE_IN_object_literal_5650 )
          if @state.backtracking == 0
            stream_RBRACE.add( char_literal399 )
          end
          # AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 795:14: -> ^( OBJECT )
            # at line 795:17: ^( OBJECT )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create_from_type( OBJECT, "OBJECT" ), root_1 )

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        when 2
          # at line 796:5: '{' property_definition ( ',' property_definition )* '}'
          char_literal400 = match( LBRACE, TOKENS_FOLLOWING_LBRACE_IN_object_literal_5664 )
          if @state.backtracking == 0
            stream_LBRACE.add( char_literal400 )
          end
          @state.following.push( TOKENS_FOLLOWING_property_definition_IN_object_literal_5667 )
          property_definition401 = property_definition
          @state.following.pop
          if @state.backtracking == 0
            stream_property_definition.add( property_definition401.tree )
          end
          # at line 796:30: ( ',' property_definition )*
          while true # decision 98
            alt_98 = 2
            look_98_0 = @input.peek( 1 )

            if ( look_98_0 == COMMA )
              alt_98 = 1

            end
            case alt_98
            when 1
              # at line 796:33: ',' property_definition
              char_literal402 = match( COMMA, TOKENS_FOLLOWING_COMMA_IN_object_literal_5672 )
              if @state.backtracking == 0
                stream_COMMA.add( char_literal402 )
              end
              @state.following.push( TOKENS_FOLLOWING_property_definition_IN_object_literal_5675 )
              property_definition403 = property_definition
              @state.following.pop
              if @state.backtracking == 0
                stream_property_definition.add( property_definition403.tree )
              end

            else
              break # out of loop for decision 98
            end
          end # loop for decision 98
          char_literal404 = match( RBRACE, TOKENS_FOLLOWING_RBRACE_IN_object_literal_5680 )
          if @state.backtracking == 0
            stream_RBRACE.add( char_literal404 )
          end
          # AST Rewrite
          # elements: property_definition
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

            root_0 = @adaptor.create_flat_list
            # 797:5: -> ^( OBJECT ( property_definition )+ )
            # at line 797:8: ^( OBJECT ( property_definition )+ )
            root_1 = @adaptor.create_flat_list
            root_1 = @adaptor.become_root( @adaptor.create_from_type( OBJECT, "OBJECT" ), root_1 )

            # at line 797:18: ( property_definition )+
            stream_property_definition.has_next? or raise ANTLR3::RewriteEarlyExit

            while stream_property_definition.has_next?
              @adaptor.add_child( root_1, stream_property_definition.next_tree )

            end
            stream_property_definition.reset

            @adaptor.add_child( root_0, root_1 )



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 80 )

      end
      
      return return_value
    end

    PropertyDefinitionReturnValue = define_return_scope 

    # 
    # parser rule property_definition
    # 
    # (in Jejune.g)
    # 800:1: property_definition : ( 'get' ID ( function_parameters )? block | 'set' ID ( function_parameters )? block | ( ID | STRING | NUMBER | reserved ) ( ':' expression | t= '->' ( function_parameters )? statement_block ) );
    # 
    def property_definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 81 )
      return_value = PropertyDefinitionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      t = nil
      string_literal405 = nil
      __ID406__ = nil
      string_literal409 = nil
      __ID410__ = nil
      __ID413__ = nil
      __STRING414__ = nil
      __NUMBER415__ = nil
      char_literal417 = nil
      function_parameters407 = nil
      block408 = nil
      function_parameters411 = nil
      block412 = nil
      reserved416 = nil
      expression418 = nil
      function_parameters419 = nil
      statement_block420 = nil

      tree_for_t = nil
      tree_for_string_literal405 = nil
      tree_for_ID406 = nil
      tree_for_string_literal409 = nil
      tree_for_ID410 = nil
      tree_for_ID413 = nil
      tree_for_STRING414 = nil
      tree_for_NUMBER415 = nil
      tree_for_char_literal417 = nil

      begin
        # at line 801:3: ( 'get' ID ( function_parameters )? block | 'set' ID ( function_parameters )? block | ( ID | STRING | NUMBER | reserved ) ( ':' expression | t= '->' ( function_parameters )? statement_block ) )
        alt_105 = 3
        case look_105 = @input.peek( 1 )
        when GET then look_105_1 = @input.peek( 2 )

        if ( look_105_1 == ID )
          alt_105 = 1
        elsif ( look_105_1 == ARROW || look_105_1 == COLON )
          alt_105 = 3
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 105, 1 )
        end
        when SET then look_105_2 = @input.peek( 2 )

        if ( look_105_2 == ID )
          alt_105 = 2
        elsif ( look_105_2 == ARROW || look_105_2 == COLON )
          alt_105 = 3
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 105, 2 )
        end
        when IF, IN, BREAK, INSTANCEOF, RETURN, CASE, CATCH, CONTINUE, LET, DEFAULT, DELETE, SWITCH, THIS, DO, THROW, TRUE, TRY, TYPEOF, NEW, EACH, UNDEFINED, ELSE, NULL, UNLESS, UNTIL, FALSE, VAR, FINALLY, VOID, FOR, WHILE, WITH, FUNCTION, YIELD, DEF, CLASS_DEF, OBJECT_DEF, ID, STRING, NUMBER, T__148, T__149, T__150 then alt_105 = 3
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 105, 0 )
        end
        case alt_105
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 801:5: 'get' ID ( function_parameters )? block
          string_literal405 = match( GET, TOKENS_FOLLOWING_GET_IN_property_definition_5708 )
          if @state.backtracking == 0

            tree_for_string_literal405 = @adaptor.create_with_payload( string_literal405 )
            root_0 = @adaptor.become_root( tree_for_string_literal405, root_0 )

          end
          __ID406__ = match( ID, TOKENS_FOLLOWING_ID_IN_property_definition_5711 )
          if @state.backtracking == 0

            tree_for_ID406 = @adaptor.create_with_payload( __ID406__ )
            @adaptor.add_child( root_0, tree_for_ID406 )

          end
          # at line 801:15: ( function_parameters )?
          alt_100 = 2
          alt_100 = @dfa100.predict( @input )
          case alt_100
          when 1
            # at line 801:15: function_parameters
            @state.following.push( TOKENS_FOLLOWING_function_parameters_IN_property_definition_5713 )
            function_parameters407 = function_parameters
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, function_parameters407.tree )
            end

          end
          @state.following.push( TOKENS_FOLLOWING_block_IN_property_definition_5716 )
          block408 = block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, block408.tree )
          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 802:5: 'set' ID ( function_parameters )? block
          string_literal409 = match( SET, TOKENS_FOLLOWING_SET_IN_property_definition_5722 )
          if @state.backtracking == 0

            tree_for_string_literal409 = @adaptor.create_with_payload( string_literal409 )
            root_0 = @adaptor.become_root( tree_for_string_literal409, root_0 )

          end
          __ID410__ = match( ID, TOKENS_FOLLOWING_ID_IN_property_definition_5725 )
          if @state.backtracking == 0

            tree_for_ID410 = @adaptor.create_with_payload( __ID410__ )
            @adaptor.add_child( root_0, tree_for_ID410 )

          end
          # at line 802:15: ( function_parameters )?
          alt_101 = 2
          alt_101 = @dfa101.predict( @input )
          case alt_101
          when 1
            # at line 802:15: function_parameters
            @state.following.push( TOKENS_FOLLOWING_function_parameters_IN_property_definition_5727 )
            function_parameters411 = function_parameters
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, function_parameters411.tree )
            end

          end
          @state.following.push( TOKENS_FOLLOWING_block_IN_property_definition_5730 )
          block412 = block
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, block412.tree )
          end

        when 3
          root_0 = @adaptor.create_flat_list


          # at line 803:5: ( ID | STRING | NUMBER | reserved ) ( ':' expression | t= '->' ( function_parameters )? statement_block )
          # at line 803:5: ( ID | STRING | NUMBER | reserved )
          alt_102 = 4
          case look_102 = @input.peek( 1 )
          when ID then alt_102 = 1
          when STRING then alt_102 = 2
          when NUMBER then alt_102 = 3
          when GET, IF, IN, BREAK, INSTANCEOF, RETURN, CASE, CATCH, SET, CONTINUE, LET, DEFAULT, DELETE, SWITCH, THIS, DO, THROW, TRUE, TRY, TYPEOF, NEW, EACH, UNDEFINED, ELSE, NULL, UNLESS, UNTIL, FALSE, VAR, FINALLY, VOID, FOR, WHILE, WITH, FUNCTION, YIELD, DEF, CLASS_DEF, OBJECT_DEF, T__148, T__149, T__150 then alt_102 = 4
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 102, 0 )
          end
          case alt_102
          when 1
            # at line 803:7: ID
            __ID413__ = match( ID, TOKENS_FOLLOWING_ID_IN_property_definition_5738 )
            if @state.backtracking == 0

              tree_for_ID413 = @adaptor.create_with_payload( __ID413__ )
              @adaptor.add_child( root_0, tree_for_ID413 )

            end

          when 2
            # at line 803:12: STRING
            __STRING414__ = match( STRING, TOKENS_FOLLOWING_STRING_IN_property_definition_5742 )
            if @state.backtracking == 0

              tree_for_STRING414 = @adaptor.create_with_payload( __STRING414__ )
              @adaptor.add_child( root_0, tree_for_STRING414 )

            end

          when 3
            # at line 803:21: NUMBER
            __NUMBER415__ = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_property_definition_5746 )
            if @state.backtracking == 0

              tree_for_NUMBER415 = @adaptor.create_with_payload( __NUMBER415__ )
              @adaptor.add_child( root_0, tree_for_NUMBER415 )

            end

          when 4
            # at line 803:30: reserved
            @state.following.push( TOKENS_FOLLOWING_reserved_IN_property_definition_5750 )
            reserved416 = reserved
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, reserved416.tree )
            end
            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
               reserved416.tree.token.type = ID 
              # <-- action
            end

          end
          # at line 804:5: ( ':' expression | t= '->' ( function_parameters )? statement_block )
          alt_104 = 2
          look_104_0 = @input.peek( 1 )

          if ( look_104_0 == COLON )
            alt_104 = 1
          elsif ( look_104_0 == ARROW )
            alt_104 = 2
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 104, 0 )
          end
          case alt_104
          when 1
            # at line 804:7: ':' expression
            char_literal417 = match( COLON, TOKENS_FOLLOWING_COLON_IN_property_definition_5762 )
            if @state.backtracking == 0

              tree_for_char_literal417 = @adaptor.create_with_payload( char_literal417 )
              root_0 = @adaptor.become_root( tree_for_char_literal417, root_0 )

            end
            @state.following.push( TOKENS_FOLLOWING_expression_IN_property_definition_5766 )
            expression418 = expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, expression418.tree )
            end

          when 2
            # at line 805:7: t= '->' ( function_parameters )? statement_block
            t = match( ARROW, TOKENS_FOLLOWING_ARROW_IN_property_definition_5776 )
            if @state.backtracking == 0

              tree_for_t = @adaptor.create_with_payload( t )
              root_0 = @adaptor.become_root( tree_for_t, root_0 )

            end
            # at line 805:15: ( function_parameters )?
            alt_103 = 2
            look_103_0 = @input.peek( 1 )

            if ( look_103_0 == LPAREN )
              alt_103 = 1
            end
            case alt_103
            when 1
              # at line 805:15: function_parameters
              @state.following.push( TOKENS_FOLLOWING_function_parameters_IN_property_definition_5779 )
              function_parameters419 = function_parameters
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child( root_0, function_parameters419.tree )
              end

            end
            @state.following.push( TOKENS_FOLLOWING_statement_block_IN_property_definition_5782 )
            statement_block420 = statement_block
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, statement_block420.tree )
            end

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 81 )

      end
      
      return return_value
    end

    PropertyNameReturnValue = define_return_scope 

    # 
    # parser rule property_name
    # 
    # (in Jejune.g)
    # 813:1: property_name : ( ID | STRING | NUMBER | reserved );
    # 
    def property_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 82 )
      return_value = PropertyNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID421__ = nil
      __STRING422__ = nil
      __NUMBER423__ = nil
      reserved424 = nil

      tree_for_ID421 = nil
      tree_for_STRING422 = nil
      tree_for_NUMBER423 = nil

      begin
        # at line 814:3: ( ID | STRING | NUMBER | reserved )
        alt_106 = 4
        case look_106 = @input.peek( 1 )
        when ID then alt_106 = 1
        when STRING then alt_106 = 2
        when NUMBER then alt_106 = 3
        when GET, IF, IN, BREAK, INSTANCEOF, RETURN, CASE, CATCH, SET, CONTINUE, LET, DEFAULT, DELETE, SWITCH, THIS, DO, THROW, TRUE, TRY, TYPEOF, NEW, EACH, UNDEFINED, ELSE, NULL, UNLESS, UNTIL, FALSE, VAR, FINALLY, VOID, FOR, WHILE, WITH, FUNCTION, YIELD, DEF, CLASS_DEF, OBJECT_DEF, T__148, T__149, T__150 then alt_106 = 4
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 106, 0 )
        end
        case alt_106
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 814:5: ID
          __ID421__ = match( ID, TOKENS_FOLLOWING_ID_IN_property_name_5805 )
          if @state.backtracking == 0

            tree_for_ID421 = @adaptor.create_with_payload( __ID421__ )
            @adaptor.add_child( root_0, tree_for_ID421 )

          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 815:5: STRING
          __STRING422__ = match( STRING, TOKENS_FOLLOWING_STRING_IN_property_name_5811 )
          if @state.backtracking == 0

            tree_for_STRING422 = @adaptor.create_with_payload( __STRING422__ )
            @adaptor.add_child( root_0, tree_for_STRING422 )

          end

        when 3
          root_0 = @adaptor.create_flat_list


          # at line 816:5: NUMBER
          __NUMBER423__ = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_property_name_5817 )
          if @state.backtracking == 0

            tree_for_NUMBER423 = @adaptor.create_with_payload( __NUMBER423__ )
            @adaptor.add_child( root_0, tree_for_NUMBER423 )

          end

        when 4
          root_0 = @adaptor.create_flat_list


          # at line 817:5: reserved
          @state.following.push( TOKENS_FOLLOWING_reserved_IN_property_name_5823 )
          reserved424 = reserved
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, reserved424.tree )
          end
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             reserved424.tree.token.type = ID 
            # <-- action
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 82 )

      end
      
      return return_value
    end

    VariableNameReturnValue = define_return_scope 

    # 
    # parser rule variable_name
    # 
    # (in Jejune.g)
    # 820:1: variable_name : ( ID | t= pseudokeyword );
    # 
    def variable_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 83 )
      return_value = VariableNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID425__ = nil
      t = nil

      tree_for_ID425 = nil

      begin
        # at line 821:3: ( ID | t= pseudokeyword )
        alt_107 = 2
        look_107_0 = @input.peek( 1 )

        if ( look_107_0 == ID )
          alt_107 = 1
        elsif ( look_107_0 == GET || look_107_0 == SET || look_107_0 == MACRO || look_107_0 == EACH || look_107_0.between?( DEF, OBJECT_DEF ) || look_107_0.between?( T__148, T__150 ) )
          alt_107 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 107, 0 )
        end
        case alt_107
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 821:5: ID
          __ID425__ = match( ID, TOKENS_FOLLOWING_ID_IN_variable_name_5838 )
          if @state.backtracking == 0

            tree_for_ID425 = @adaptor.create_with_payload( __ID425__ )
            @adaptor.add_child( root_0, tree_for_ID425 )

          end

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 822:5: t= pseudokeyword
          @state.following.push( TOKENS_FOLLOWING_pseudokeyword_IN_variable_name_5846 )
          t = pseudokeyword
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, t.tree )
          end
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             t.tree.token.type = ID 
            # <-- action
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 83 )

      end
      
      return return_value
    end

    BrowserNameReturnValue = define_return_scope 

    # 
    # parser rule browser_name
    # 
    # (in Jejune.g)
    # 825:1: browser_name : ( 'opera' | 'firefox' | 'chrome' );
    # 
    def browser_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 84 )
      return_value = BrowserNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set426 = nil

      tree_for_set426 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 
        set426 = @input.look
        if @input.peek( 1 ).between?( T__148, T__150 )
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child( root_0, @adaptor.create_with_payload( set426 ) )
          end
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 84 )

      end
      
      return return_value
    end

    PseudokeywordReturnValue = define_return_scope 

    # 
    # parser rule pseudokeyword
    # 
    # (in Jejune.g)
    # 831:1: pseudokeyword : ( 'each' | 'get' | 'set' | 'macro' | 'opera' | 'firefox' | 'chrome' | 'class' | 'def' | 'object' );
    # 
    def pseudokeyword
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 85 )
      return_value = PseudokeywordReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set427 = nil

      tree_for_set427 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 
        set427 = @input.look
        if @input.peek(1) == GET || @input.peek(1) == SET || @input.peek(1) == MACRO || @input.peek(1) == EACH || @input.peek( 1 ).between?( DEF, OBJECT_DEF ) || @input.peek( 1 ).between?( T__148, T__150 )
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child( root_0, @adaptor.create_with_payload( set427 ) )
          end
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 85 )

      end
      
      return return_value
    end

    ReservedReturnValue = define_return_scope 

    # 
    # parser rule reserved
    # 
    # (in Jejune.g)
    # 844:1: reserved : ( 'break' | 'do' | 'function' | 'new' | 'throw' | 'until' | 'case' | 'each' | 'get' | 'null' | 'true' | 'var' | 'catch' | 'else' | 'if' | 'return' | 'try' | 'void' | 'continue' | 'false' | 'in' | 'set' | 'typeof' | 'while' | 'default' | 'finally' | 'instanceof' | 'switch' | 'undefined' | 'with' | 'delete' | 'for' | 'let' | 'this' | 'unless' | 'yield' | 'opera' | 'firefox' | 'chrome' | 'def' | 'class' | 'object' );
    # 
    def reserved
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 86 )
      return_value = ReservedReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set428 = nil

      tree_for_set428 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 
        set428 = @input.look
        if @input.peek(1) == GET || @input.peek(1) == IF || @input.peek(1) == IN || @input.peek( 1 ).between?( BREAK, RETURN ) || @input.peek(1) == CASE || @input.peek(1) == CATCH || @input.peek( 1 ).between?( SET, LET ) || @input.peek(1) == DEFAULT || @input.peek(1) == DELETE || @input.peek(1) == SWITCH || @input.peek( 1 ).between?( THIS, DO ) || @input.peek(1) == THROW || @input.peek(1) == TRUE || @input.peek(1) == TRY || @input.peek(1) == TYPEOF || @input.peek(1) == NEW || @input.peek(1) == EACH || @input.peek( 1 ).between?( UNDEFINED, UNLESS ) || @input.peek(1) == UNTIL || @input.peek(1) == FALSE || @input.peek( 1 ).between?( VAR, FINALLY ) || @input.peek( 1 ).between?( VOID, FOR ) || @input.peek(1) == WHILE || @input.peek( 1 ).between?( WITH, FUNCTION ) || @input.peek(1) == YIELD || @input.peek( 1 ).between?( DEF, OBJECT_DEF ) || @input.peek( 1 ).between?( T__148, T__150 )
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child( root_0, @adaptor.create_with_payload( set428 ) )
          end
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing( root_0 )
          @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 86 )

      end
      
      return return_value
    end

    # 
    # syntactic predicate synpred1_Jejune
    # 
    # (in Jejune.g)
    # 260:5: synpred1_Jejune : '{' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred1_Jejune
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 87 )

      # at line 260:7: '{'
      match( LBRACE, TOKENS_FOLLOWING_LBRACE_IN_synpred1_Jejune_1803 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 87 )

    end
    # 
    # syntactic predicate synpred2_Jejune
    # 
    # (in Jejune.g)
    # 284:5: synpred2_Jejune : 'function' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred2_Jejune
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 88 )

      # at line 284:7: 'function'
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_synpred2_Jejune_1922 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 88 )

    end
    # 
    # syntactic predicate synpred3_Jejune
    # 
    # (in Jejune.g)
    # 285:5: synpred3_Jejune : EJS ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred3_Jejune
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 89 )

      # at line 285:7: EJS
      match( EJS, TOKENS_FOLLOWING_EJS_IN_synpred3_Jejune_1935 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 89 )

    end
    # 
    # syntactic predicate synpred4_Jejune
    # 
    # (in Jejune.g)
    # 289:5: synpred4_Jejune : ID ':' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred4_Jejune
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 90 )

      # at line 289:7: ID ':'
      match( ID, TOKENS_FOLLOWING_ID_IN_synpred4_Jejune_1968 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_synpred4_Jejune_1971 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 90 )

    end
    # 
    # syntactic predicate synpred5_Jejune
    # 
    # (in Jejune.g)
    # 290:5: synpred5_Jejune : 'let' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred5_Jejune
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 91 )

      # at line 290:7: 'let'
      match( LET, TOKENS_FOLLOWING_LET_IN_synpred5_Jejune_1984 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 91 )

    end
    # 
    # syntactic predicate synpred6_Jejune
    # 
    # (in Jejune.g)
    # 325:5: synpred6_Jejune : '}' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred6_Jejune
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 92 )

      # at line 325:7: '}'
      match( RBRACE, TOKENS_FOLLOWING_RBRACE_IN_synpred6_Jejune_2158 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 92 )

    end
    # 
    # syntactic predicate synpred7_Jejune
    # 
    # (in Jejune.g)
    # 460:5: synpred7_Jejune : 'for' '(' (~ ( ')' | ';' | 'in' ) )* 'in' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred7_Jejune
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 93 )

      # at line 460:7: 'for' '(' (~ ( ')' | ';' | 'in' ) )* 'in'
      match( FOR, TOKENS_FOLLOWING_FOR_IN_synpred7_Jejune_3054 )
      match( LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred7_Jejune_3057 )
      # at line 460:19: (~ ( ')' | ';' | 'in' ) )*
      while true # decision 108
        alt_108 = 2
        look_108_0 = @input.peek( 1 )

        if ( look_108_0.between?( AMP, BLOCK ) || look_108_0.between?( REGEX, IS_DEFINED ) || look_108_0.between?( CASE, LEQ ) || look_108_0.between?( CONST, T__150 ) )
          alt_108 = 1

        end
        case alt_108
        when 1
          # at line 460:19: ~ ( ')' | ';' | 'in' )
          if @input.peek( 1 ).between?( AMP, BLOCK ) || @input.peek( 1 ).between?( REGEX, IS_DEFINED ) || @input.peek( 1 ).between?( CASE, LEQ ) || @input.peek( 1 ).between?( CONST, T__150 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end



        else
          break # out of loop for decision 108
        end
      end # loop for decision 108
      match( IN, TOKENS_FOLLOWING_IN_IN_synpred7_Jejune_3077 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 93 )

    end
    # 
    # syntactic predicate synpred8_Jejune
    # 
    # (in Jejune.g)
    # 556:5: synpred8_Jejune : member assignment_op ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred8_Jejune
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 94 )

      # at line 556:7: member assignment_op
      @state.following.push( TOKENS_FOLLOWING_member_IN_synpred8_Jejune_3692 )
      member
      @state.following.pop
      @state.following.push( TOKENS_FOLLOWING_assignment_op_IN_synpred8_Jejune_3694 )
      assignment_op
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 94 )

    end
    # 
    # syntactic predicate synpred9_Jejune
    # 
    # (in Jejune.g)
    # 680:5: synpred9_Jejune : 'new' new_target ( arguments )? ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred9_Jejune
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 95 )

      # at line 680:7: 'new' new_target ( arguments )?
      match( NEW, TOKENS_FOLLOWING_NEW_IN_synpred9_Jejune_4812 )
      @state.following.push( TOKENS_FOLLOWING_new_target_IN_synpred9_Jejune_4814 )
      new_target
      @state.following.pop
      # at line 680:24: ( arguments )?
      alt_109 = 2
      look_109_0 = @input.peek( 1 )

      if ( look_109_0 == LPAREN )
        alt_109 = 1
      end
      case alt_109
      when 1
        # at line 680:24: arguments
        @state.following.push( TOKENS_FOLLOWING_arguments_IN_synpred9_Jejune_4816 )
        arguments
        @state.following.pop

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 95 )

    end
    # 
    # syntactic predicate synpred10_Jejune
    # 
    # (in Jejune.g)
    # 790:5: synpred10_Jejune : ',' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred10_Jejune
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 96 )

      # at line 790:7: ','
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_synpred10_Jejune_5611 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 96 )

    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA3 < ANTLR3::DFA
      EOT = unpack( 59, -1 )
      EOF = unpack( 59, -1 )
      MIN = unpack( 1, 5, 1, 0, 57, -1 )
      MAX = unpack( 1, 150, 1, 0, 57, -1 )
      ACCEPT = unpack( 2, -1, 1, 2, 55, -1, 1, 1 )
      SPECIAL = unpack( 1, -1, 1, 0, 57, -1 )
      TRANSITION = [
        unpack( 1, 2, 5, -1, 1, 2, 10, -1, 1, 2, 3, -1, 1, 2, 3, -1, 1, 
                2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 8, 
                -1, 1, 1, 2, -1, 1, 2, 3, -1, 2, 2, 1, -1, 3, 2, 1, -1, 
                1, 2, 2, -1, 2, 2, 4, -1, 1, 2, 2, -1, 7, 2, 1, -1, 1, 2, 
                2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 3, 2, 1, -1, 
                3, 2, 1, -1, 2, 2, 2, -1, 1, 2, 3, -1, 1, 2, 1, -1, 1, 2, 
                2, -1, 2, 2, 1, -1, 1, 2, 2, -1, 4, 2, 2, -1, 11, 2, 11, 
                -1, 3, 2 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 3
      

      def description
        <<-'__dfa_description__'.strip!
          259:1: block : ( ( '{' )=> statement_block | statement );
        __dfa_description__
      end
    end
    class DFA6 < ANTLR3::DFA
      EOT = unpack( 61, -1 )
      EOF = unpack( 61, -1 )
      MIN = unpack( 1, 5, 3, -1, 3, 0, 4, -1, 1, 0, 49, -1 )
      MAX = unpack( 1, 150, 3, -1, 3, 0, 4, -1, 1, 0, 49, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 3, -1, 1, 6, 2, 7, 1, 8, 
                       1, -1, 1, 10, 1, 11, 30, -1, 1, 12, 1, -1, 1, 13, 
                       1, -1, 1, 14, 1, 15, 1, 16, 1, 17, 1, 18, 1, 19, 
                       1, 20, 1, 21, 1, 22, 1, 23, 1, 4, 1, 5, 1, 9 )
      SPECIAL = unpack( 1, 0, 3, -1, 1, 1, 1, 2, 1, 3, 4, -1, 1, 4, 49, 
                        -1 )
      TRANSITION = [
        unpack( 1, 13, 5, -1, 1, 13, 10, -1, 1, 5, 3, -1, 1, 44, 3, -1, 
                1, 13, 1, -1, 1, 13, 1, -1, 1, 51, 1, -1, 1, 53, 1, -1, 
                1, 13, 8, -1, 1, 13, 2, -1, 1, 13, 3, -1, 1, 3, 1, 2, 1, 
                -1, 1, 13, 1, 50, 1, 12, 1, -1, 1, 13, 2, -1, 2, 13, 4, 
                -1, 1, 13, 2, -1, 1, 13, 1, 10, 1, 55, 1, 7, 2, 13, 1, 48, 
                1, -1, 1, 56, 2, -1, 1, 13, 2, -1, 1, 13, 2, -1, 1, 57, 
                2, -1, 3, 13, 1, -1, 3, 13, 1, -1, 1, 13, 1, 44, 2, -1, 
                1, 46, 3, -1, 1, 13, 1, -1, 1, 1, 2, -1, 1, 13, 1, 49, 1, 
                -1, 1, 46, 2, -1, 1, 54, 1, 4, 1, 13, 1, 52, 2, -1, 3, 13, 
                1, 8, 1, 9, 1, 6, 1, 11, 4, 13, 11, -1, 3, 13 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 6
      

      def description
        <<-'__dfa_description__'.strip!
          276:1: statement : ( variable_statement | const_statement | empty_statement | ( 'function' )=> function | ( EJS )=> EJS | DIRECTIVE | class_statement | macro | ( ID ':' )=> labelled_statement | ( 'let' )=> let_statement | expression_statement | if_statement | while_statement | do_while_statement | for_loop | continue_statement | break_statement | yield_statement | return_statement | with_statement | switch_statement | throw_statement | try_statement );
        __dfa_description__
      end
    end
    class DFA7 < ANTLR3::DFA
      EOT = unpack( 71, -1 )
      EOF = unpack( 1, 58, 57, -1, 1, 70, 12, -1 )
      MIN = unpack( 1, 5, 1, 0, 56, -1, 1, 5, 12, -1 )
      MAX = unpack( 1, 150, 1, 0, 56, -1, 1, 150, 12, -1 )
      ACCEPT = unpack( 2, -1, 56, 2, 1, -1, 10, 2, 1, 1, 1, 3 )
      SPECIAL = unpack( 1, 1, 1, 0, 69, -1 )
      TRANSITION = [
        unpack( 1, 26, 5, -1, 1, 61, 10, -1, 1, 5, 1, -1, 1, 60, 1, -1, 
                1, 44, 3, -1, 1, 25, 1, 68, 1, 38, 1, -1, 1, 51, 1, -1, 
                1, 53, 1, -1, 1, 36, 1, 65, 1, 67, 6, -1, 1, 30, 1, -1, 
                1, 64, 1, 29, 3, -1, 1, 1, 1, 3, 1, -1, 1, 62, 1, 50, 1, 
                12, 1, -1, 1, 24, 2, -1, 1, 39, 1, 31, 1, -1, 1, 66, 2, 
                -1, 1, 33, 2, -1, 1, 27, 1, 10, 1, 55, 1, 7, 1, 41, 1, 13, 
                1, 48, 1, -1, 1, 56, 2, -1, 1, 42, 2, -1, 1, 17, 2, -1, 
                1, 57, 2, -1, 1, 35, 1, 22, 1, 32, 1, -1, 1, 63, 1, 43, 
                1, 19, 1, 59, 1, 16, 1, 45, 2, -1, 1, 47, 3, -1, 1, 18, 
                1, -1, 1, 2, 2, -1, 1, 34, 1, 49, 1, -1, 1, 46, 2, -1, 1, 
                54, 1, 4, 1, 40, 1, 52, 2, -1, 1, 37, 1, 28, 1, 15, 1, 8, 
                1, 9, 1, 6, 1, 11, 1, 21, 1, 20, 1, 14, 1, 23, 11, -1, 3, 
                63 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 70, 5, -1, 1, 70, 10, -1, 1, 70, 1, -1, 1, 70, 1, -1, 
                 1, 70, 3, -1, 3, 70, 1, -1, 1, 70, 1, -1, 1, 70, 1, -1, 
                 3, 70, 6, -1, 1, 70, 1, -1, 2, 70, 3, -1, 2, 70, 1, -1, 
                 3, 70, 1, -1, 1, 70, 2, -1, 2, 70, 1, -1, 1, 70, 2, -1, 
                 1, 70, 2, -1, 7, 70, 1, -1, 1, 70, 2, -1, 1, 70, 2, -1, 
                 1, 70, 2, -1, 1, 70, 2, -1, 3, 70, 1, -1, 6, 70, 2, -1, 
                 1, 70, 3, -1, 1, 70, 1, -1, 1, 70, 2, -1, 2, 70, 1, -1, 
                 1, 70, 2, -1, 4, 70, 2, -1, 11, 70, 11, -1, 3, 70 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 7
      

      def description
        <<-'__dfa_description__'.strip!
          323:1: statement_end : ( ';' | ( '}' )=> | EOF );
        __dfa_description__
      end
    end
    class DFA12 < ANTLR3::DFA
      EOT = unpack( 69, -1 )
      EOF = unpack( 1, 1, 68, -1 )
      MIN = unpack( 1, 5, 68, -1 )
      MAX = unpack( 1, 150, 68, -1 )
      ACCEPT = unpack( 1, -1, 1, 2, 62, -1, 1, 1, 4, -1 )
      SPECIAL = unpack( 69, -1 )
      TRANSITION = [
        unpack( 1, 1, 5, -1, 1, 1, 10, -1, 1, 1, 1, -1, 1, 1, 1, -1, 1, 
                1, 3, -1, 3, 1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, 3, 1, 6, 
                -1, 1, 1, 1, -1, 1, 64, 1, 1, 3, -1, 2, 1, 1, -1, 3, 1, 
                1, -1, 1, 1, 2, -1, 2, 1, 1, -1, 1, 1, 2, -1, 1, 1, 2, -1, 
                7, 1, 1, -1, 1, 1, 2, -1, 1, 1, 2, -1, 1, 1, 2, -1, 1, 1, 
                2, -1, 3, 1, 1, -1, 6, 1, 2, -1, 1, 1, 3, -1, 1, 1, 1, -1, 
                1, 1, 2, -1, 2, 1, 1, -1, 1, 1, 2, -1, 4, 1, 2, -1, 11, 
                1, 11, -1, 3, 1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 12
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 391:26: ( ',' variable_declaration )*
        __dfa_description__
      end
    end
    class DFA38 < ANTLR3::DFA
      EOT = unpack( 70, -1 )
      EOF = unpack( 1, 36, 69, -1 )
      MIN = unpack( 1, 5, 35, 0, 4, -1, 3, 0, 18, -1, 3, 0, 6, -1 )
      MAX = unpack( 1, 150, 35, 0, 4, -1, 3, 0, 18, -1, 3, 0, 6, -1 )
      ACCEPT = unpack( 36, -1, 1, 2, 32, -1, 1, 1 )
      SPECIAL = unpack( 1, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 
                        1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 
                        14, 1, 15, 1, 16, 1, 17, 1, 18, 1, 19, 1, 20, 1, 
                        21, 1, 22, 1, 23, 1, 24, 1, 25, 1, 26, 1, 27, 1, 
                        28, 1, 29, 1, 30, 1, 31, 1, 32, 1, 33, 1, 34, 4, 
                        -1, 1, 35, 1, 36, 1, 37, 18, -1, 1, 38, 1, 39, 1, 
                        40, 6, -1 )
      TRANSITION = [
        unpack( 1, 15, 5, -1, 1, 61, 10, -1, 1, 22, 1, -1, 1, 36, 1, -1, 
                1, 36, 3, -1, 1, 14, 1, 36, 1, 30, 1, -1, 1, 36, 1, -1, 
                1, 36, 1, -1, 1, 28, 2, 36, 6, -1, 1, 19, 1, -1, 1, 36, 
                1, 18, 3, -1, 2, 36, 1, -1, 1, 62, 2, 36, 1, -1, 1, 13, 
                2, -1, 1, 31, 1, 20, 1, -1, 1, 36, 2, -1, 1, 25, 2, -1, 
                1, 16, 1, 41, 2, 36, 1, 33, 1, 1, 1, 36, 1, -1, 1, 36, 2, 
                -1, 1, 34, 2, -1, 1, 6, 2, -1, 1, 36, 2, -1, 1, 27, 1, 11, 
                1, 24, 1, -1, 1, 63, 1, 35, 1, 8, 1, 36, 1, 5, 1, 36, 2, 
                -1, 1, 36, 3, -1, 1, 7, 1, -1, 1, 36, 2, -1, 1, 26, 1, 36, 
                1, -1, 1, 36, 2, -1, 1, 36, 1, 21, 1, 32, 1, 36, 2, -1, 
                1, 29, 1, 17, 1, 42, 1, 4, 1, 40, 1, 23, 1, 3, 1, 10, 1, 
                9, 1, 2, 1, 12, 11, -1, 3, 63 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 38
      

      def description
        <<-'__dfa_description__'.strip!
          517:15: ({...}? => expression_list )?
        __dfa_description__
      end
    end
    class DFA39 < ANTLR3::DFA
      EOT = unpack( 70, -1 )
      EOF = unpack( 1, 36, 69, -1 )
      MIN = unpack( 1, 5, 35, 0, 4, -1, 3, 0, 18, -1, 3, 0, 6, -1 )
      MAX = unpack( 1, 150, 35, 0, 4, -1, 3, 0, 18, -1, 3, 0, 6, -1 )
      ACCEPT = unpack( 36, -1, 1, 2, 32, -1, 1, 1 )
      SPECIAL = unpack( 1, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 
                        1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 
                        14, 1, 15, 1, 16, 1, 17, 1, 18, 1, 19, 1, 20, 1, 
                        21, 1, 22, 1, 23, 1, 24, 1, 25, 1, 26, 1, 27, 1, 
                        28, 1, 29, 1, 30, 1, 31, 1, 32, 1, 33, 1, 34, 4, 
                        -1, 1, 35, 1, 36, 1, 37, 18, -1, 1, 38, 1, 39, 1, 
                        40, 6, -1 )
      TRANSITION = [
        unpack( 1, 15, 5, -1, 1, 61, 10, -1, 1, 22, 1, -1, 1, 36, 1, -1, 
                1, 36, 3, -1, 1, 14, 1, 36, 1, 30, 1, -1, 1, 36, 1, -1, 
                1, 36, 1, -1, 1, 28, 2, 36, 6, -1, 1, 19, 1, -1, 1, 36, 
                1, 18, 3, -1, 2, 36, 1, -1, 1, 62, 2, 36, 1, -1, 1, 13, 
                2, -1, 1, 31, 1, 20, 1, -1, 1, 36, 2, -1, 1, 25, 2, -1, 
                1, 16, 1, 41, 2, 36, 1, 33, 1, 1, 1, 36, 1, -1, 1, 36, 2, 
                -1, 1, 34, 2, -1, 1, 6, 2, -1, 1, 36, 2, -1, 1, 27, 1, 11, 
                1, 24, 1, -1, 1, 63, 1, 35, 1, 8, 1, 36, 1, 5, 1, 36, 2, 
                -1, 1, 36, 3, -1, 1, 7, 1, -1, 1, 36, 2, -1, 1, 26, 1, 36, 
                1, -1, 1, 36, 2, -1, 1, 36, 1, 21, 1, 32, 1, 36, 2, -1, 
                1, 29, 1, 17, 1, 42, 1, 4, 1, 40, 1, 23, 1, 3, 1, 10, 1, 
                9, 1, 2, 1, 12, 11, -1, 3, 63 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 39
      

      def description
        <<-'__dfa_description__'.strip!
          521:14: ({...}? => expression_list )?
        __dfa_description__
      end
    end
    class DFA40 < ANTLR3::DFA
      EOT = unpack( 70, -1 )
      EOF = unpack( 1, 36, 69, -1 )
      MIN = unpack( 1, 5, 35, 0, 4, -1, 3, 0, 18, -1, 3, 0, 6, -1 )
      MAX = unpack( 1, 150, 35, 0, 4, -1, 3, 0, 18, -1, 3, 0, 6, -1 )
      ACCEPT = unpack( 36, -1, 1, 2, 32, -1, 1, 1 )
      SPECIAL = unpack( 1, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 
                        1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 
                        14, 1, 15, 1, 16, 1, 17, 1, 18, 1, 19, 1, 20, 1, 
                        21, 1, 22, 1, 23, 1, 24, 1, 25, 1, 26, 1, 27, 1, 
                        28, 1, 29, 1, 30, 1, 31, 1, 32, 1, 33, 1, 34, 4, 
                        -1, 1, 35, 1, 36, 1, 37, 18, -1, 1, 38, 1, 39, 1, 
                        40, 6, -1 )
      TRANSITION = [
        unpack( 1, 15, 5, -1, 1, 61, 10, -1, 1, 22, 1, -1, 1, 36, 1, -1, 
                1, 36, 3, -1, 1, 14, 1, 36, 1, 30, 1, -1, 1, 36, 1, -1, 
                1, 36, 1, -1, 1, 28, 2, 36, 6, -1, 1, 19, 1, -1, 1, 36, 
                1, 18, 3, -1, 2, 36, 1, -1, 1, 62, 2, 36, 1, -1, 1, 13, 
                2, -1, 1, 31, 1, 20, 1, -1, 1, 36, 2, -1, 1, 25, 2, -1, 
                1, 16, 1, 41, 2, 36, 1, 33, 1, 1, 1, 36, 1, -1, 1, 36, 2, 
                -1, 1, 34, 2, -1, 1, 6, 2, -1, 1, 36, 2, -1, 1, 27, 1, 11, 
                1, 24, 1, -1, 1, 63, 1, 35, 1, 8, 1, 36, 1, 5, 1, 36, 2, 
                -1, 1, 36, 3, -1, 1, 7, 1, -1, 1, 36, 2, -1, 1, 26, 1, 36, 
                1, -1, 1, 36, 2, -1, 1, 36, 1, 21, 1, 32, 1, 36, 2, -1, 
                1, 29, 1, 17, 1, 42, 1, 4, 1, 40, 1, 23, 1, 3, 1, 10, 1, 
                9, 1, 2, 1, 12, 11, -1, 3, 63 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 40
      

      def description
        <<-'__dfa_description__'.strip!
          525:14: ({...}? => expression_list )?
        __dfa_description__
      end
    end
    class DFA48 < ANTLR3::DFA
      EOT = unpack( 10, -1 )
      EOF = unpack( 10, -1 )
      MIN = unpack( 1, 11, 1, -1, 1, 11, 2, 25, 5, -1 )
      MAX = unpack( 1, 150, 1, -1, 1, 150, 2, 132, 5, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 3, -1, 1, 5, 1, 6, 1, 2, 1, 3, 1, 4 )
      SPECIAL = unpack( 10, -1 )
      TRANSITION = [
        unpack( 1, 3, 42, -1, 1, 6, 2, -1, 1, 4, 16, -1, 1, 5, 22, -1, 1, 
                5, 13, -1, 1, 1, 16, -1, 1, 2, 2, 5, 1, -1, 1, 5, 15, -1, 
                3, 5 ),
        unpack(  ),
        unpack( 1, 7, 13, -1, 1, 5, 31, -1, 1, 7, 16, -1, 1, 7, 22, -1, 
                 1, 7, 30, -1, 3, 7, 1, -1, 1, 7, 15, -1, 3, 7 ),
        unpack( 1, 5, 106, -1, 1, 8 ),
        unpack( 1, 5, 106, -1, 1, 9 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 48
      

      def description
        <<-'__dfa_description__'.strip!
          537:1: class_member : ( variable_statement | 'def' variable_name ( function_parameters )? statement_block | 'get' ID ( function_parameters )? block | 'set' ID ( function_parameters )? block | variable_name '=' expression | ';' );
        __dfa_description__
      end
    end
    class DFA46 < ANTLR3::DFA
      EOT = unpack( 58, -1 )
      EOF = unpack( 58, -1 )
      MIN = unpack( 1, 5, 57, -1 )
      MAX = unpack( 1, 150, 57, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 55, -1 )
      SPECIAL = unpack( 58, -1 )
      TRANSITION = [
        unpack( 1, 2, 5, -1, 1, 2, 10, -1, 1, 2, 3, -1, 1, 2, 3, -1, 1, 
                2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 8, 
                -1, 1, 2, 2, -1, 1, 2, 3, -1, 2, 2, 1, -1, 3, 2, 1, -1, 
                1, 2, 2, -1, 1, 2, 1, 1, 4, -1, 1, 2, 2, -1, 7, 2, 1, -1, 
                1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 3, 2, 
                1, -1, 3, 2, 1, -1, 2, 2, 2, -1, 1, 2, 3, -1, 1, 2, 1, -1, 
                1, 2, 2, -1, 2, 2, 1, -1, 1, 2, 2, -1, 4, 2, 2, -1, 11, 
                2, 11, -1, 3, 2 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 46
      

      def description
        <<-'__dfa_description__'.strip!
          540:15: ( function_parameters )?
        __dfa_description__
      end
    end
    class DFA47 < ANTLR3::DFA
      EOT = unpack( 58, -1 )
      EOF = unpack( 58, -1 )
      MIN = unpack( 1, 5, 57, -1 )
      MAX = unpack( 1, 150, 57, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 55, -1 )
      SPECIAL = unpack( 58, -1 )
      TRANSITION = [
        unpack( 1, 2, 5, -1, 1, 2, 10, -1, 1, 2, 3, -1, 1, 2, 3, -1, 1, 
                2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 8, 
                -1, 1, 2, 2, -1, 1, 2, 3, -1, 2, 2, 1, -1, 3, 2, 1, -1, 
                1, 2, 2, -1, 1, 2, 1, 1, 4, -1, 1, 2, 2, -1, 7, 2, 1, -1, 
                1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 3, 2, 
                1, -1, 3, 2, 1, -1, 2, 2, 2, -1, 1, 2, 3, -1, 1, 2, 1, -1, 
                1, 2, 2, -1, 2, 2, 1, -1, 1, 2, 2, -1, 4, 2, 2, -1, 11, 
                2, 11, -1, 3, 2 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 47
      

      def description
        <<-'__dfa_description__'.strip!
          541:15: ( function_parameters )?
        __dfa_description__
      end
    end
    class DFA49 < ANTLR3::DFA
      EOT = unpack( 70, -1 )
      EOF = unpack( 1, 1, 69, -1 )
      MIN = unpack( 1, 5, 69, -1 )
      MAX = unpack( 1, 150, 69, -1 )
      ACCEPT = unpack( 1, -1, 1, 2, 63, -1, 1, 1, 4, -1 )
      SPECIAL = unpack( 70, -1 )
      TRANSITION = [
        unpack( 1, 1, 5, -1, 1, 1, 10, -1, 1, 1, 1, -1, 1, 1, 1, -1, 1, 
                1, 3, -1, 3, 1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, 3, 1, 5, 
                -1, 2, 1, 1, -1, 1, 65, 1, 1, 3, -1, 2, 1, 1, -1, 3, 1, 
                1, -1, 1, 1, 2, -1, 2, 1, 1, -1, 1, 1, 2, -1, 1, 1, 2, -1, 
                7, 1, 1, -1, 1, 1, 2, -1, 1, 1, 2, -1, 1, 1, 2, -1, 1, 1, 
                2, -1, 3, 1, 1, -1, 6, 1, 2, -1, 1, 1, 3, -1, 1, 1, 1, -1, 
                1, 1, 2, -1, 2, 1, 1, -1, 1, 1, 2, -1, 4, 1, 2, -1, 11, 
                1, 11, -1, 3, 1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 49
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 552:16: ( ',' expression )*
        __dfa_description__
      end
    end
    class DFA50 < ANTLR3::DFA
      EOT = unpack( 37, -1 )
      EOF = unpack( 37, -1 )
      MIN = unpack( 1, 5, 24, 0, 12, -1 )
      MAX = unpack( 1, 150, 24, 0, 12, -1 )
      ACCEPT = unpack( 25, -1, 1, 2, 10, -1, 1, 1 )
      SPECIAL = unpack( 1, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 
                        1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 
                        14, 1, 15, 1, 16, 1, 17, 1, 18, 1, 19, 1, 20, 1, 
                        21, 1, 22, 1, 23, 12, -1 )
      TRANSITION = [
        unpack( 1, 15, 5, -1, 1, 4, 10, -1, 1, 22, 7, -1, 1, 14, 1, -1, 
                1, 25, 5, -1, 1, 25, 8, -1, 1, 19, 2, -1, 1, 18, 6, -1, 
                1, 4, 3, -1, 1, 13, 2, -1, 1, 25, 1, 20, 4, -1, 1, 25, 2, 
                -1, 1, 16, 1, 4, 2, -1, 1, 25, 1, 1, 5, -1, 1, 25, 2, -1, 
                1, 6, 5, -1, 1, 25, 1, 11, 1, 24, 1, -1, 1, 4, 1, 25, 1, 
                8, 1, -1, 1, 5, 7, -1, 1, 7, 4, -1, 1, 25, 6, -1, 1, 21, 
                1, 25, 3, -1, 1, 25, 1, 17, 3, 4, 1, 23, 1, 3, 1, 10, 1, 
                9, 1, 2, 1, 12, 11, -1, 3, 4 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 50
      

      def description
        <<-'__dfa_description__'.strip!
          555:1: expression : ( ( member assignment_op )=> member assignment_op expression | conditional );
        __dfa_description__
      end
    end
    class DFA54 < ANTLR3::DFA
      EOT = unpack( 75, -1 )
      EOF = unpack( 1, 1, 74, -1 )
      MIN = unpack( 1, 5, 74, -1 )
      MAX = unpack( 1, 150, 74, -1 )
      ACCEPT = unpack( 1, -1, 1, 2, 72, -1, 1, 1 )
      SPECIAL = unpack( 75, -1 )
      TRANSITION = [
        unpack( 1, 1, 4, -1, 2, 1, 9, -1, 2, 1, 1, -1, 1, 1, 1, -1, 2, 1, 
                2, -1, 3, 1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, 3, 1, 5, -1, 
                2, 1, 1, -1, 2, 1, 3, -1, 2, 1, 1, -1, 3, 1, 1, -1, 1, 1, 
                2, -1, 2, 1, 1, -1, 1, 1, 2, -1, 1, 1, 2, -1, 7, 1, 1, -1, 
                1, 1, 2, -1, 1, 1, 2, -1, 1, 1, 2, -1, 1, 1, 2, -1, 3, 1, 
                1, -1, 6, 1, 2, -1, 1, 1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, 
                1, 1, 2, -1, 2, 1, 1, 74, 1, 1, 2, -1, 4, 1, 2, -1, 11, 
                1, 11, -1, 3, 1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 54
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 589:13: ( '|' bit_xor )*
        __dfa_description__
      end
    end
    class DFA64 < ANTLR3::DFA
      EOT = unpack( 90, -1 )
      EOF = unpack( 1, 10, 89, -1 )
      MIN = unpack( 1, 4, 89, -1 )
      MAX = unpack( 1, 150, 89, -1 )
      ACCEPT = unpack( 1, -1, 1, 2, 7, -1, 2, 2, 50, -1, 2, 1, 27, -1 )
      SPECIAL = unpack( 1, 0, 89, -1 )
      TRANSITION = [
        unpack( 2, 10, 2, -1, 1, 1, 1, -1, 2, 10, 2, -1, 1, 1, 2, -1, 1, 
                10, 3, -1, 2, 10, 1, -1, 1, 10, 1, -1, 2, 10, 1, -1, 1, 
                9, 3, 10, 1, -1, 1, 10, 1, 1, 1, 10, 1, -1, 3, 10, 1, -1, 
                1, 1, 2, -1, 1, 1, 2, 10, 1, -1, 2, 10, 2, -1, 1, 1, 2, 
                10, 1, 1, 3, 10, 1, -1, 1, 10, 2, -1, 2, 10, 1, -1, 1, 10, 
                1, 1, 1, -1, 1, 10, 2, -1, 4, 10, 1, 62, 2, 10, 1, -1, 1, 
                10, 2, -1, 1, 10, 2, -1, 1, 10, 1, -1, 2, 10, 1, -1, 4, 
                10, 1, -1, 7, 10, 1, -1, 3, 10, 1, -1, 1, 10, 1, -1, 1, 
                10, 2, -1, 4, 10, 2, -1, 2, 10, 1, 61, 1, 10, 2, -1, 11, 
                10, 11, -1, 3, 10 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 64
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 626:10: ( ( '+' | '-' ) mult )*
        __dfa_description__
      end
    end
    class DFA67 < ANTLR3::DFA
      EOT = unpack( 13, -1 )
      EOF = unpack( 13, -1 )
      MIN = unpack( 1, 5, 12, -1 )
      MAX = unpack( 1, 150, 12, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                       1, 8, 1, 9, 1, 10, 1, 11, 1, 12 )
      SPECIAL = unpack( 13, -1 )
      TRANSITION = [
        unpack( 1, 12, 5, -1, 1, 12, 10, -1, 1, 12, 7, -1, 1, 12, 1, -1, 
                1, 6, 5, -1, 1, 4, 8, -1, 1, 12, 2, -1, 1, 12, 6, -1, 1, 
                12, 3, -1, 1, 12, 2, -1, 1, 7, 1, 12, 4, -1, 1, 1, 2, -1, 
                2, 12, 2, -1, 1, 9, 1, 12, 5, -1, 1, 10, 2, -1, 1, 12, 5, 
                -1, 1, 3, 2, 12, 1, -1, 1, 12, 1, 11, 1, 12, 1, -1, 1, 12, 
                7, -1, 1, 12, 4, -1, 1, 2, 6, -1, 1, 12, 1, 8, 3, -1, 1, 
                5, 10, 12, 11, -1, 3, 12 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 67
      

      def description
        <<-'__dfa_description__'.strip!
          633:1: unary : ( 'delete' unary -> ^( 'delete' unary ) | 'void' unary -> ^( 'void' unary ) | 'typeof' unary -> ^( 'typeof' unary ) | 'defined?' unary -> ^( 'defined?' unary ) | 'undefined?' unary -> ^( 'undefined?' unary ) | '++' unary -> ^( '++' unary ) | '--' unary -> ^( '--' unary ) | '+' unary -> ^( UPLUS[ '+' ] unary ) | '-' unary -> ^( UMINUS[ '-' ] unary ) | '~' unary -> ^( '~' unary ) | '!' unary -> ^( '!' unary ) | postfix -> postfix );
        __dfa_description__
      end
    end
    class DFA69 < ANTLR3::DFA
      EOT = unpack( 94, -1 )
      EOF = unpack( 1, 17, 93, -1 )
      MIN = unpack( 1, 4, 2, 0, 91, -1 )
      MAX = unpack( 1, 150, 2, 0, 91, -1 )
      ACCEPT = unpack( 3, -1, 1, 2, 12, -1, 2, 2, 75, -1, 1, 1 )
      SPECIAL = unpack( 1, 0, 1, 1, 1, 2, 91, -1 )
      TRANSITION = [
        unpack( 2, 17, 2, -1, 1, 3, 1, -1, 2, 17, 2, -1, 1, 3, 2, -1, 1, 
                17, 3, -1, 2, 17, 1, -1, 1, 17, 1, -1, 2, 17, 1, -1, 1, 
                16, 2, 17, 1, 1, 1, -1, 1, 17, 1, 3, 1, 17, 1, -1, 3, 17, 
                1, -1, 1, 3, 2, -1, 1, 3, 2, 17, 1, -1, 2, 17, 2, -1, 1, 
                3, 2, 17, 1, 3, 3, 17, 1, 3, 1, 17, 2, -1, 1, 2, 1, 17, 
                1, -1, 1, 17, 2, 3, 1, 17, 2, -1, 4, 17, 1, 3, 2, 17, 1, 
                -1, 1, 17, 1, -1, 1, 3, 1, 17, 2, -1, 1, 17, 1, -1, 2, 17, 
                1, -1, 4, 17, 1, -1, 7, 17, 1, -1, 3, 17, 1, -1, 1, 17, 
                1, -1, 1, 17, 2, -1, 4, 17, 2, -1, 2, 17, 1, 3, 1, 17, 2, 
                -1, 11, 17, 11, -1, 3, 17 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 69
      

      def description
        <<-'__dfa_description__'.strip!
          650:5: ({...}? => ( '++' -> ^( POST_INCR[ '++' ] member ) | '--' -> ^( POST_DECR[ '--' ] member ) ) | -> member )
        __dfa_description__
      end
    end
    class DFA70 < ANTLR3::DFA
      EOT = unpack( 96, -1 )
      EOF = unpack( 1, 1, 95, -1 )
      MIN = unpack( 1, 4, 58, -1, 1, 0, 13, -1, 1, 0, 22, -1 )
      MAX = unpack( 1, 150, 58, -1, 1, 0, 13, -1, 1, 0, 22, -1 )
      ACCEPT = unpack( 1, -1, 1, 4, 56, -1, 1, 1, 1, -1, 1, 2, 33, -1, 1, 
                       1, 1, 3 )
      SPECIAL = unpack( 59, -1, 1, 0, 13, -1, 1, 1, 22, -1 )
      TRANSITION = [
        unpack( 2, 1, 1, -1, 2, 1, 1, -1, 2, 1, 2, -1, 1, 1, 2, -1, 1, 1, 
                2, -1, 3, 1, 1, -1, 4, 1, 1, -1, 4, 1, 1, -1, 3, 1, 1, -1, 
                3, 1, 1, -1, 1, 1, 2, -1, 2, 1, 1, 59, 2, 1, 1, 58, 1, 1, 
                1, -1, 9, 1, 1, -1, 2, 1, 1, 60, 1, -1, 12, 1, 1, 73, 2, 
                1, 1, 94, 2, 1, 1, -1, 2, 1, 1, -1, 2, 1, 1, -1, 4, 1, 1, 
                -1, 7, 1, 1, -1, 3, 1, 1, -1, 3, 1, 2, -1, 4, 1, 1, -1, 
                5, 1, 1, -1, 12, 1, 11, -1, 3, 1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 70
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 664:5: ( accessor -> | arguments -> ^( CALL $member arguments ) | {...}? => iteration -> ^( ITER $member iteration ) )*
        __dfa_description__
      end
    end
    class DFA79 < ANTLR3::DFA
      EOT = unpack( 41, -1 )
      EOF = unpack( 41, -1 )
      MIN = unpack( 1, 4, 7, 0, 1, -1, 1, 0, 1, -1, 4, 0, 10, -1, 1, 0, 
                    2, -1, 3, 0, 10, -1 )
      MAX = unpack( 1, 150, 7, 0, 1, -1, 1, 0, 1, -1, 4, 0, 10, -1, 1, 0, 
                    2, -1, 3, 0, 10, -1 )
      ACCEPT = unpack( 8, -1, 1, 2, 22, -1, 1, 1, 8, -1, 1, 3 )
      SPECIAL = unpack( 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                        1, -1, 1, 8, 1, -1, 1, 9, 1, 10, 1, 11, 1, 12, 10, 
                        -1, 1, 13, 2, -1, 1, 14, 1, 15, 1, 16, 10, -1 )
      TRANSITION = [
        unpack( 1, 40, 1, 8, 5, -1, 1, 1, 10, -1, 1, 8, 3, -1, 1, 31, 2, 
                -1, 1, 31, 1, 8, 1, -1, 1, 8, 1, -1, 3, 31, 1, -1, 1, 8, 
                1, -1, 1, 31, 2, -1, 1, 31, 3, -1, 1, 8, 2, -1, 1, 8, 6, 
                -1, 1, 2, 2, 31, 1, -1, 1, 8, 2, -1, 2, 8, 1, -1, 1, 31, 
                2, -1, 1, 28, 2, -1, 2, 8, 1, 31, 1, -1, 1, 8, 1, 6, 1, 
                31, 1, -1, 1, 31, 2, -1, 1, 8, 2, -1, 1, 11, 2, -1, 1, 31, 
                2, -1, 1, 30, 1, 8, 1, 25, 1, -1, 1, 7, 1, 8, 1, 13, 1, 
                31, 1, 9, 1, 31, 2, -1, 1, 31, 3, -1, 1, 12, 1, -1, 2, 31, 
                1, -1, 1, 29, 1, 31, 1, -1, 1, 31, 2, -1, 1, 31, 1, 14, 
                1, 8, 1, 31, 2, -1, 2, 8, 3, 7, 1, 8, 1, 3, 1, 4, 1, 5, 
                2, 8, 11, -1, 3, 7 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 79
      

      def description
        <<-'__dfa_description__'.strip!
          693:1: argument : ({...}? => property_definition | expression | a= '&' );
        __dfa_description__
      end
    end
    class DFA80 < ANTLR3::DFA
      EOT = unpack( 58, -1 )
      EOF = unpack( 58, -1 )
      MIN = unpack( 1, 5, 57, -1 )
      MAX = unpack( 1, 150, 57, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 55, -1 )
      SPECIAL = unpack( 58, -1 )
      TRANSITION = [
        unpack( 1, 2, 5, -1, 1, 2, 10, -1, 1, 2, 3, -1, 1, 2, 3, -1, 1, 
                2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 8, 
                -1, 1, 2, 2, -1, 1, 2, 3, -1, 2, 2, 1, -1, 3, 2, 1, -1, 
                1, 2, 2, -1, 1, 2, 1, 1, 4, -1, 1, 2, 2, -1, 7, 2, 1, -1, 
                1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 3, 2, 
                1, -1, 3, 2, 1, -1, 2, 2, 2, -1, 1, 2, 3, -1, 1, 2, 1, -1, 
                1, 2, 2, -1, 2, 2, 1, -1, 1, 2, 2, -1, 4, 2, 2, -1, 11, 
                2, 11, -1, 3, 2 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 80
      

      def description
        <<-'__dfa_description__'.strip!
          705:28: ( function_parameters )?
        __dfa_description__
      end
    end
    class DFA97 < ANTLR3::DFA
      EOT = unpack( 19, -1 )
      EOF = unpack( 19, -1 )
      MIN = unpack( 1, 5, 4, 4, 2, -1, 1, 4, 1, -1, 4, 4, 1, 11, 4, 5, 1, 
                    -1 )
      MAX = unpack( 1, 150, 4, 125, 2, -1, 1, 125, 1, -1, 4, 125, 5, 150, 
                    1, -1 )
      ACCEPT = unpack( 5, -1, 2, 2, 1, -1, 1, 3, 9, -1, 1, 1 )
      SPECIAL = unpack( 1, 2, 1, 13, 1, 3, 1, 6, 1, 1, 2, -1, 1, 7, 1, -1, 
                        1, 4, 1, 9, 1, 8, 1, 14, 1, 12, 1, 10, 1, 5, 1, 
                        0, 1, 11, 1, -1 )
      TRANSITION = [
        unpack( 1, 8, 5, -1, 1, 7, 10, -1, 1, 8, 3, -1, 1, 18, 1, 6, 1, 
                -1, 1, 18, 1, 8, 1, -1, 1, 8, 1, -1, 3, 18, 1, -1, 1, 8, 
                1, -1, 1, 18, 2, -1, 1, 18, 3, -1, 1, 8, 1, -1, 1, 5, 1, 
                8, 6, -1, 1, 7, 2, 18, 1, -1, 1, 8, 2, -1, 2, 8, 1, -1, 
                1, 18, 2, -1, 1, 15, 2, -1, 2, 8, 1, 18, 1, -1, 1, 8, 1, 
                4, 1, 18, 1, -1, 1, 18, 2, -1, 1, 8, 2, -1, 1, 10, 2, -1, 
                1, 18, 2, -1, 1, 17, 1, 8, 1, 14, 1, -1, 1, 7, 1, 8, 1, 
                12, 1, 18, 1, 9, 1, 18, 2, -1, 1, 18, 3, -1, 1, 11, 1, -1, 
                2, 18, 1, -1, 1, 16, 1, 18, 1, -1, 1, 18, 2, -1, 1, 18, 
                1, 13, 1, 8, 1, 18, 2, -1, 2, 8, 3, 7, 1, 8, 1, 1, 1, 2, 
                1, 3, 2, 8, 11, -1, 3, 7 ),
        unpack( 1, 8, 2, -1, 2, 8, 1, -1, 1, 8, 3, -1, 1, 8, 2, -1, 1, 
                 8, 2, -1, 2, 8, 3, -1, 1, 8, 1, -1, 1, 8, 1, -1, 1, 8, 
                 2, -1, 1, 8, 2, -1, 1, 8, 6, -1, 1, 8, 2, -1, 1, 8, 1, 
                 18, 5, 8, 1, -1, 1, 8, 2, -1, 1, 8, 3, -1, 1, 8, 2, -1, 
                 3, 8, 2, -1, 2, 8, 1, -1, 2, 8, 4, -1, 1, 8, 1, -1, 2, 
                 8, 1, -1, 2, 8, 2, -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8, 
                 10, -1, 1, 8, 2, -1, 2, 8, 2, -1, 1, 8, 5, -1, 1, 8, 2, 
                 -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8 ),
        unpack( 1, 8, 2, -1, 2, 8, 1, -1, 1, 8, 3, -1, 1, 8, 2, -1, 1, 
                 8, 2, -1, 2, 8, 3, -1, 1, 8, 1, -1, 1, 8, 1, -1, 1, 8, 
                 2, -1, 1, 8, 2, -1, 1, 8, 6, -1, 1, 8, 2, -1, 1, 8, 1, 
                 18, 5, 8, 1, -1, 1, 8, 2, -1, 1, 8, 3, -1, 1, 8, 2, -1, 
                 3, 8, 2, -1, 2, 8, 1, -1, 2, 8, 4, -1, 1, 8, 1, -1, 2, 
                 8, 1, -1, 2, 8, 2, -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8, 
                 10, -1, 1, 8, 2, -1, 2, 8, 2, -1, 1, 8, 5, -1, 1, 8, 2, 
                 -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8 ),
        unpack( 1, 8, 2, -1, 2, 8, 1, -1, 1, 8, 3, -1, 1, 8, 2, -1, 1, 
                 8, 2, -1, 2, 8, 3, -1, 1, 8, 1, -1, 1, 8, 1, -1, 1, 8, 
                 2, -1, 1, 8, 2, -1, 1, 8, 6, -1, 1, 8, 2, -1, 1, 8, 1, 
                 18, 5, 8, 1, -1, 1, 8, 2, -1, 1, 8, 3, -1, 1, 8, 2, -1, 
                 3, 8, 2, -1, 2, 8, 1, -1, 2, 8, 4, -1, 1, 8, 1, -1, 2, 
                 8, 1, -1, 2, 8, 2, -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8, 
                 10, -1, 1, 8, 2, -1, 2, 8, 2, -1, 1, 8, 5, -1, 1, 8, 2, 
                 -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8 ),
        unpack( 1, 8, 2, -1, 2, 8, 1, -1, 1, 8, 3, -1, 1, 8, 2, -1, 1, 
                 8, 2, -1, 2, 8, 3, -1, 1, 8, 1, -1, 1, 8, 1, -1, 1, 8, 
                 2, -1, 1, 8, 2, -1, 1, 8, 6, -1, 1, 8, 2, -1, 1, 8, 1, 
                 18, 5, 8, 1, -1, 1, 8, 2, -1, 1, 8, 3, -1, 1, 8, 2, -1, 
                 3, 8, 2, -1, 2, 8, 1, -1, 2, 8, 4, -1, 1, 8, 1, -1, 2, 
                 8, 1, -1, 2, 8, 2, -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8, 
                 10, -1, 1, 8, 2, -1, 2, 8, 2, -1, 1, 8, 5, -1, 1, 8, 2, 
                 -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 8, 2, -1, 2, 8, 1, -1, 1, 8, 3, -1, 1, 8, 2, -1, 1, 
                 8, 2, -1, 2, 8, 3, -1, 1, 8, 1, -1, 1, 8, 1, -1, 1, 8, 
                 2, -1, 1, 8, 2, -1, 1, 8, 6, -1, 1, 8, 2, -1, 1, 8, 1, 
                 18, 5, 8, 1, -1, 1, 8, 2, -1, 1, 8, 3, -1, 1, 8, 2, -1, 
                 3, 8, 2, -1, 2, 8, 1, -1, 2, 8, 4, -1, 1, 8, 1, -1, 2, 
                 8, 1, -1, 2, 8, 2, -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8, 
                 10, -1, 1, 8, 2, -1, 2, 8, 2, -1, 1, 8, 5, -1, 1, 8, 2, 
                 -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8 ),
        unpack(  ),
        unpack( 1, 8, 2, -1, 2, 8, 1, -1, 1, 8, 3, -1, 1, 8, 2, -1, 1, 
                 8, 2, -1, 2, 8, 3, -1, 1, 8, 1, -1, 1, 8, 1, -1, 1, 8, 
                 2, -1, 1, 8, 2, -1, 1, 8, 6, -1, 1, 8, 2, -1, 1, 8, 1, 
                 18, 5, 8, 1, -1, 1, 8, 2, -1, 1, 8, 3, -1, 1, 8, 2, -1, 
                 3, 8, 2, -1, 2, 8, 1, -1, 2, 8, 4, -1, 1, 8, 1, -1, 2, 
                 8, 1, -1, 2, 8, 2, -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8, 
                 10, -1, 1, 8, 2, -1, 2, 8, 2, -1, 1, 8, 5, -1, 1, 8, 2, 
                 -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8 ),
        unpack( 1, 8, 2, -1, 2, 8, 1, -1, 1, 8, 3, -1, 1, 8, 2, -1, 1, 
                 8, 2, -1, 2, 8, 3, -1, 1, 8, 1, -1, 1, 8, 1, -1, 1, 8, 
                 2, -1, 1, 8, 2, -1, 1, 8, 6, -1, 1, 8, 2, -1, 1, 8, 1, 
                 18, 5, 8, 1, -1, 1, 8, 2, -1, 1, 8, 3, -1, 1, 8, 2, -1, 
                 3, 8, 2, -1, 2, 8, 1, -1, 2, 8, 4, -1, 1, 8, 1, -1, 2, 
                 8, 1, -1, 2, 8, 2, -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8, 
                 10, -1, 1, 8, 2, -1, 2, 8, 2, -1, 1, 8, 5, -1, 1, 8, 2, 
                 -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8 ),
        unpack( 1, 8, 2, -1, 2, 8, 1, -1, 1, 8, 3, -1, 1, 8, 2, -1, 1, 
                 8, 2, -1, 2, 8, 3, -1, 1, 8, 1, -1, 1, 8, 1, -1, 1, 8, 
                 2, -1, 1, 8, 2, -1, 1, 8, 6, -1, 1, 8, 2, -1, 1, 8, 1, 
                 18, 5, 8, 1, -1, 1, 8, 2, -1, 1, 8, 3, -1, 1, 8, 2, -1, 
                 3, 8, 2, -1, 2, 8, 1, -1, 2, 8, 4, -1, 1, 8, 1, -1, 2, 
                 8, 1, -1, 2, 8, 2, -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8, 
                 10, -1, 1, 8, 2, -1, 2, 8, 2, -1, 1, 8, 5, -1, 1, 8, 2, 
                 -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8 ),
        unpack( 1, 8, 2, -1, 2, 8, 1, -1, 1, 8, 3, -1, 1, 8, 2, -1, 1, 
                 8, 2, -1, 2, 8, 3, -1, 1, 8, 1, -1, 1, 8, 1, -1, 1, 8, 
                 2, -1, 1, 8, 2, -1, 1, 8, 6, -1, 1, 8, 2, -1, 1, 8, 1, 
                 18, 5, 8, 1, -1, 1, 8, 2, -1, 1, 8, 3, -1, 1, 8, 2, -1, 
                 3, 8, 2, -1, 2, 8, 1, -1, 2, 8, 4, -1, 1, 8, 1, -1, 2, 
                 8, 1, -1, 2, 8, 2, -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8, 
                 10, -1, 1, 8, 2, -1, 2, 8, 2, -1, 1, 8, 5, -1, 1, 8, 2, 
                 -1, 1, 8, 2, -1, 1, 8, 2, -1, 1, 8 ),
        unpack( 1, 8, 34, -1, 1, 18, 10, -1, 1, 8, 7, -1, 1, 8, 8, -1, 
                 1, 8, 22, -1, 1, 8, 30, -1, 3, 8, 1, -1, 1, 8, 15, -1, 
                 3, 8 ),
        unpack( 1, 8, 5, -1, 1, 8, 10, -1, 1, 8, 7, -1, 1, 8, 15, -1, 1, 
                 18, 1, 8, 2, -1, 1, 8, 6, -1, 1, 8, 3, -1, 1, 8, 3, -1, 
                 1, 8, 7, -1, 2, 8, 3, -1, 1, 8, 8, -1, 1, 8, 6, -1, 2, 
                 8, 1, -1, 1, 8, 1, -1, 1, 8, 1, -1, 1, 8, 7, -1, 1, 8, 
                 11, -1, 1, 8, 5, -1, 10, 8, 11, -1, 3, 8 ),
        unpack( 1, 8, 5, -1, 1, 8, 10, -1, 1, 8, 7, -1, 1, 8, 1, -1, 1, 
                 8, 5, -1, 1, 8, 7, -1, 1, 18, 1, 8, 2, -1, 1, 8, 6, -1, 
                 1, 8, 3, -1, 1, 8, 2, -1, 2, 8, 4, -1, 1, 8, 2, -1, 2, 
                 8, 2, -1, 2, 8, 5, -1, 1, 8, 2, -1, 1, 8, 5, -1, 3, 8, 
                 1, -1, 3, 8, 1, -1, 1, 8, 7, -1, 1, 8, 4, -1, 1, 8, 6, 
                 -1, 2, 8, 3, -1, 11, 8, 11, -1, 3, 8 ),
        unpack( 1, 8, 5, -1, 1, 8, 10, -1, 1, 8, 7, -1, 1, 8, 1, -1, 1, 
                 8, 5, -1, 1, 8, 7, -1, 1, 18, 1, 8, 2, -1, 1, 8, 6, -1, 
                 1, 8, 3, -1, 1, 8, 2, -1, 2, 8, 4, -1, 1, 8, 2, -1, 2, 
                 8, 2, -1, 2, 8, 5, -1, 1, 8, 2, -1, 1, 8, 5, -1, 3, 8, 
                 1, -1, 3, 8, 1, -1, 1, 8, 7, -1, 1, 8, 4, -1, 1, 8, 6, 
                 -1, 2, 8, 3, -1, 11, 8, 11, -1, 3, 8 ),
        unpack( 1, 8, 5, -1, 1, 8, 10, -1, 1, 8, 7, -1, 1, 8, 1, -1, 1, 
                 8, 5, -1, 1, 8, 7, -1, 1, 18, 1, 8, 2, -1, 1, 8, 6, -1, 
                 1, 8, 3, -1, 1, 8, 2, -1, 2, 8, 4, -1, 1, 8, 2, -1, 2, 
                 8, 2, -1, 2, 8, 5, -1, 1, 8, 2, -1, 1, 8, 5, -1, 3, 8, 
                 1, -1, 3, 8, 1, -1, 1, 8, 7, -1, 1, 8, 4, -1, 1, 8, 6, 
                 -1, 2, 8, 3, -1, 11, 8, 11, -1, 3, 8 ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 97
      

      def description
        <<-'__dfa_description__'.strip!
          788:1: list_item : ({...}? => property_name ':' expression -> ^( ':' property_name expression ) | ( ',' )=> -> ^( UNDEFINED ) | expression -> expression );
        __dfa_description__
      end
    end
    class DFA100 < ANTLR3::DFA
      EOT = unpack( 58, -1 )
      EOF = unpack( 58, -1 )
      MIN = unpack( 1, 5, 57, -1 )
      MAX = unpack( 1, 150, 57, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 55, -1 )
      SPECIAL = unpack( 58, -1 )
      TRANSITION = [
        unpack( 1, 2, 5, -1, 1, 2, 10, -1, 1, 2, 3, -1, 1, 2, 3, -1, 1, 
                2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 8, 
                -1, 1, 2, 2, -1, 1, 2, 3, -1, 2, 2, 1, -1, 3, 2, 1, -1, 
                1, 2, 2, -1, 1, 2, 1, 1, 4, -1, 1, 2, 2, -1, 7, 2, 1, -1, 
                1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 3, 2, 
                1, -1, 3, 2, 1, -1, 2, 2, 2, -1, 1, 2, 3, -1, 1, 2, 1, -1, 
                1, 2, 2, -1, 2, 2, 1, -1, 1, 2, 2, -1, 4, 2, 2, -1, 11, 
                2, 11, -1, 3, 2 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 100
      

      def description
        <<-'__dfa_description__'.strip!
          801:15: ( function_parameters )?
        __dfa_description__
      end
    end
    class DFA101 < ANTLR3::DFA
      EOT = unpack( 58, -1 )
      EOF = unpack( 58, -1 )
      MIN = unpack( 1, 5, 57, -1 )
      MAX = unpack( 1, 150, 57, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 55, -1 )
      SPECIAL = unpack( 58, -1 )
      TRANSITION = [
        unpack( 1, 2, 5, -1, 1, 2, 10, -1, 1, 2, 3, -1, 1, 2, 3, -1, 1, 
                2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 1, -1, 1, 2, 8, 
                -1, 1, 2, 2, -1, 1, 2, 3, -1, 2, 2, 1, -1, 3, 2, 1, -1, 
                1, 2, 2, -1, 1, 2, 1, 1, 4, -1, 1, 2, 2, -1, 7, 2, 1, -1, 
                1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 2, -1, 3, 2, 
                1, -1, 3, 2, 1, -1, 2, 2, 2, -1, 1, 2, 3, -1, 1, 2, 1, -1, 
                1, 2, 2, -1, 2, 2, 1, -1, 1, 2, 2, -1, 4, 2, 2, -1, 11, 
                2, 11, -1, 3, 2 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 101
      

      def description
        <<-'__dfa_description__'.strip!
          802:15: ( function_parameters )?
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa3 = DFA3.new( self, 3 ) do |s|
        case s
        when 0
          look_3_1 = @input.peek
          index_3_1 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred1_Jejune ) )
            s = 58
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_3_1 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa3.description, 3, s, input )
          @dfa3.error( nva )
          raise nva
        end
        
        s
      end
      @dfa6 = DFA6.new( self, 6 ) do |s|
        case s
        when 0
          look_6_0 = @input.peek
          index_6_0 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_6_0 == VAR )
            s = 1
          elsif ( look_6_0 == CONST )
            s = 2
          elsif ( look_6_0 == SEMI )
            s = 3
          elsif ( look_6_0 == FUNCTION )
            s = 4
          elsif ( look_6_0 == ARROW )
            s = 5
          elsif ( look_6_0 == EJS )
            s = 6
          elsif ( look_6_0 == DIRECTIVE )
            s = 7
          elsif ( look_6_0 == CLASS_DEF )
            s = 8
          elsif ( look_6_0 == OBJECT_DEF )
            s = 9
          elsif ( look_6_0 == MACRO )
            s = 10
          elsif ( look_6_0 == ID )
            s = 11
          elsif ( look_6_0 == LET ) and ( syntactic_predicate?( :synpred5_Jejune ) )
            s = 12
          elsif ( look_6_0 == GENERAL || look_6_0 == GET || look_6_0 == REGEX || look_6_0 == INCR || look_6_0 == IS_DEFINED || look_6_0 == LBRACE || look_6_0 == LBRACK || look_6_0 == SET || look_6_0 == DDOC || look_6_0.between?( DECR, LPAREN ) || look_6_0 == DELETE || look_6_0 == DGENERAL || look_6_0.between?( MINUS, THIS ) || look_6_0 == TILDE || look_6_0 == TRUE || look_6_0.between?( TYPEOF, NEW ) || look_6_0.between?( EACH, UNDEFINED ) || look_6_0 == NULL || look_6_0 == FALSE || look_6_0 == VOID || look_6_0 == PLUS || look_6_0.between?( IS_UNDEFINED, DEF ) || look_6_0.between?( STRING, DOC ) || look_6_0.between?( T__148, T__150 ) )
            s = 13
          elsif ( look_6_0 == IF || look_6_0 == UNLESS )
            s = 44
          elsif ( look_6_0 == UNTIL || look_6_0 == WHILE )
            s = 46
          elsif ( look_6_0 == DO )
            s = 48
          elsif ( look_6_0 == FOR )
            s = 49
          elsif ( look_6_0 == CONTINUE )
            s = 50
          elsif ( look_6_0 == BREAK )
            s = 51
          elsif ( look_6_0 == YIELD )
            s = 52
          elsif ( look_6_0 == RETURN )
            s = 53
          elsif ( look_6_0 == WITH )
            s = 54
          elsif ( look_6_0 == SWITCH )
            s = 55
          elsif ( look_6_0 == THROW )
            s = 56
          elsif ( look_6_0 == TRY )
            s = 57
          end
           
          @input.seek( index_6_0 )

        when 1
          look_6_4 = @input.peek
          index_6_4 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred2_Jejune ) )
            s = 58
          elsif ( true )
            s = 13
          end
           
          @input.seek( index_6_4 )

        when 2
          look_6_5 = @input.peek
          index_6_5 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred2_Jejune ) )
            s = 58
          elsif ( true )
            s = 13
          end
           
          @input.seek( index_6_5 )

        when 3
          look_6_6 = @input.peek
          index_6_6 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred3_Jejune ) )
            s = 59
          elsif ( true )
            s = 13
          end
           
          @input.seek( index_6_6 )

        when 4
          look_6_11 = @input.peek
          index_6_11 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred4_Jejune ) )
            s = 60
          elsif ( true )
            s = 13
          end
           
          @input.seek( index_6_11 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa6.description, 6, s, input )
          @dfa6.error( nva )
          raise nva
        end
        
        s
      end
      @dfa7 = DFA7.new( self, 7 ) do |s|
        case s
        when 0
          look_7_1 = @input.peek
          index_7_1 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( true )
            s = 69
          elsif ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 68
          end
           
          @input.seek( index_7_1 )

        when 1
          look_7_0 = @input.peek
          index_7_0 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_7_0 == SEMI )
            s = 1
          elsif ( look_7_0 == VAR ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 2
          elsif ( look_7_0 == CONST ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 3
          elsif ( look_7_0 == FUNCTION ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 4
          elsif ( look_7_0 == ARROW ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 5
          elsif ( look_7_0 == EJS ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 6
          elsif ( look_7_0 == DIRECTIVE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 7
          elsif ( look_7_0 == CLASS_DEF ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 8
          elsif ( look_7_0 == OBJECT_DEF ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 9
          elsif ( look_7_0 == MACRO ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 10
          elsif ( look_7_0 == ID ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 11
          elsif ( look_7_0 == LET ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 12
          elsif ( look_7_0 == THIS ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 13
          elsif ( look_7_0 == IVAR ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 14
          elsif ( look_7_0 == DEF ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 15
          elsif ( look_7_0 == NULL ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 16
          elsif ( look_7_0 == TRUE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 17
          elsif ( look_7_0 == FALSE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 18
          elsif ( look_7_0 == UNDEFINED ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 19
          elsif ( look_7_0 == NUMBER ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 20
          elsif ( look_7_0 == STRING ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 21
          elsif ( look_7_0 == DSTRING ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 22
          elsif ( look_7_0 == DOC ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 23
          elsif ( look_7_0 == DDOC ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 24
          elsif ( look_7_0 == REGEX ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 25
          elsif ( look_7_0 == GENERAL ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 26
          elsif ( look_7_0 == DGENERAL ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 27
          elsif ( look_7_0 == POUND ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 28
          elsif ( look_7_0 == LBRACK ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 29
          elsif ( look_7_0 == LBRACE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 30
          elsif ( look_7_0 == LPAREN ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 31
          elsif ( look_7_0 == NEW ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 32
          elsif ( look_7_0 == DELETE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 33
          elsif ( look_7_0 == VOID ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 34
          elsif ( look_7_0 == TYPEOF ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 35
          elsif ( look_7_0 == IS_DEFINED ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 36
          elsif ( look_7_0 == IS_UNDEFINED ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 37
          elsif ( look_7_0 == INCR ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 38
          elsif ( look_7_0 == DECR ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 39
          elsif ( look_7_0 == PLUS ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 40
          elsif ( look_7_0 == MINUS ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 41
          elsif ( look_7_0 == TILDE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 42
          elsif ( look_7_0 == NOT ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 43
          elsif ( look_7_0 == IF ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 44
          elsif ( look_7_0 == UNLESS ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 45
          elsif ( look_7_0 == WHILE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 46
          elsif ( look_7_0 == UNTIL ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 47
          elsif ( look_7_0 == DO ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 48
          elsif ( look_7_0 == FOR ) and ( ( ( syntactic_predicate?( :synpred6_Jejune ) ) and ( (  @input.peek( 2 ) == EACH  ) ) ) or ( syntactic_predicate?( :synpred6_Jejune ) ) or ( ( syntactic_predicate?( :synpred6_Jejune ) ) and ( (  @input.peek( 2 ) == EACH  ) ) ) )
            s = 49
          elsif ( look_7_0 == CONTINUE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 50
          elsif ( look_7_0 == BREAK ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 51
          elsif ( look_7_0 == YIELD ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 52
          elsif ( look_7_0 == RETURN ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 53
          elsif ( look_7_0 == WITH ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 54
          elsif ( look_7_0 == SWITCH ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 55
          elsif ( look_7_0 == THROW ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 56
          elsif ( look_7_0 == TRY ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 57
          elsif ( look_7_0 == EOF )
            s = 58
          elsif ( look_7_0 == ELSE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 59
          elsif ( look_7_0 == RBRACE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 60
          elsif ( look_7_0 == GET ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 61
          elsif ( look_7_0 == SET ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 62
          elsif ( look_7_0 == EACH || look_7_0.between?( T__148, T__150 ) ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 63
          elsif ( look_7_0 == COMMA ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 64
          elsif ( look_7_0 == RPAREN ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 65
          elsif ( look_7_0 == DEFAULT ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 66
          elsif ( look_7_0 == CASE ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 67
          elsif ( look_7_0 == BL_END ) and ( syntactic_predicate?( :synpred6_Jejune ) )
            s = 68
          end
           
          @input.seek( index_7_0 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa7.description, 7, s, input )
          @dfa7.error( nva )
          raise nva
        end
        
        s
      end
      @dfa12 = DFA12.new( self, 12 )
      @dfa38 = DFA38.new( self, 38 ) do |s|
        case s
        when 0
          look_38_1 = @input.peek
          index_38_1 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_1 )

        when 1
          look_38_2 = @input.peek
          index_38_2 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_2 )

        when 2
          look_38_3 = @input.peek
          index_38_3 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_3 )

        when 3
          look_38_4 = @input.peek
          index_38_4 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_4 )

        when 4
          look_38_5 = @input.peek
          index_38_5 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_5 )

        when 5
          look_38_6 = @input.peek
          index_38_6 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_6 )

        when 6
          look_38_7 = @input.peek
          index_38_7 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_7 )

        when 7
          look_38_8 = @input.peek
          index_38_8 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_8 )

        when 8
          look_38_9 = @input.peek
          index_38_9 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_9 )

        when 9
          look_38_10 = @input.peek
          index_38_10 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_10 )

        when 10
          look_38_11 = @input.peek
          index_38_11 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_11 )

        when 11
          look_38_12 = @input.peek
          index_38_12 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_12 )

        when 12
          look_38_13 = @input.peek
          index_38_13 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_13 )

        when 13
          look_38_14 = @input.peek
          index_38_14 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_14 )

        when 14
          look_38_15 = @input.peek
          index_38_15 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_15 )

        when 15
          look_38_16 = @input.peek
          index_38_16 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_16 )

        when 16
          look_38_17 = @input.peek
          index_38_17 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_17 )

        when 17
          look_38_18 = @input.peek
          index_38_18 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_18 )

        when 18
          look_38_19 = @input.peek
          index_38_19 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_19 )

        when 19
          look_38_20 = @input.peek
          index_38_20 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_20 )

        when 20
          look_38_21 = @input.peek
          index_38_21 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_21 )

        when 21
          look_38_22 = @input.peek
          index_38_22 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_22 )

        when 22
          look_38_23 = @input.peek
          index_38_23 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_23 )

        when 23
          look_38_24 = @input.peek
          index_38_24 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_24 )

        when 24
          look_38_25 = @input.peek
          index_38_25 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_25 )

        when 25
          look_38_26 = @input.peek
          index_38_26 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_26 )

        when 26
          look_38_27 = @input.peek
          index_38_27 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_27 )

        when 27
          look_38_28 = @input.peek
          index_38_28 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_28 )

        when 28
          look_38_29 = @input.peek
          index_38_29 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_29 )

        when 29
          look_38_30 = @input.peek
          index_38_30 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_30 )

        when 30
          look_38_31 = @input.peek
          index_38_31 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_31 )

        when 31
          look_38_32 = @input.peek
          index_38_32 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_32 )

        when 32
          look_38_33 = @input.peek
          index_38_33 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_33 )

        when 33
          look_38_34 = @input.peek
          index_38_34 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_34 )

        when 34
          look_38_35 = @input.peek
          index_38_35 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_35 )

        when 35
          look_38_40 = @input.peek
          index_38_40 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_40 )

        when 36
          look_38_41 = @input.peek
          index_38_41 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_41 )

        when 37
          look_38_42 = @input.peek
          index_38_42 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_42 )

        when 38
          look_38_61 = @input.peek
          index_38_61 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_61 )

        when 39
          look_38_62 = @input.peek
          index_38_62 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_62 )

        when 40
          look_38_63 = @input.peek
          index_38_63 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_38_63 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa38.description, 38, s, input )
          @dfa38.error( nva )
          raise nva
        end
        
        s
      end
      @dfa39 = DFA39.new( self, 39 ) do |s|
        case s
        when 0
          look_39_1 = @input.peek
          index_39_1 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_1 )

        when 1
          look_39_2 = @input.peek
          index_39_2 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_2 )

        when 2
          look_39_3 = @input.peek
          index_39_3 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_3 )

        when 3
          look_39_4 = @input.peek
          index_39_4 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_4 )

        when 4
          look_39_5 = @input.peek
          index_39_5 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_5 )

        when 5
          look_39_6 = @input.peek
          index_39_6 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_6 )

        when 6
          look_39_7 = @input.peek
          index_39_7 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_7 )

        when 7
          look_39_8 = @input.peek
          index_39_8 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_8 )

        when 8
          look_39_9 = @input.peek
          index_39_9 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_9 )

        when 9
          look_39_10 = @input.peek
          index_39_10 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_10 )

        when 10
          look_39_11 = @input.peek
          index_39_11 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_11 )

        when 11
          look_39_12 = @input.peek
          index_39_12 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_12 )

        when 12
          look_39_13 = @input.peek
          index_39_13 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_13 )

        when 13
          look_39_14 = @input.peek
          index_39_14 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_14 )

        when 14
          look_39_15 = @input.peek
          index_39_15 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_15 )

        when 15
          look_39_16 = @input.peek
          index_39_16 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_16 )

        when 16
          look_39_17 = @input.peek
          index_39_17 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_17 )

        when 17
          look_39_18 = @input.peek
          index_39_18 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_18 )

        when 18
          look_39_19 = @input.peek
          index_39_19 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_19 )

        when 19
          look_39_20 = @input.peek
          index_39_20 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_20 )

        when 20
          look_39_21 = @input.peek
          index_39_21 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_21 )

        when 21
          look_39_22 = @input.peek
          index_39_22 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_22 )

        when 22
          look_39_23 = @input.peek
          index_39_23 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_23 )

        when 23
          look_39_24 = @input.peek
          index_39_24 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_24 )

        when 24
          look_39_25 = @input.peek
          index_39_25 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_25 )

        when 25
          look_39_26 = @input.peek
          index_39_26 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_26 )

        when 26
          look_39_27 = @input.peek
          index_39_27 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_27 )

        when 27
          look_39_28 = @input.peek
          index_39_28 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_28 )

        when 28
          look_39_29 = @input.peek
          index_39_29 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_29 )

        when 29
          look_39_30 = @input.peek
          index_39_30 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_30 )

        when 30
          look_39_31 = @input.peek
          index_39_31 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_31 )

        when 31
          look_39_32 = @input.peek
          index_39_32 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_32 )

        when 32
          look_39_33 = @input.peek
          index_39_33 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_33 )

        when 33
          look_39_34 = @input.peek
          index_39_34 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_34 )

        when 34
          look_39_35 = @input.peek
          index_39_35 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_35 )

        when 35
          look_39_40 = @input.peek
          index_39_40 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_40 )

        when 36
          look_39_41 = @input.peek
          index_39_41 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_41 )

        when 37
          look_39_42 = @input.peek
          index_39_42 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_42 )

        when 38
          look_39_61 = @input.peek
          index_39_61 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_61 )

        when 39
          look_39_62 = @input.peek
          index_39_62 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_62 )

        when 40
          look_39_63 = @input.peek
          index_39_63 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_39_63 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa39.description, 39, s, input )
          @dfa39.error( nva )
          raise nva
        end
        
        s
      end
      @dfa40 = DFA40.new( self, 40 ) do |s|
        case s
        when 0
          look_40_1 = @input.peek
          index_40_1 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_1 )

        when 1
          look_40_2 = @input.peek
          index_40_2 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_2 )

        when 2
          look_40_3 = @input.peek
          index_40_3 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_3 )

        when 3
          look_40_4 = @input.peek
          index_40_4 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_4 )

        when 4
          look_40_5 = @input.peek
          index_40_5 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_5 )

        when 5
          look_40_6 = @input.peek
          index_40_6 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_6 )

        when 6
          look_40_7 = @input.peek
          index_40_7 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_7 )

        when 7
          look_40_8 = @input.peek
          index_40_8 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_8 )

        when 8
          look_40_9 = @input.peek
          index_40_9 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_9 )

        when 9
          look_40_10 = @input.peek
          index_40_10 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_10 )

        when 10
          look_40_11 = @input.peek
          index_40_11 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_11 )

        when 11
          look_40_12 = @input.peek
          index_40_12 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_12 )

        when 12
          look_40_13 = @input.peek
          index_40_13 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_13 )

        when 13
          look_40_14 = @input.peek
          index_40_14 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_14 )

        when 14
          look_40_15 = @input.peek
          index_40_15 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_15 )

        when 15
          look_40_16 = @input.peek
          index_40_16 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_16 )

        when 16
          look_40_17 = @input.peek
          index_40_17 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_17 )

        when 17
          look_40_18 = @input.peek
          index_40_18 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_18 )

        when 18
          look_40_19 = @input.peek
          index_40_19 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_19 )

        when 19
          look_40_20 = @input.peek
          index_40_20 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_20 )

        when 20
          look_40_21 = @input.peek
          index_40_21 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_21 )

        when 21
          look_40_22 = @input.peek
          index_40_22 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_22 )

        when 22
          look_40_23 = @input.peek
          index_40_23 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_23 )

        when 23
          look_40_24 = @input.peek
          index_40_24 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_24 )

        when 24
          look_40_25 = @input.peek
          index_40_25 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_25 )

        when 25
          look_40_26 = @input.peek
          index_40_26 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_26 )

        when 26
          look_40_27 = @input.peek
          index_40_27 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_27 )

        when 27
          look_40_28 = @input.peek
          index_40_28 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_28 )

        when 28
          look_40_29 = @input.peek
          index_40_29 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_29 )

        when 29
          look_40_30 = @input.peek
          index_40_30 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_30 )

        when 30
          look_40_31 = @input.peek
          index_40_31 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_31 )

        when 31
          look_40_32 = @input.peek
          index_40_32 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_32 )

        when 32
          look_40_33 = @input.peek
          index_40_33 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_33 )

        when 33
          look_40_34 = @input.peek
          index_40_34 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_34 )

        when 34
          look_40_35 = @input.peek
          index_40_35 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_35 )

        when 35
          look_40_40 = @input.peek
          index_40_40 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_40 )

        when 36
          look_40_41 = @input.peek
          index_40_41 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_41 )

        when 37
          look_40_42 = @input.peek
          index_40_42 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_42 )

        when 38
          look_40_61 = @input.peek
          index_40_61 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_61 )

        when 39
          look_40_62 = @input.peek
          index_40_62 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_62 )

        when 40
          look_40_63 = @input.peek
          index_40_63 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 69
          elsif ( true )
            s = 36
          end
           
          @input.seek( index_40_63 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa40.description, 40, s, input )
          @dfa40.error( nva )
          raise nva
        end
        
        s
      end
      @dfa48 = DFA48.new( self, 48 )
      @dfa46 = DFA46.new( self, 46 )
      @dfa47 = DFA47.new( self, 47 )
      @dfa49 = DFA49.new( self, 49 )
      @dfa50 = DFA50.new( self, 50 ) do |s|
        case s
        when 0
          look_50_1 = @input.peek
          index_50_1 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_1 )

        when 1
          look_50_2 = @input.peek
          index_50_2 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_2 )

        when 2
          look_50_3 = @input.peek
          index_50_3 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_3 )

        when 3
          look_50_4 = @input.peek
          index_50_4 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_4 )

        when 4
          look_50_5 = @input.peek
          index_50_5 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_5 )

        when 5
          look_50_6 = @input.peek
          index_50_6 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_6 )

        when 6
          look_50_7 = @input.peek
          index_50_7 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_7 )

        when 7
          look_50_8 = @input.peek
          index_50_8 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_8 )

        when 8
          look_50_9 = @input.peek
          index_50_9 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_9 )

        when 9
          look_50_10 = @input.peek
          index_50_10 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_10 )

        when 10
          look_50_11 = @input.peek
          index_50_11 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_11 )

        when 11
          look_50_12 = @input.peek
          index_50_12 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_12 )

        when 12
          look_50_13 = @input.peek
          index_50_13 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_13 )

        when 13
          look_50_14 = @input.peek
          index_50_14 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_14 )

        when 14
          look_50_15 = @input.peek
          index_50_15 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_15 )

        when 15
          look_50_16 = @input.peek
          index_50_16 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_16 )

        when 16
          look_50_17 = @input.peek
          index_50_17 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_17 )

        when 17
          look_50_18 = @input.peek
          index_50_18 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_18 )

        when 18
          look_50_19 = @input.peek
          index_50_19 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_19 )

        when 19
          look_50_20 = @input.peek
          index_50_20 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_20 )

        when 20
          look_50_21 = @input.peek
          index_50_21 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_21 )

        when 21
          look_50_22 = @input.peek
          index_50_22 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_22 )

        when 22
          look_50_23 = @input.peek
          index_50_23 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_23 )

        when 23
          look_50_24 = @input.peek
          index_50_24 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred8_Jejune ) )
            s = 36
          elsif ( true )
            s = 25
          end
           
          @input.seek( index_50_24 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa50.description, 50, s, input )
          @dfa50.error( nva )
          raise nva
        end
        
        s
      end
      @dfa54 = DFA54.new( self, 54 )
      @dfa64 = DFA64.new( self, 64 ) do |s|
        case s
        when 0
          look_64_0 = @input.peek
          index_64_0 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_64_0 == GEQ || look_64_0 == GREATER || look_64_0 == INSTANCEOF || look_64_0 == RSHIFT || look_64_0 == RSHIFT3 || look_64_0 == LEQ || look_64_0 == LESS || look_64_0 == LSHIFT )
            s = 1
          elsif ( look_64_0 == IN ) and ( (  !( @InFor_stack.last && @InFor_stack.last.active )  ) )
            s = 9
          elsif ( look_64_0 == EOF || look_64_0.between?( AMP, GENERAL ) || look_64_0.between?( AND, GET ) || look_64_0 == HAT || look_64_0.between?( QMARK, ARROW ) || look_64_0 == RBRACE || look_64_0.between?( IF, RBRACK ) || look_64_0.between?( REGEX, INCR ) || look_64_0 == BREAK || look_64_0 == RETURN || look_64_0.between?( IS_DEFINED, CASE ) || look_64_0.between?( COLON, LBRACE ) || look_64_0.between?( COMMA, LBRACK ) || look_64_0.between?( SEMI, CONST ) || look_64_0.between?( SET, LET ) || look_64_0 == DDOC || look_64_0.between?( DECR, LPAREN ) || look_64_0 == DEFAULT || look_64_0 == DELETE || look_64_0.between?( DGENERAL, DIRECTIVE ) || look_64_0.between?( THIS, DO ) || look_64_0 == THROW || look_64_0 == TILDE || look_64_0 == TRUE || look_64_0.between?( NEQ, TRY ) || look_64_0.between?( NEQQ, NEW ) || look_64_0.between?( EACH, EQ ) || look_64_0.between?( UNTIL, OR ) || look_64_0 == FALSE || look_64_0 == VAR || look_64_0.between?( VOID, WHILE ) || look_64_0.between?( WITH, FUNCTION ) || look_64_0 == YIELD || look_64_0.between?( IS_UNDEFINED, DOC ) || look_64_0.between?( T__148, T__150 ) )
            s = 10
          elsif ( look_64_0 == PLUS )
            s = 61
          elsif ( look_64_0 == MINUS )
            s = 62
          end
           
          @input.seek( index_64_0 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa64.description, 64, s, input )
          @dfa64.error( nva )
          raise nva
        end
        
        s
      end
      @dfa67 = DFA67.new( self, 67 )
      @dfa69 = DFA69.new( self, 69 ) do |s|
        case s
        when 0
          look_69_0 = @input.peek
          index_69_0 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_69_0 == INCR )
            s = 1
          elsif ( look_69_0 == DECR )
            s = 2
          elsif ( look_69_0 == GEQ || look_69_0 == GREATER || look_69_0 == INSTANCEOF || look_69_0 == RSHIFT || look_69_0 == RSHIFT3 || look_69_0 == LEQ || look_69_0 == LESS || look_69_0 == SLASH || look_69_0.between?( LSHIFT, STAR ) || look_69_0 == MINUS || look_69_0 == MOD || look_69_0 == PLUS )
            s = 3
          elsif ( look_69_0 == IN ) and ( (  !( @InFor_stack.last && @InFor_stack.last.active )  ) )
            s = 16
          elsif ( look_69_0 == EOF || look_69_0.between?( AMP, GENERAL ) || look_69_0.between?( AND, GET ) || look_69_0 == HAT || look_69_0.between?( QMARK, ARROW ) || look_69_0 == RBRACE || look_69_0.between?( IF, RBRACK ) || look_69_0.between?( REGEX, BL_END ) || look_69_0 == BREAK || look_69_0 == RETURN || look_69_0.between?( IS_DEFINED, CASE ) || look_69_0.between?( COLON, LBRACE ) || look_69_0.between?( COMMA, LBRACK ) || look_69_0.between?( SEMI, CONST ) || look_69_0.between?( SET, LET ) || look_69_0 == DDOC || look_69_0 == LPAREN || look_69_0 == DEFAULT || look_69_0 == DELETE || look_69_0.between?( DGENERAL, DIRECTIVE ) || look_69_0.between?( THIS, DO ) || look_69_0 == THROW || look_69_0 == TILDE || look_69_0 == TRUE || look_69_0.between?( NEQ, TRY ) || look_69_0.between?( NEQQ, NEW ) || look_69_0.between?( EACH, EQ ) || look_69_0.between?( UNTIL, OR ) || look_69_0 == FALSE || look_69_0 == VAR || look_69_0.between?( VOID, WHILE ) || look_69_0.between?( WITH, FUNCTION ) || look_69_0 == YIELD || look_69_0.between?( IS_UNDEFINED, DOC ) || look_69_0.between?( T__148, T__150 ) )
            s = 17
          end
           
          @input.seek( index_69_0 )

        when 1
          look_69_1 = @input.peek
          index_69_1 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 93
          elsif ( true )
            s = 17
          end
           
          @input.seek( index_69_1 )

        when 2
          look_69_2 = @input.peek
          index_69_2 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 93
          elsif ( true )
            s = 17
          end
           
          @input.seek( index_69_2 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa69.description, 69, s, input )
          @dfa69.error( nva )
          raise nva
        end
        
        s
      end
      @dfa70 = DFA70.new( self, 70 ) do |s|
        case s
        when 0
          look_70_59 = @input.peek
          index_70_59 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 95
          elsif ( true )
            s = 1
          end
           
          @input.seek( index_70_59 )

        when 1
          look_70_73 = @input.peek
          index_70_73 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  same_line?  ) )
            s = 95
          elsif ( true )
            s = 1
          end
           
          @input.seek( index_70_73 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa70.description, 70, s, input )
          @dfa70.error( nva )
          raise nva
        end
        
        s
      end
      @dfa79 = DFA79.new( self, 79 ) do |s|
        case s
        when 0
          look_79_0 = @input.peek
          index_79_0 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_79_0 == GET )
            s = 1
          elsif ( look_79_0 == SET )
            s = 2
          elsif ( look_79_0 == ID )
            s = 3
          elsif ( look_79_0 == STRING )
            s = 4
          elsif ( look_79_0 == NUMBER )
            s = 5
          elsif ( look_79_0 == THIS )
            s = 6
          elsif ( look_79_0 == EACH || look_79_0.between?( DEF, OBJECT_DEF ) || look_79_0.between?( T__148, T__150 ) )
            s = 7
          elsif ( look_79_0 == GENERAL || look_79_0 == ARROW || look_79_0 == REGEX || look_79_0 == INCR || look_79_0 == IS_DEFINED || look_79_0 == LBRACE || look_79_0 == LBRACK || look_79_0 == DDOC || look_79_0.between?( DECR, LPAREN ) || look_79_0.between?( DGENERAL, MACRO ) || look_79_0 == MINUS || look_79_0 == TILDE || look_79_0 == DSTRING || look_79_0 == NOT || look_79_0 == PLUS || look_79_0.between?( IS_UNDEFINED, POUND ) || look_79_0 == EJS || look_79_0.between?( IVAR, DOC ) )
            s = 8
          elsif ( look_79_0 == NULL )
            s = 9
          elsif ( look_79_0 == TRUE )
            s = 11
          elsif ( look_79_0 == FALSE )
            s = 12
          elsif ( look_79_0 == UNDEFINED )
            s = 13
          elsif ( look_79_0 == FUNCTION )
            s = 14
          elsif ( look_79_0 == NEW )
            s = 25
          elsif ( look_79_0 == DELETE )
            s = 28
          elsif ( look_79_0 == VOID )
            s = 29
          elsif ( look_79_0 == TYPEOF )
            s = 30
          elsif ( look_79_0 == IF || look_79_0 == IN || look_79_0.between?( BREAK, RETURN ) || look_79_0 == CASE || look_79_0 == CATCH || look_79_0.between?( CONTINUE, LET ) || look_79_0 == DEFAULT || look_79_0 == SWITCH || look_79_0 == DO || look_79_0 == THROW || look_79_0 == TRY || look_79_0 == ELSE || look_79_0 == UNLESS || look_79_0 == UNTIL || look_79_0.between?( VAR, FINALLY ) || look_79_0 == FOR || look_79_0 == WHILE || look_79_0 == WITH || look_79_0 == YIELD ) and ( (  property_definition?  ) )
            s = 31
          elsif ( look_79_0 == AMP )
            s = 40
          end
           
          @input.seek( index_79_0 )

        when 1
          look_79_1 = @input.peek
          index_79_1 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_1 )

        when 2
          look_79_2 = @input.peek
          index_79_2 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_2 )

        when 3
          look_79_3 = @input.peek
          index_79_3 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_3 )

        when 4
          look_79_4 = @input.peek
          index_79_4 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_4 )

        when 5
          look_79_5 = @input.peek
          index_79_5 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_5 )

        when 6
          look_79_6 = @input.peek
          index_79_6 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_6 )

        when 7
          look_79_7 = @input.peek
          index_79_7 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_7 )

        when 8
          look_79_9 = @input.peek
          index_79_9 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_9 )

        when 9
          look_79_11 = @input.peek
          index_79_11 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_11 )

        when 10
          look_79_12 = @input.peek
          index_79_12 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_12 )

        when 11
          look_79_13 = @input.peek
          index_79_13 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_13 )

        when 12
          look_79_14 = @input.peek
          index_79_14 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_14 )

        when 13
          look_79_25 = @input.peek
          index_79_25 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_25 )

        when 14
          look_79_28 = @input.peek
          index_79_28 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_28 )

        when 15
          look_79_29 = @input.peek
          index_79_29 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_29 )

        when 16
          look_79_30 = @input.peek
          index_79_30 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  property_definition?  ) )
            s = 31
          elsif ( true )
            s = 8
          end
           
          @input.seek( index_79_30 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa79.description, 79, s, input )
          @dfa79.error( nva )
          raise nva
        end
        
        s
      end
      @dfa80 = DFA80.new( self, 80 )
      @dfa97 = DFA97.new( self, 97 ) do |s|
        case s
        when 0
          look_97_16 = @input.peek
          index_97_16 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_16 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          elsif ( look_97_16 == GENERAL || look_97_16 == GET || look_97_16 == ARROW || look_97_16 == REGEX || look_97_16 == INCR || look_97_16 == IS_DEFINED || look_97_16 == LBRACE || look_97_16 == LBRACK || look_97_16 == SET || look_97_16 == DDOC || look_97_16.between?( DECR, LPAREN ) || look_97_16 == DELETE || look_97_16.between?( DGENERAL, MACRO ) || look_97_16.between?( MINUS, THIS ) || look_97_16 == TILDE || look_97_16 == TRUE || look_97_16.between?( TYPEOF, NEW ) || look_97_16.between?( EACH, UNDEFINED ) || look_97_16 == NULL || look_97_16 == FALSE || look_97_16 == VOID || look_97_16.between?( FUNCTION, PLUS ) || look_97_16.between?( IS_UNDEFINED, DOC ) || look_97_16.between?( T__148, T__150 ) )
            s = 8
          end
           
          @input.seek( index_97_16 )

        when 1
          look_97_4 = @input.peek
          index_97_4 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_4 == AMP || look_97_4.between?( AMP_ASGN, GEQ ) || look_97_4 == AND || look_97_4 == GREATER || look_97_4 == HAT || look_97_4.between?( HAT_ASGN, QMARK ) || look_97_4 == ASGN || look_97_4 == RBRACK || look_97_4 == IN || look_97_4 == INCR || look_97_4 == INSTANCEOF || look_97_4 == RSHIFT || look_97_4 == RSHIFT3 || look_97_4.between?( LBRACE, RSHIFT_ASGN ) || look_97_4 == LEQ || look_97_4 == LESS || look_97_4 == SLASH || look_97_4.between?( SLASH_ASGN, LPAREN ) || look_97_4.between?( LSHIFT, STAR ) || look_97_4.between?( LSHIFT_ASGN, STAR_ASGN ) || look_97_4 == MINUS || look_97_4.between?( DO, MINUS_ASGN ) || look_97_4.between?( DOT, MOD ) || look_97_4 == MOD_ASGN || look_97_4 == NEQ || look_97_4 == NEQQ || look_97_4 == EQ || look_97_4.between?( EQQ, OR ) || look_97_4 == OR_ASGN || look_97_4 == PIPE || look_97_4 == PIPE_ASGN || look_97_4 == PLUS || look_97_4 == PLUS_ASGN )
            s = 8
          elsif ( look_97_4 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_4 )

        when 2
          look_97_0 = @input.peek
          index_97_0 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_0 == ID )
            s = 1
          elsif ( look_97_0 == STRING )
            s = 2
          elsif ( look_97_0 == NUMBER )
            s = 3
          elsif ( look_97_0 == THIS )
            s = 4
          elsif ( look_97_0 == COMMA ) and ( syntactic_predicate?( :synpred10_Jejune ) )
            s = 5
          elsif ( look_97_0 == RBRACK ) and ( syntactic_predicate?( :synpred10_Jejune ) )
            s = 6
          elsif ( look_97_0 == GET || look_97_0 == SET || look_97_0 == EACH || look_97_0.between?( DEF, OBJECT_DEF ) || look_97_0.between?( T__148, T__150 ) )
            s = 7
          elsif ( look_97_0 == GENERAL || look_97_0 == ARROW || look_97_0 == REGEX || look_97_0 == INCR || look_97_0 == IS_DEFINED || look_97_0 == LBRACE || look_97_0 == LBRACK || look_97_0 == DDOC || look_97_0.between?( DECR, LPAREN ) || look_97_0.between?( DGENERAL, MACRO ) || look_97_0 == MINUS || look_97_0 == TILDE || look_97_0 == DSTRING || look_97_0 == NOT || look_97_0 == PLUS || look_97_0.between?( IS_UNDEFINED, POUND ) || look_97_0 == EJS || look_97_0.between?( IVAR, DOC ) )
            s = 8
          elsif ( look_97_0 == NULL )
            s = 9
          elsif ( look_97_0 == TRUE )
            s = 10
          elsif ( look_97_0 == FALSE )
            s = 11
          elsif ( look_97_0 == UNDEFINED )
            s = 12
          elsif ( look_97_0 == FUNCTION )
            s = 13
          elsif ( look_97_0 == NEW )
            s = 14
          elsif ( look_97_0 == DELETE )
            s = 15
          elsif ( look_97_0 == VOID )
            s = 16
          elsif ( look_97_0 == TYPEOF )
            s = 17
          elsif ( look_97_0 == IF || look_97_0 == IN || look_97_0.between?( BREAK, RETURN ) || look_97_0 == CASE || look_97_0 == CATCH || look_97_0.between?( CONTINUE, LET ) || look_97_0 == DEFAULT || look_97_0 == SWITCH || look_97_0 == DO || look_97_0 == THROW || look_97_0 == TRY || look_97_0 == ELSE || look_97_0 == UNLESS || look_97_0 == UNTIL || look_97_0.between?( VAR, FINALLY ) || look_97_0 == FOR || look_97_0 == WHILE || look_97_0 == WITH || look_97_0 == YIELD ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_0 )

        when 3
          look_97_2 = @input.peek
          index_97_2 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_2 == AMP || look_97_2.between?( AMP_ASGN, GEQ ) || look_97_2 == AND || look_97_2 == GREATER || look_97_2 == HAT || look_97_2.between?( HAT_ASGN, QMARK ) || look_97_2 == ASGN || look_97_2 == RBRACK || look_97_2 == IN || look_97_2 == INCR || look_97_2 == INSTANCEOF || look_97_2 == RSHIFT || look_97_2 == RSHIFT3 || look_97_2.between?( LBRACE, RSHIFT_ASGN ) || look_97_2 == LEQ || look_97_2 == LESS || look_97_2 == SLASH || look_97_2.between?( SLASH_ASGN, LPAREN ) || look_97_2.between?( LSHIFT, STAR ) || look_97_2.between?( LSHIFT_ASGN, STAR_ASGN ) || look_97_2 == MINUS || look_97_2.between?( DO, MINUS_ASGN ) || look_97_2.between?( DOT, MOD ) || look_97_2 == MOD_ASGN || look_97_2 == NEQ || look_97_2 == NEQQ || look_97_2 == EQ || look_97_2.between?( EQQ, OR ) || look_97_2 == OR_ASGN || look_97_2 == PIPE || look_97_2 == PIPE_ASGN || look_97_2 == PLUS || look_97_2 == PLUS_ASGN )
            s = 8
          elsif ( look_97_2 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_2 )

        when 4
          look_97_9 = @input.peek
          index_97_9 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_9 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          elsif ( look_97_9 == AMP || look_97_9.between?( AMP_ASGN, GEQ ) || look_97_9 == AND || look_97_9 == GREATER || look_97_9 == HAT || look_97_9.between?( HAT_ASGN, QMARK ) || look_97_9 == ASGN || look_97_9 == RBRACK || look_97_9 == IN || look_97_9 == INCR || look_97_9 == INSTANCEOF || look_97_9 == RSHIFT || look_97_9 == RSHIFT3 || look_97_9.between?( LBRACE, RSHIFT_ASGN ) || look_97_9 == LEQ || look_97_9 == LESS || look_97_9 == SLASH || look_97_9.between?( SLASH_ASGN, LPAREN ) || look_97_9.between?( LSHIFT, STAR ) || look_97_9.between?( LSHIFT_ASGN, STAR_ASGN ) || look_97_9 == MINUS || look_97_9.between?( DO, MINUS_ASGN ) || look_97_9.between?( DOT, MOD ) || look_97_9 == MOD_ASGN || look_97_9 == NEQ || look_97_9 == NEQQ || look_97_9 == EQ || look_97_9.between?( EQQ, OR ) || look_97_9 == OR_ASGN || look_97_9 == PIPE || look_97_9 == PIPE_ASGN || look_97_9 == PLUS || look_97_9 == PLUS_ASGN )
            s = 8
          end
           
          @input.seek( index_97_9 )

        when 5
          look_97_15 = @input.peek
          index_97_15 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_15 == GENERAL || look_97_15 == GET || look_97_15 == ARROW || look_97_15 == REGEX || look_97_15 == INCR || look_97_15 == IS_DEFINED || look_97_15 == LBRACE || look_97_15 == LBRACK || look_97_15 == SET || look_97_15 == DDOC || look_97_15.between?( DECR, LPAREN ) || look_97_15 == DELETE || look_97_15.between?( DGENERAL, MACRO ) || look_97_15.between?( MINUS, THIS ) || look_97_15 == TILDE || look_97_15 == TRUE || look_97_15.between?( TYPEOF, NEW ) || look_97_15.between?( EACH, UNDEFINED ) || look_97_15 == NULL || look_97_15 == FALSE || look_97_15 == VOID || look_97_15.between?( FUNCTION, PLUS ) || look_97_15.between?( IS_UNDEFINED, DOC ) || look_97_15.between?( T__148, T__150 ) )
            s = 8
          elsif ( look_97_15 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_15 )

        when 6
          look_97_3 = @input.peek
          index_97_3 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_3 == AMP || look_97_3.between?( AMP_ASGN, GEQ ) || look_97_3 == AND || look_97_3 == GREATER || look_97_3 == HAT || look_97_3.between?( HAT_ASGN, QMARK ) || look_97_3 == ASGN || look_97_3 == RBRACK || look_97_3 == IN || look_97_3 == INCR || look_97_3 == INSTANCEOF || look_97_3 == RSHIFT || look_97_3 == RSHIFT3 || look_97_3.between?( LBRACE, RSHIFT_ASGN ) || look_97_3 == LEQ || look_97_3 == LESS || look_97_3 == SLASH || look_97_3.between?( SLASH_ASGN, LPAREN ) || look_97_3.between?( LSHIFT, STAR ) || look_97_3.between?( LSHIFT_ASGN, STAR_ASGN ) || look_97_3 == MINUS || look_97_3.between?( DO, MINUS_ASGN ) || look_97_3.between?( DOT, MOD ) || look_97_3 == MOD_ASGN || look_97_3 == NEQ || look_97_3 == NEQQ || look_97_3 == EQ || look_97_3.between?( EQQ, OR ) || look_97_3 == OR_ASGN || look_97_3 == PIPE || look_97_3 == PIPE_ASGN || look_97_3 == PLUS || look_97_3 == PLUS_ASGN )
            s = 8
          elsif ( look_97_3 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_3 )

        when 7
          look_97_7 = @input.peek
          index_97_7 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_7 == AMP || look_97_7.between?( AMP_ASGN, GEQ ) || look_97_7 == AND || look_97_7 == GREATER || look_97_7 == HAT || look_97_7.between?( HAT_ASGN, QMARK ) || look_97_7 == ASGN || look_97_7 == RBRACK || look_97_7 == IN || look_97_7 == INCR || look_97_7 == INSTANCEOF || look_97_7 == RSHIFT || look_97_7 == RSHIFT3 || look_97_7.between?( LBRACE, RSHIFT_ASGN ) || look_97_7 == LEQ || look_97_7 == LESS || look_97_7 == SLASH || look_97_7.between?( SLASH_ASGN, LPAREN ) || look_97_7.between?( LSHIFT, STAR ) || look_97_7.between?( LSHIFT_ASGN, STAR_ASGN ) || look_97_7 == MINUS || look_97_7.between?( DO, MINUS_ASGN ) || look_97_7.between?( DOT, MOD ) || look_97_7 == MOD_ASGN || look_97_7 == NEQ || look_97_7 == NEQQ || look_97_7 == EQ || look_97_7.between?( EQQ, OR ) || look_97_7 == OR_ASGN || look_97_7 == PIPE || look_97_7 == PIPE_ASGN || look_97_7 == PLUS || look_97_7 == PLUS_ASGN )
            s = 8
          elsif ( look_97_7 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_7 )

        when 8
          look_97_11 = @input.peek
          index_97_11 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_11 == AMP || look_97_11.between?( AMP_ASGN, GEQ ) || look_97_11 == AND || look_97_11 == GREATER || look_97_11 == HAT || look_97_11.between?( HAT_ASGN, QMARK ) || look_97_11 == ASGN || look_97_11 == RBRACK || look_97_11 == IN || look_97_11 == INCR || look_97_11 == INSTANCEOF || look_97_11 == RSHIFT || look_97_11 == RSHIFT3 || look_97_11.between?( LBRACE, RSHIFT_ASGN ) || look_97_11 == LEQ || look_97_11 == LESS || look_97_11 == SLASH || look_97_11.between?( SLASH_ASGN, LPAREN ) || look_97_11.between?( LSHIFT, STAR ) || look_97_11.between?( LSHIFT_ASGN, STAR_ASGN ) || look_97_11 == MINUS || look_97_11.between?( DO, MINUS_ASGN ) || look_97_11.between?( DOT, MOD ) || look_97_11 == MOD_ASGN || look_97_11 == NEQ || look_97_11 == NEQQ || look_97_11 == EQ || look_97_11.between?( EQQ, OR ) || look_97_11 == OR_ASGN || look_97_11 == PIPE || look_97_11 == PIPE_ASGN || look_97_11 == PLUS || look_97_11 == PLUS_ASGN )
            s = 8
          elsif ( look_97_11 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_11 )

        when 9
          look_97_10 = @input.peek
          index_97_10 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_10 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          elsif ( look_97_10 == AMP || look_97_10.between?( AMP_ASGN, GEQ ) || look_97_10 == AND || look_97_10 == GREATER || look_97_10 == HAT || look_97_10.between?( HAT_ASGN, QMARK ) || look_97_10 == ASGN || look_97_10 == RBRACK || look_97_10 == IN || look_97_10 == INCR || look_97_10 == INSTANCEOF || look_97_10 == RSHIFT || look_97_10 == RSHIFT3 || look_97_10.between?( LBRACE, RSHIFT_ASGN ) || look_97_10 == LEQ || look_97_10 == LESS || look_97_10 == SLASH || look_97_10.between?( SLASH_ASGN, LPAREN ) || look_97_10.between?( LSHIFT, STAR ) || look_97_10.between?( LSHIFT_ASGN, STAR_ASGN ) || look_97_10 == MINUS || look_97_10.between?( DO, MINUS_ASGN ) || look_97_10.between?( DOT, MOD ) || look_97_10 == MOD_ASGN || look_97_10 == NEQ || look_97_10 == NEQQ || look_97_10 == EQ || look_97_10.between?( EQQ, OR ) || look_97_10 == OR_ASGN || look_97_10 == PIPE || look_97_10 == PIPE_ASGN || look_97_10 == PLUS || look_97_10 == PLUS_ASGN )
            s = 8
          end
           
          @input.seek( index_97_10 )

        when 10
          look_97_14 = @input.peek
          index_97_14 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_14 == GENERAL || look_97_14 == GET || look_97_14 == ARROW || look_97_14 == REGEX || look_97_14 == LBRACE || look_97_14 == LBRACK || look_97_14 == SET || look_97_14 == DDOC || look_97_14 == LPAREN || look_97_14.between?( DGENERAL, MACRO ) || look_97_14 == THIS || look_97_14 == TRUE || look_97_14.between?( DSTRING, NEW ) || look_97_14 == EACH || look_97_14 == UNDEFINED || look_97_14 == NULL || look_97_14 == FALSE || look_97_14 == FUNCTION || look_97_14.between?( POUND, DOC ) || look_97_14.between?( T__148, T__150 ) )
            s = 8
          elsif ( look_97_14 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_14 )

        when 11
          look_97_17 = @input.peek
          index_97_17 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_17 == GENERAL || look_97_17 == GET || look_97_17 == ARROW || look_97_17 == REGEX || look_97_17 == INCR || look_97_17 == IS_DEFINED || look_97_17 == LBRACE || look_97_17 == LBRACK || look_97_17 == SET || look_97_17 == DDOC || look_97_17.between?( DECR, LPAREN ) || look_97_17 == DELETE || look_97_17.between?( DGENERAL, MACRO ) || look_97_17.between?( MINUS, THIS ) || look_97_17 == TILDE || look_97_17 == TRUE || look_97_17.between?( TYPEOF, NEW ) || look_97_17.between?( EACH, UNDEFINED ) || look_97_17 == NULL || look_97_17 == FALSE || look_97_17 == VOID || look_97_17.between?( FUNCTION, PLUS ) || look_97_17.between?( IS_UNDEFINED, DOC ) || look_97_17.between?( T__148, T__150 ) )
            s = 8
          elsif ( look_97_17 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_17 )

        when 12
          look_97_13 = @input.peek
          index_97_13 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_13 == GET || look_97_13 == SET || look_97_13 == LPAREN || look_97_13 == MACRO || look_97_13 == EACH || look_97_13.between?( DEF, OBJECT_DEF ) || look_97_13 == ID || look_97_13.between?( T__148, T__150 ) )
            s = 8
          elsif ( look_97_13 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_13 )

        when 13
          look_97_1 = @input.peek
          index_97_1 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_1 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          elsif ( look_97_1 == AMP || look_97_1.between?( AMP_ASGN, GEQ ) || look_97_1 == AND || look_97_1 == GREATER || look_97_1 == HAT || look_97_1.between?( HAT_ASGN, QMARK ) || look_97_1 == ASGN || look_97_1 == RBRACK || look_97_1 == IN || look_97_1 == INCR || look_97_1 == INSTANCEOF || look_97_1 == RSHIFT || look_97_1 == RSHIFT3 || look_97_1.between?( LBRACE, RSHIFT_ASGN ) || look_97_1 == LEQ || look_97_1 == LESS || look_97_1 == SLASH || look_97_1.between?( SLASH_ASGN, LPAREN ) || look_97_1.between?( LSHIFT, STAR ) || look_97_1.between?( LSHIFT_ASGN, STAR_ASGN ) || look_97_1 == MINUS || look_97_1.between?( DO, MINUS_ASGN ) || look_97_1.between?( DOT, MOD ) || look_97_1 == MOD_ASGN || look_97_1 == NEQ || look_97_1 == NEQQ || look_97_1 == EQ || look_97_1.between?( EQQ, OR ) || look_97_1 == OR_ASGN || look_97_1 == PIPE || look_97_1 == PIPE_ASGN || look_97_1 == PLUS || look_97_1 == PLUS_ASGN )
            s = 8
          end
           
          @input.seek( index_97_1 )

        when 14
          look_97_12 = @input.peek
          index_97_12 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_97_12 == AMP || look_97_12.between?( AMP_ASGN, GEQ ) || look_97_12 == AND || look_97_12 == GREATER || look_97_12 == HAT || look_97_12.between?( HAT_ASGN, QMARK ) || look_97_12 == ASGN || look_97_12 == RBRACK || look_97_12 == IN || look_97_12 == INCR || look_97_12 == INSTANCEOF || look_97_12 == RSHIFT || look_97_12 == RSHIFT3 || look_97_12.between?( LBRACE, RSHIFT_ASGN ) || look_97_12 == LEQ || look_97_12 == LESS || look_97_12 == SLASH || look_97_12.between?( SLASH_ASGN, LPAREN ) || look_97_12.between?( LSHIFT, STAR ) || look_97_12.between?( LSHIFT_ASGN, STAR_ASGN ) || look_97_12 == MINUS || look_97_12.between?( DO, MINUS_ASGN ) || look_97_12.between?( DOT, MOD ) || look_97_12 == MOD_ASGN || look_97_12 == NEQ || look_97_12 == NEQQ || look_97_12 == EQ || look_97_12.between?( EQQ, OR ) || look_97_12 == OR_ASGN || look_97_12 == PIPE || look_97_12 == PIPE_ASGN || look_97_12 == PLUS || look_97_12 == PLUS_ASGN )
            s = 8
          elsif ( look_97_12 == COLON ) and ( (  @input.peek( 2 ) == COLON  ) )
            s = 18
          end
           
          @input.seek( index_97_12 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa97.description, 97, s, input )
          @dfa97.error( nva )
          raise nva
        end
        
        s
      end
      @dfa100 = DFA100.new( self, 100 )
      @dfa101 = DFA101.new( self, 101 )

    end
    TOKENS_FOLLOWING_source_elements_IN_program_1733 = Set[ 1 ]
    TOKENS_FOLLOWING_statement_IN_source_elements_1780 = Set[ 1, 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_statement_IN_source_elements_1785 = Set[ 1, 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_statement_block_IN_block_1808 = Set[ 1 ]
    TOKENS_FOLLOWING_statement_IN_block_1814 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACE_IN_statement_block_1827 = Set[ 5, 11, 22, 24, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_statement_list_IN_statement_block_1830 = Set[ 24 ]
    TOKENS_FOLLOWING_RBRACE_IN_statement_block_1833 = Set[ 1 ]
    TOKENS_FOLLOWING_statement_IN_statement_list_1859 = Set[ 1, 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_LPAREN_IN_clause_1878 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_list_IN_clause_1880 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAREN_IN_clause_1882 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_statement_IN_statement_1902 = Set[ 1 ]
    TOKENS_FOLLOWING_const_statement_IN_statement_1908 = Set[ 1 ]
    TOKENS_FOLLOWING_empty_statement_IN_statement_1914 = Set[ 1 ]
    TOKENS_FOLLOWING_function_IN_statement_1927 = Set[ 1 ]
    TOKENS_FOLLOWING_EJS_IN_statement_1940 = Set[ 1 ]
    TOKENS_FOLLOWING_DIRECTIVE_IN_statement_1947 = Set[ 1 ]
    TOKENS_FOLLOWING_class_statement_IN_statement_1954 = Set[ 1 ]
    TOKENS_FOLLOWING_macro_IN_statement_1960 = Set[ 1 ]
    TOKENS_FOLLOWING_labelled_statement_IN_statement_1976 = Set[ 1 ]
    TOKENS_FOLLOWING_let_statement_IN_statement_1989 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_statement_IN_statement_1995 = Set[ 1 ]
    TOKENS_FOLLOWING_if_statement_IN_statement_2001 = Set[ 1 ]
    TOKENS_FOLLOWING_while_statement_IN_statement_2007 = Set[ 1 ]
    TOKENS_FOLLOWING_do_while_statement_IN_statement_2013 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_statement_2019 = Set[ 1 ]
    TOKENS_FOLLOWING_continue_statement_IN_statement_2025 = Set[ 1 ]
    TOKENS_FOLLOWING_break_statement_IN_statement_2031 = Set[ 1 ]
    TOKENS_FOLLOWING_yield_statement_IN_statement_2037 = Set[ 1 ]
    TOKENS_FOLLOWING_return_statement_IN_statement_2043 = Set[ 1 ]
    TOKENS_FOLLOWING_with_statement_IN_statement_2049 = Set[ 1 ]
    TOKENS_FOLLOWING_switch_statement_IN_statement_2055 = Set[ 1 ]
    TOKENS_FOLLOWING_throw_statement_IN_statement_2061 = Set[ 1 ]
    TOKENS_FOLLOWING_try_statement_IN_statement_2067 = Set[ 1 ]
    TOKENS_FOLLOWING_SEMI_IN_empty_statement_2084 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_list_IN_expression_statement_2099 = Set[ 54 ]
    TOKENS_FOLLOWING_statement_end_IN_expression_statement_2101 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_labelled_statement_2115 = Set[ 46 ]
    TOKENS_FOLLOWING_COLON_IN_labelled_statement_2118 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_labelled_statement_2121 = Set[ 1 ]
    TOKENS_FOLLOWING_SEMI_IN_statement_end_2150 = Set[ 1 ]
    TOKENS_FOLLOWING_EOF_IN_statement_end_2167 = Set[ 1 ]
    TOKENS_FOLLOWING_TRY_IN_try_statement_2203 = Set[ 47 ]
    TOKENS_FOLLOWING_statement_block_IN_try_statement_2211 = Set[ 1, 43, 112 ]
    TOKENS_FOLLOWING_finally_clause_IN_try_statement_2227 = Set[ 1 ]
    TOKENS_FOLLOWING_catch_clause_IN_try_statement_2244 = Set[ 1, 43, 112 ]
    TOKENS_FOLLOWING_finally_clause_IN_try_statement_2268 = Set[ 1 ]
    TOKENS_FOLLOWING_CATCH_IN_catch_clause_2330 = Set[ 65 ]
    TOKENS_FOLLOWING_LPAREN_IN_catch_clause_2333 = Set[ 132 ]
    TOKENS_FOLLOWING_catch_selector_IN_catch_clause_2336 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAREN_IN_catch_clause_2339 = Set[ 47 ]
    TOKENS_FOLLOWING_statement_block_IN_catch_clause_2342 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_catch_selector_2376 = Set[ 1, 26, 102 ]
    TOKENS_FOLLOWING_IF_IN_catch_selector_2384 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_catch_selector_2391 = Set[ 1 ]
    TOKENS_FOLLOWING_UNLESS_IN_catch_selector_2399 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_catch_selector_2402 = Set[ 1 ]
    TOKENS_FOLLOWING_FINALLY_IN_finally_clause_2422 = Set[ 47 ]
    TOKENS_FOLLOWING_statement_block_IN_finally_clause_2424 = Set[ 1 ]
    TOKENS_FOLLOWING_WITH_IN_with_statement_2451 = Set[ 65 ]
    TOKENS_FOLLOWING_clause_IN_with_statement_2453 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_with_statement_2455 = Set[ 1 ]
    TOKENS_FOLLOWING_VAR_IN_variable_statement_2484 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_variable_declaration_list_IN_variable_statement_2487 = Set[ 54 ]
    TOKENS_FOLLOWING_statement_end_IN_variable_statement_2489 = Set[ 1 ]
    TOKENS_FOLLOWING_CONST_IN_const_statement_2503 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_variable_declaration_list_IN_const_statement_2506 = Set[ 54 ]
    TOKENS_FOLLOWING_statement_end_IN_const_statement_2508 = Set[ 1 ]
    TOKENS_FOLLOWING_LET_IN_let_statement_2522 = Set[ 65 ]
    TOKENS_FOLLOWING_LPAREN_IN_let_statement_2525 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_variable_declaration_list_IN_let_statement_2528 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAREN_IN_let_statement_2530 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_let_statement_2533 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_declaration_IN_variable_declaration_list_2546 = Set[ 1, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_variable_declaration_list_2550 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_variable_declaration_IN_variable_declaration_list_2553 = Set[ 1, 49 ]
    TOKENS_FOLLOWING_declaration_target_IN_variable_declaration_2569 = Set[ 1, 25 ]
    TOKENS_FOLLOWING_ASGN_IN_variable_declaration_2573 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_variable_declaration_2577 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_declaration_target_2593 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_declaration_target_IN_declaration_target_2595 = Set[ 27, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_declaration_target_2599 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_declaration_target_IN_declaration_target_2601 = Set[ 27, 49 ]
    TOKENS_FOLLOWING_RBRACK_IN_declaration_target_2606 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACE_IN_declaration_target_2623 = Set[ 11, 26, 29, 34, 35, 36, 40, 43, 57, 58, 59, 67, 70, 75, 78, 79, 81, 87, 90, 93, 95, 97, 99, 100, 101, 102, 105, 109, 111, 112, 114, 115, 117, 120, 121, 123, 128, 129, 130, 132, 133, 134, 148, 149, 150 ]
    TOKENS_FOLLOWING_declaration_key_IN_declaration_target_2625 = Set[ 24, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_declaration_target_2629 = Set[ 11, 26, 29, 34, 35, 36, 40, 43, 57, 58, 59, 67, 70, 75, 78, 79, 81, 87, 90, 93, 95, 97, 99, 100, 101, 102, 105, 109, 111, 112, 114, 115, 117, 120, 121, 123, 128, 129, 130, 132, 133, 134, 148, 149, 150 ]
    TOKENS_FOLLOWING_declaration_key_IN_declaration_target_2631 = Set[ 24, 49 ]
    TOKENS_FOLLOWING_RBRACE_IN_declaration_target_2636 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_name_IN_declaration_target_2659 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_declaration_key_2680 = Set[ 46 ]
    TOKENS_FOLLOWING_STRING_IN_declaration_key_2684 = Set[ 46 ]
    TOKENS_FOLLOWING_NUMBER_IN_declaration_key_2688 = Set[ 46 ]
    TOKENS_FOLLOWING_reserved_IN_declaration_key_2692 = Set[ 46 ]
    TOKENS_FOLLOWING_COLON_IN_declaration_key_2698 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_declaration_target_IN_declaration_key_2701 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_if_statement_2720 = Set[ 65 ]
    TOKENS_FOLLOWING_UNLESS_IN_if_statement_2725 = Set[ 65 ]
    TOKENS_FOLLOWING_clause_IN_if_statement_2730 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_if_statement_2732 = Set[ 1, 100 ]
    TOKENS_FOLLOWING_ELSE_IN_if_statement_2736 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_if_statement_2739 = Set[ 1 ]
    TOKENS_FOLLOWING_NOT_IN_browser_block_2757 = Set[ 148, 149, 150 ]
    TOKENS_FOLLOWING_browser_name_IN_browser_block_2759 = Set[ 47 ]
    TOKENS_FOLLOWING_statement_block_IN_browser_block_2762 = Set[ 1, 100 ]
    TOKENS_FOLLOWING_ELSE_IN_browser_block_2766 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_browser_block_2769 = Set[ 1 ]
    TOKENS_FOLLOWING_SWITCH_IN_switch_statement_2785 = Set[ 65 ]
    TOKENS_FOLLOWING_LPAREN_IN_switch_statement_2788 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_list_IN_switch_statement_2791 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAREN_IN_switch_statement_2794 = Set[ 47 ]
    TOKENS_FOLLOWING_LBRACE_IN_switch_statement_2801 = Set[ 24, 40, 67 ]
    TOKENS_FOLLOWING_case_clause_IN_switch_statement_2809 = Set[ 24, 40, 67 ]
    TOKENS_FOLLOWING_default_clause_IN_switch_statement_2820 = Set[ 24, 40 ]
    TOKENS_FOLLOWING_case_clause_IN_switch_statement_2825 = Set[ 24, 40 ]
    TOKENS_FOLLOWING_RBRACE_IN_switch_statement_2838 = Set[ 1 ]
    TOKENS_FOLLOWING_CASE_IN_case_clause_2873 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_list_IN_case_clause_2877 = Set[ 46 ]
    TOKENS_FOLLOWING_COLON_IN_case_clause_2880 = Set[ 1, 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_statement_list_IN_case_clause_2884 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFAULT_IN_default_clause_2900 = Set[ 46 ]
    TOKENS_FOLLOWING_COLON_IN_default_clause_2904 = Set[ 1, 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_statement_list_IN_default_clause_2908 = Set[ 1 ]
    TOKENS_FOLLOWING_DO_IN_do_while_statement_2926 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_do_while_statement_2928 = Set[ 105, 117 ]
    TOKENS_FOLLOWING_WHILE_IN_do_while_statement_2936 = Set[ 65 ]
    TOKENS_FOLLOWING_clause_IN_do_while_statement_2938 = Set[ 54 ]
    TOKENS_FOLLOWING_statement_end_IN_do_while_statement_2940 = Set[ 1 ]
    TOKENS_FOLLOWING_UNTIL_IN_do_while_statement_2960 = Set[ 65 ]
    TOKENS_FOLLOWING_clause_IN_do_while_statement_2962 = Set[ 54 ]
    TOKENS_FOLLOWING_statement_end_IN_do_while_statement_2964 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_statement_3010 = Set[ 65 ]
    TOKENS_FOLLOWING_clause_IN_while_statement_3013 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_while_statement_3015 = Set[ 1 ]
    TOKENS_FOLLOWING_UNTIL_IN_while_statement_3021 = Set[ 65 ]
    TOKENS_FOLLOWING_clause_IN_while_statement_3024 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_while_statement_3026 = Set[ 1 ]
    TOKENS_FOLLOWING_for_each_in_statement_IN_for_loop_3046 = Set[ 1 ]
    TOKENS_FOLLOWING_for_in_statement_IN_for_loop_3082 = Set[ 1 ]
    TOKENS_FOLLOWING_for_statement_IN_for_loop_3088 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_statement_3101 = Set[ 65 ]
    TOKENS_FOLLOWING_LPAREN_IN_for_statement_3108 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 54, 57, 59, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 111, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_for_statement_initialiser_part_IN_for_statement_3117 = Set[ 54 ]
    TOKENS_FOLLOWING_blank_IN_for_statement_3121 = Set[ 54 ]
    TOKENS_FOLLOWING_SEMI_IN_for_statement_3125 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 54, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_list_IN_for_statement_3134 = Set[ 54 ]
    TOKENS_FOLLOWING_blank_IN_for_statement_3138 = Set[ 54 ]
    TOKENS_FOLLOWING_SEMI_IN_for_statement_3143 = Set[ 5, 11, 22, 30, 32, 38, 39, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_list_IN_for_statement_3152 = Set[ 39 ]
    TOKENS_FOLLOWING_blank_IN_for_statement_3156 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAREN_IN_for_statement_3164 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_for_statement_3171 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_list_IN_for_statement_initialiser_part_3208 = Set[ 1 ]
    TOKENS_FOLLOWING_VAR_IN_for_statement_initialiser_part_3216 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_LET_IN_for_statement_initialiser_part_3221 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_variable_declaration_list_IN_for_statement_initialiser_part_3227 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_each_in_statement_3240 = Set[ 97 ]
    TOKENS_FOLLOWING_EACH_IN_for_each_in_statement_3242 = Set[ 65 ]
    TOKENS_FOLLOWING_LPAREN_IN_for_each_in_statement_3244 = Set[ 5, 11, 22, 30, 47, 50, 57, 59, 61, 65, 73, 74, 78, 87, 94, 95, 97, 99, 101, 109, 111, 121, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_for_in_statement_initialiser_part_IN_for_each_in_statement_3247 = Set[ 29 ]
    TOKENS_FOLLOWING_IN_IN_for_each_in_statement_3250 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_for_each_in_statement_3253 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAREN_IN_for_each_in_statement_3256 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_for_each_in_statement_3259 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_in_statement_3294 = Set[ 65 ]
    TOKENS_FOLLOWING_LPAREN_IN_for_in_statement_3297 = Set[ 5, 11, 22, 30, 47, 50, 57, 59, 61, 65, 73, 74, 78, 87, 94, 95, 97, 99, 101, 109, 111, 121, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_for_in_statement_initialiser_part_IN_for_in_statement_3300 = Set[ 29 ]
    TOKENS_FOLLOWING_IN_IN_for_in_statement_3303 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_for_in_statement_3306 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAREN_IN_for_in_statement_3309 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_for_in_statement_3312 = Set[ 1 ]
    TOKENS_FOLLOWING_VAR_IN_for_in_statement_initialiser_part_3369 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_LET_IN_for_in_statement_initialiser_part_3374 = Set[ 11, 47, 50, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_declaration_target_IN_for_in_statement_initialiser_part_3380 = Set[ 1 ]
    TOKENS_FOLLOWING_member_IN_for_in_statement_initialiser_part_3386 = Set[ 1 ]
    TOKENS_FOLLOWING_CONTINUE_IN_continue_statement_3403 = Set[ 54, 132 ]
    TOKENS_FOLLOWING_ID_IN_continue_statement_3411 = Set[ 54 ]
    TOKENS_FOLLOWING_statement_end_IN_continue_statement_3416 = Set[ 1 ]
    TOKENS_FOLLOWING_BREAK_IN_break_statement_3430 = Set[ 54, 132 ]
    TOKENS_FOLLOWING_ID_IN_break_statement_3438 = Set[ 54 ]
    TOKENS_FOLLOWING_statement_end_IN_break_statement_3443 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_return_statement_3457 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 54, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_list_IN_return_statement_3465 = Set[ 54 ]
    TOKENS_FOLLOWING_statement_end_IN_return_statement_3470 = Set[ 1 ]
    TOKENS_FOLLOWING_YIELD_IN_yield_statement_3484 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 54, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_list_IN_yield_statement_3492 = Set[ 54 ]
    TOKENS_FOLLOWING_statement_end_IN_yield_statement_3497 = Set[ 1 ]
    TOKENS_FOLLOWING_THROW_IN_throw_statement_3513 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 54, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_list_IN_throw_statement_3521 = Set[ 54 ]
    TOKENS_FOLLOWING_statement_end_IN_throw_statement_3526 = Set[ 1 ]
    TOKENS_FOLLOWING_CLASS_DEF_IN_class_statement_3544 = Set[ 132 ]
    TOKENS_FOLLOWING_ID_IN_class_statement_3547 = Set[ 47 ]
    TOKENS_FOLLOWING_LBRACE_IN_class_statement_3549 = Set[ 11, 24, 54, 57, 74, 97, 111, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_class_member_IN_class_statement_3552 = Set[ 11, 24, 54, 57, 74, 97, 111, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_RBRACE_IN_class_statement_3555 = Set[ 1 ]
    TOKENS_FOLLOWING_OBJECT_DEF_IN_class_statement_3562 = Set[ 111, 132 ]
    TOKENS_FOLLOWING_VAR_IN_class_statement_3565 = Set[ 132 ]
    TOKENS_FOLLOWING_ID_IN_class_statement_3568 = Set[ 47 ]
    TOKENS_FOLLOWING_LBRACE_IN_class_statement_3570 = Set[ 11, 24, 54, 57, 74, 97, 111, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_class_member_IN_class_statement_3573 = Set[ 11, 24, 54, 57, 74, 97, 111, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_RBRACE_IN_class_statement_3576 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_statement_IN_class_member_3590 = Set[ 1 ]
    TOKENS_FOLLOWING_DEF_IN_class_member_3596 = Set[ 11, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_variable_name_IN_class_member_3599 = Set[ 47, 65 ]
    TOKENS_FOLLOWING_function_parameters_IN_class_member_3601 = Set[ 47 ]
    TOKENS_FOLLOWING_statement_block_IN_class_member_3604 = Set[ 1 ]
    TOKENS_FOLLOWING_GET_IN_class_member_3610 = Set[ 132 ]
    TOKENS_FOLLOWING_ID_IN_class_member_3613 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_function_parameters_IN_class_member_3615 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_class_member_3618 = Set[ 1 ]
    TOKENS_FOLLOWING_SET_IN_class_member_3624 = Set[ 132 ]
    TOKENS_FOLLOWING_ID_IN_class_member_3627 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_function_parameters_IN_class_member_3629 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_class_member_3632 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_name_IN_class_member_3638 = Set[ 25 ]
    TOKENS_FOLLOWING_ASGN_IN_class_member_3640 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_class_member_3643 = Set[ 1 ]
    TOKENS_FOLLOWING_SEMI_IN_class_member_3649 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_expression_list_3667 = Set[ 1, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_expression_list_3671 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_expression_list_3674 = Set[ 1, 49 ]
    TOKENS_FOLLOWING_member_IN_expression_3699 = Set[ 7, 20, 25, 48, 51, 63, 71, 72, 80, 86, 110, 119, 125 ]
    TOKENS_FOLLOWING_assignment_op_IN_expression_3701 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_expression_3704 = Set[ 1 ]
    TOKENS_FOLLOWING_conditional_IN_expression_3710 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_assignment_op_0 = Set[ 1 ]
    TOKENS_FOLLOWING_logical_or_IN_conditional_3808 = Set[ 1, 21 ]
    TOKENS_FOLLOWING_QMARK_IN_conditional_3813 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_conditional_3819 = Set[ 46 ]
    TOKENS_FOLLOWING_COLON_IN_conditional_3822 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_conditional_3828 = Set[ 1 ]
    TOKENS_FOLLOWING_logical_and_IN_logical_or_3844 = Set[ 1, 107 ]
    TOKENS_FOLLOWING_OR_IN_logical_or_3849 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_logical_and_IN_logical_or_3853 = Set[ 1, 107 ]
    TOKENS_FOLLOWING_bit_or_IN_logical_and_3869 = Set[ 1, 10 ]
    TOKENS_FOLLOWING_AND_IN_logical_and_3874 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_bit_or_IN_logical_and_3878 = Set[ 1, 10 ]
    TOKENS_FOLLOWING_bit_xor_IN_bit_or_3894 = Set[ 1, 116 ]
    TOKENS_FOLLOWING_PIPE_IN_bit_or_3898 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_bit_xor_IN_bit_or_3902 = Set[ 1, 116 ]
    TOKENS_FOLLOWING_bit_and_IN_bit_xor_3918 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_HAT_IN_bit_xor_3923 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_bit_and_IN_bit_xor_3927 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_equality_IN_bit_and_3943 = Set[ 1, 4 ]
    TOKENS_FOLLOWING_AMP_IN_bit_and_3948 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_equality_IN_bit_and_3952 = Set[ 1, 4 ]
    TOKENS_FOLLOWING_relation_IN_equality_3968 = Set[ 1, 89, 92, 103, 106 ]
    TOKENS_FOLLOWING_EQ_IN_equality_3986 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_NEQ_IN_equality_3991 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_EQQ_IN_equality_3996 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_NEQQ_IN_equality_4001 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_relation_IN_equality_4013 = Set[ 1, 89, 92, 103, 106 ]
    TOKENS_FOLLOWING_shift_IN_relation_4033 = Set[ 1, 8, 14, 29, 35, 53, 56 ]
    TOKENS_FOLLOWING_relation_op_IN_relation_4038 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_shift_IN_relation_4042 = Set[ 1, 8, 14, 29, 35, 53, 56 ]
    TOKENS_FOLLOWING_LESS_IN_relation_op_4060 = Set[ 1 ]
    TOKENS_FOLLOWING_GREATER_IN_relation_op_4066 = Set[ 1 ]
    TOKENS_FOLLOWING_LEQ_IN_relation_op_4072 = Set[ 1 ]
    TOKENS_FOLLOWING_GEQ_IN_relation_op_4078 = Set[ 1 ]
    TOKENS_FOLLOWING_INSTANCEOF_IN_relation_op_4084 = Set[ 1 ]
    TOKENS_FOLLOWING_IN_IN_relation_op_4093 = Set[ 1 ]
    TOKENS_FOLLOWING_add_IN_shift_4106 = Set[ 1, 42, 45, 68 ]
    TOKENS_FOLLOWING_LSHIFT_IN_shift_4113 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_RSHIFT_IN_shift_4118 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_RSHIFT3_IN_shift_4123 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_add_IN_shift_4129 = Set[ 1, 42, 45, 68 ]
    TOKENS_FOLLOWING_mult_IN_add_4145 = Set[ 1, 77, 122 ]
    TOKENS_FOLLOWING_PLUS_IN_add_4152 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_MINUS_IN_add_4157 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_mult_IN_add_4163 = Set[ 1, 77, 122 ]
    TOKENS_FOLLOWING_unary_IN_mult_4179 = Set[ 1, 60, 69, 83 ]
    TOKENS_FOLLOWING_STAR_IN_mult_4186 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_SLASH_IN_mult_4191 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_MOD_IN_mult_4196 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_mult_4202 = Set[ 1, 60, 69, 83 ]
    TOKENS_FOLLOWING_DELETE_IN_unary_4218 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4224 = Set[ 1 ]
    TOKENS_FOLLOWING_VOID_IN_unary_4240 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4248 = Set[ 1 ]
    TOKENS_FOLLOWING_TYPEOF_IN_unary_4264 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4270 = Set[ 1 ]
    TOKENS_FOLLOWING_IS_DEFINED_IN_unary_4286 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4290 = Set[ 1 ]
    TOKENS_FOLLOWING_IS_UNDEFINED_IN_unary_4306 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4308 = Set[ 1 ]
    TOKENS_FOLLOWING_INCR_IN_unary_4324 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4334 = Set[ 1 ]
    TOKENS_FOLLOWING_DECR_IN_unary_4350 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4360 = Set[ 1 ]
    TOKENS_FOLLOWING_PLUS_IN_unary_4376 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4387 = Set[ 1 ]
    TOKENS_FOLLOWING_MINUS_IN_unary_4404 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4415 = Set[ 1 ]
    TOKENS_FOLLOWING_TILDE_IN_unary_4432 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4443 = Set[ 1 ]
    TOKENS_FOLLOWING_NOT_IN_unary_4459 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_unary_IN_unary_4470 = Set[ 1 ]
    TOKENS_FOLLOWING_postfix_IN_unary_4486 = Set[ 1 ]
    TOKENS_FOLLOWING_member_IN_postfix_4514 = Set[ 1, 32, 64 ]
    TOKENS_FOLLOWING_INCR_IN_postfix_4533 = Set[ 1 ]
    TOKENS_FOLLOWING_DECR_IN_postfix_4554 = Set[ 1 ]
    TOKENS_FOLLOWING_receiver_IN_member_4613 = Set[ 1, 47, 50, 65, 79, 82 ]
    TOKENS_FOLLOWING_accessor_IN_member_4630 = Set[ 1, 47, 50, 65, 79, 82 ]
    TOKENS_FOLLOWING_arguments_IN_member_4645 = Set[ 1, 47, 50, 65, 79, 82 ]
    TOKENS_FOLLOWING_iteration_IN_member_4679 = Set[ 1, 47, 50, 65, 79, 82 ]
    TOKENS_FOLLOWING_LBRACK_IN_accessor_4714 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_accessor_4717 = Set[ 27 ]
    TOKENS_FOLLOWING_RBRACK_IN_accessor_4720 = Set[ 1 ]
    TOKENS_FOLLOWING_DOT_IN_accessor_4740 = Set[ 11, 26, 29, 34, 35, 36, 40, 43, 57, 58, 59, 67, 70, 75, 78, 79, 81, 87, 90, 93, 95, 97, 99, 100, 101, 102, 105, 109, 111, 112, 114, 115, 117, 120, 121, 123, 128, 129, 130, 132, 133, 134, 148, 149, 150 ]
    TOKENS_FOLLOWING_ID_IN_accessor_4745 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_accessor_4749 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_accessor_4753 = Set[ 1 ]
    TOKENS_FOLLOWING_reserved_IN_accessor_4757 = Set[ 1 ]
    TOKENS_FOLLOWING_primary_IN_receiver_4774 = Set[ 1 ]
    TOKENS_FOLLOWING_function_IN_receiver_4785 = Set[ 1 ]
    TOKENS_FOLLOWING_EJS_IN_receiver_4795 = Set[ 1 ]
    TOKENS_FOLLOWING_NEW_IN_receiver_4828 = Set[ 5, 11, 22, 30, 47, 50, 57, 61, 65, 73, 74, 78, 87, 94, 95, 97, 99, 101, 109, 121, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_new_target_IN_receiver_4830 = Set[ 1, 65 ]
    TOKENS_FOLLOWING_arguments_IN_receiver_4832 = Set[ 1 ]
    TOKENS_FOLLOWING_receiver_IN_new_target_4861 = Set[ 1, 50, 82 ]
    TOKENS_FOLLOWING_accessor_IN_new_target_4875 = Set[ 1, 50, 82 ]
    TOKENS_FOLLOWING_LPAREN_IN_arguments_4895 = Set[ 4, 5, 11, 22, 26, 29, 30, 32, 34, 35, 36, 38, 39, 40, 43, 47, 50, 57, 58, 59, 61, 64, 65, 67, 70, 73, 74, 75, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 100, 101, 102, 105, 109, 111, 112, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_argument_IN_arguments_4900 = Set[ 39, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_arguments_4905 = Set[ 4, 5, 11, 22, 26, 29, 30, 32, 34, 35, 36, 38, 40, 43, 47, 50, 57, 58, 59, 61, 64, 65, 67, 70, 73, 74, 75, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 100, 101, 102, 105, 109, 111, 112, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_argument_IN_arguments_4907 = Set[ 39, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_arguments_4913 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAREN_IN_arguments_4919 = Set[ 1 ]
    TOKENS_FOLLOWING_property_definition_IN_argument_4946 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_argument_4952 = Set[ 1 ]
    TOKENS_FOLLOWING_AMP_IN_argument_4965 = Set[ 1 ]
    TOKENS_FOLLOWING_MACRO_IN_macro_4986 = Set[ 11, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_variable_name_IN_macro_4989 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_function_parameters_IN_macro_4991 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_macro_4994 = Set[ 1 ]
    TOKENS_FOLLOWING_function_literal_IN_function_5009 = Set[ 1, 43, 112 ]
    TOKENS_FOLLOWING_catch_clause_IN_function_5023 = Set[ 1, 43, 112 ]
    TOKENS_FOLLOWING_finally_clause_IN_function_5042 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_literal_5064 = Set[ 11, 57, 65, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_variable_name_IN_function_literal_5067 = Set[ 65 ]
    TOKENS_FOLLOWING_function_parameters_IN_function_literal_5070 = Set[ 47 ]
    TOKENS_FOLLOWING_statement_block_IN_function_literal_5072 = Set[ 1 ]
    TOKENS_FOLLOWING_ARROW_IN_function_literal_5078 = Set[ 11, 47, 57, 65, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_variable_name_IN_function_literal_5081 = Set[ 47, 65 ]
    TOKENS_FOLLOWING_function_parameters_IN_function_literal_5084 = Set[ 47 ]
    TOKENS_FOLLOWING_statement_block_IN_function_literal_5087 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACE_IN_iteration_5112 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 116, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_iteration_parameters_IN_iteration_5114 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_statement_list_IN_iteration_5116 = Set[ 24 ]
    TOKENS_FOLLOWING_RBRACE_IN_iteration_5118 = Set[ 1 ]
    TOKENS_FOLLOWING_DO_IN_iteration_5142 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 116, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_iteration_parameters_IN_iteration_5144 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_statement_list_IN_iteration_5146 = Set[ 31 ]
    TOKENS_FOLLOWING_BL_END_IN_iteration_5148 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAREN_IN_function_parameters_5178 = Set[ 11, 39, 57, 69, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_parameters_IN_function_parameters_5180 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAREN_IN_function_parameters_5183 = Set[ 1 ]
    TOKENS_FOLLOWING_PIPE_IN_iteration_parameters_5207 = Set[ 11, 57, 69, 74, 97, 116, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_parameters_IN_iteration_parameters_5209 = Set[ 116 ]
    TOKENS_FOLLOWING_PIPE_IN_iteration_parameters_5212 = Set[ 1 ]
    TOKENS_FOLLOWING_parameter_IN_parameters_5248 = Set[ 1, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_5253 = Set[ 11, 57, 69, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_parameter_IN_parameters_5256 = Set[ 1, 49 ]
    TOKENS_FOLLOWING_STAR_IN_parameter_5277 = Set[ 11, 57, 74, 97, 128, 129, 130, 132, 148, 149, 150 ]
    TOKENS_FOLLOWING_variable_name_IN_parameter_5279 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_name_IN_parameter_5297 = Set[ 1, 25 ]
    TOKENS_FOLLOWING_ASGN_IN_parameter_5305 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_parameter_5307 = Set[ 1 ]
    TOKENS_FOLLOWING_THIS_IN_primary_5367 = Set[ 1 ]
    TOKENS_FOLLOWING_IVAR_IN_primary_5374 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_name_IN_primary_5381 = Set[ 1 ]
    TOKENS_FOLLOWING_NULL_IN_primary_5388 = Set[ 1 ]
    TOKENS_FOLLOWING_TRUE_IN_primary_5395 = Set[ 1 ]
    TOKENS_FOLLOWING_FALSE_IN_primary_5402 = Set[ 1 ]
    TOKENS_FOLLOWING_UNDEFINED_IN_primary_5409 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_primary_5416 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_primary_5423 = Set[ 1 ]
    TOKENS_FOLLOWING_DSTRING_IN_primary_5430 = Set[ 1 ]
    TOKENS_FOLLOWING_DOC_IN_primary_5437 = Set[ 1 ]
    TOKENS_FOLLOWING_DDOC_IN_primary_5444 = Set[ 1 ]
    TOKENS_FOLLOWING_REGEX_IN_primary_5451 = Set[ 1 ]
    TOKENS_FOLLOWING_GENERAL_IN_primary_5458 = Set[ 1 ]
    TOKENS_FOLLOWING_DGENERAL_IN_primary_5465 = Set[ 1 ]
    TOKENS_FOLLOWING_macro_expansion_IN_primary_5472 = Set[ 1 ]
    TOKENS_FOLLOWING_array_literal_IN_primary_5478 = Set[ 1 ]
    TOKENS_FOLLOWING_object_literal_IN_primary_5484 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAREN_IN_primary_5490 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_list_IN_primary_5494 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAREN_IN_primary_5497 = Set[ 1 ]
    TOKENS_FOLLOWING_POUND_IN_macro_expansion_5511 = Set[ 132 ]
    TOKENS_FOLLOWING_ID_IN_macro_expansion_5514 = Set[ 65 ]
    TOKENS_FOLLOWING_arguments_IN_macro_expansion_5516 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_array_literal_5529 = Set[ 27 ]
    TOKENS_FOLLOWING_RBRACK_IN_array_literal_5531 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_array_literal_5545 = Set[ 5, 11, 22, 26, 27, 29, 30, 32, 34, 35, 36, 38, 40, 43, 47, 49, 50, 57, 58, 59, 61, 64, 65, 67, 70, 73, 74, 75, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 100, 101, 102, 105, 109, 111, 112, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_list_item_IN_array_literal_5547 = Set[ 27, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_array_literal_5551 = Set[ 5, 11, 22, 26, 27, 29, 30, 32, 34, 35, 36, 38, 40, 43, 47, 49, 50, 57, 58, 59, 61, 64, 65, 67, 70, 73, 74, 75, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 100, 101, 102, 105, 109, 111, 112, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_list_item_IN_array_literal_5553 = Set[ 27, 49 ]
    TOKENS_FOLLOWING_RBRACK_IN_array_literal_5558 = Set[ 1 ]
    TOKENS_FOLLOWING_property_name_IN_list_item_5587 = Set[ 46 ]
    TOKENS_FOLLOWING_COLON_IN_list_item_5589 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_list_item_5591 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_list_item_5628 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACE_IN_object_literal_5647 = Set[ 24 ]
    TOKENS_FOLLOWING_RBRACE_IN_object_literal_5650 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACE_IN_object_literal_5664 = Set[ 11, 26, 29, 34, 35, 36, 40, 43, 57, 58, 59, 67, 70, 75, 78, 79, 81, 87, 90, 93, 95, 97, 99, 100, 101, 102, 105, 109, 111, 112, 114, 115, 117, 120, 121, 123, 128, 129, 130, 132, 133, 134, 148, 149, 150 ]
    TOKENS_FOLLOWING_property_definition_IN_object_literal_5667 = Set[ 24, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_object_literal_5672 = Set[ 11, 26, 29, 34, 35, 36, 40, 43, 57, 58, 59, 67, 70, 75, 78, 79, 81, 87, 90, 93, 95, 97, 99, 100, 101, 102, 105, 109, 111, 112, 114, 115, 117, 120, 121, 123, 128, 129, 130, 132, 133, 134, 148, 149, 150 ]
    TOKENS_FOLLOWING_property_definition_IN_object_literal_5675 = Set[ 24, 49 ]
    TOKENS_FOLLOWING_RBRACE_IN_object_literal_5680 = Set[ 1 ]
    TOKENS_FOLLOWING_GET_IN_property_definition_5708 = Set[ 132 ]
    TOKENS_FOLLOWING_ID_IN_property_definition_5711 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_function_parameters_IN_property_definition_5713 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_property_definition_5716 = Set[ 1 ]
    TOKENS_FOLLOWING_SET_IN_property_definition_5722 = Set[ 132 ]
    TOKENS_FOLLOWING_ID_IN_property_definition_5725 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_function_parameters_IN_property_definition_5727 = Set[ 5, 11, 22, 26, 30, 32, 34, 36, 38, 47, 50, 54, 55, 57, 58, 59, 61, 64, 65, 70, 73, 74, 75, 76, 77, 78, 79, 81, 84, 87, 90, 93, 94, 95, 97, 98, 99, 101, 102, 105, 109, 111, 114, 115, 117, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_block_IN_property_definition_5730 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_property_definition_5738 = Set[ 22, 46 ]
    TOKENS_FOLLOWING_STRING_IN_property_definition_5742 = Set[ 22, 46 ]
    TOKENS_FOLLOWING_NUMBER_IN_property_definition_5746 = Set[ 22, 46 ]
    TOKENS_FOLLOWING_reserved_IN_property_definition_5750 = Set[ 22, 46 ]
    TOKENS_FOLLOWING_COLON_IN_property_definition_5762 = Set[ 5, 11, 22, 30, 32, 38, 47, 50, 57, 61, 64, 65, 70, 73, 74, 77, 78, 84, 87, 93, 94, 95, 97, 98, 99, 101, 109, 114, 121, 122, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_expression_IN_property_definition_5766 = Set[ 1 ]
    TOKENS_FOLLOWING_ARROW_IN_property_definition_5776 = Set[ 47, 65 ]
    TOKENS_FOLLOWING_function_parameters_IN_property_definition_5779 = Set[ 47 ]
    TOKENS_FOLLOWING_statement_block_IN_property_definition_5782 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_property_name_5805 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_property_name_5811 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_property_name_5817 = Set[ 1 ]
    TOKENS_FOLLOWING_reserved_IN_property_name_5823 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_variable_name_5838 = Set[ 1 ]
    TOKENS_FOLLOWING_pseudokeyword_IN_variable_name_5846 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_browser_name_0 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_pseudokeyword_0 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_reserved_0 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACE_IN_synpred1_Jejune_1803 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_synpred2_Jejune_1922 = Set[ 1 ]
    TOKENS_FOLLOWING_EJS_IN_synpred3_Jejune_1935 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_synpred4_Jejune_1968 = Set[ 46 ]
    TOKENS_FOLLOWING_COLON_IN_synpred4_Jejune_1971 = Set[ 1 ]
    TOKENS_FOLLOWING_LET_IN_synpred5_Jejune_1984 = Set[ 1 ]
    TOKENS_FOLLOWING_RBRACE_IN_synpred6_Jejune_2158 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_synpred7_Jejune_3054 = Set[ 65 ]
    TOKENS_FOLLOWING_LPAREN_IN_synpred7_Jejune_3057 = Set[ 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150 ]
    TOKENS_FOLLOWING_set_IN_synpred7_Jejune_3060 = Set[ 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150 ]
    TOKENS_FOLLOWING_IN_IN_synpred7_Jejune_3077 = Set[ 1 ]
    TOKENS_FOLLOWING_member_IN_synpred8_Jejune_3692 = Set[ 7, 20, 25, 48, 51, 63, 71, 72, 80, 86, 110, 119, 125 ]
    TOKENS_FOLLOWING_assignment_op_IN_synpred8_Jejune_3694 = Set[ 1 ]
    TOKENS_FOLLOWING_NEW_IN_synpred9_Jejune_4812 = Set[ 5, 11, 22, 30, 47, 50, 57, 61, 65, 73, 74, 78, 87, 94, 95, 97, 99, 101, 109, 121, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 148, 149, 150 ]
    TOKENS_FOLLOWING_new_target_IN_synpred9_Jejune_4814 = Set[ 1, 65 ]
    TOKENS_FOLLOWING_arguments_IN_synpred9_Jejune_4816 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_synpred10_Jejune_5611 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end


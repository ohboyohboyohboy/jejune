#!/usr/bin/env ruby
#
# JejuneTree.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.8
# Input grammar file: JejuneTree.g
# Generated at: 2011-03-01 21:58:02
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.8.8):

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
    Gem.activate( 'antlr3', '~> 1.8.8' )
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
    define_tokens( :FUNCTION => 5, :STAR => 62, :WHILE => 109, :SLASH_ASGN => 57, 
                   :MOD => 82, :CONST => 55, :CASE => 40, :NEW => 94, :DO => 78, 
                   :REGEX => 27, :NOT => 97, :STAR_ASGN => 65, :EOF => -1, 
                   :REQUIRE => 121, :BREAK => 34, :MINUS_ASGN => 79, :HAT => 20, 
                   :RPAREN => 33, :GREATER => 17, :INCR => 32, :DO_WHILE => 87, 
                   :THIS => 71, :LESS => 53, :RETURN => 30, :RSHIFT_ASGN => 45, 
                   :GET => 14, :VAR => 103, :VOID => 106, :GEQ => 11, :EACH => 96, 
                   :EQ => 104, :COMMENT => 52, :PIPE_ASGN => 117, :ASGN => 25, 
                   :ARRAY => 19, :RBRACK => 24, :ARGUMENTS => 16, :RBRACE => 21, 
                   :NESTED_ANGLES => 138, :LINE_COMMENT => 59, :IVAR => 124, 
                   :LSHIFT => 67, :SWITCH => 68, :NULL => 99, :BL_END => 31, 
                   :ELSE => 101, :NUMBER => 125, :DIRECTIVE_LINE => 128, 
                   :DELETE => 69, :DGENERAL => 72, :OR_ASGN => 108, :NEQQ => 91, 
                   :LSHIFT_ASGN => 70, :TRY => 83, :IGNORABLE => 135, :UNDEFINED => 92, 
                   :GENERAL => 8, :IGNORABLE_NL => 133, :WS => 132, :FOR_IN => 118, 
                   :TYPEOF => 86, :UNTIL => 98, :HAT_ASGN => 23, :MOD_ASGN => 85, 
                   :OR => 105, :DSTRING => 93, :INTERPOLATION => 130, :CALL => 37, 
                   :POST_INCR => 12, :DDOC => 61, :CATCH => 43, :FALSE => 110, 
                   :AREF => 13, :SPLAT => 60, :QMARK => 18, :THROW => 74, 
                   :NESTED_PARENTHESES => 136, :EJS => 122, :DO_UNTIL => 84, 
                   :LBRACK => 47, :HIDE => 120, :PLUS_ASGN => 6, :DOC => 127, 
                   :AMP => 4, :LBRACE => 44, :FOR => 116, :ID => 123, :AND => 10, 
                   :DIRECTIVE => 75, :LPAREN => 64, :IF => 26, :SLASH => 54, 
                   :IN => 29, :CONTINUE => 58, :OBJECT => 102, :COMMA => 49, 
                   :TILDE => 77, :YIELD => 115, :PIPE => 114, :PLUS => 119, 
                   :POST_DECR => 9, :DOT => 81, :UNLESS => 95, :RSHIFT => 36, 
                   :NESTED_BRACKETS => 137, :WITH => 112, :PARAMS => 111, 
                   :NESTED_BRACES => 134, :UPLUS => 100, :ITER => 38, :DEFAULT => 66, 
                   :UMINUS => 89, :SET => 51, :INSTANCEOF => 35, :MINUS => 76, 
                   :GENERALIZED_DELIMITER => 129, :TRUE => 80, :SEMI => 48, 
                   :DREGEX => 90, :COLON => 46, :AMP_ASGN => 7, :NEQ => 88, 
                   :RSHIFT3_ASGN => 42, :NEWLINE => 131, :FINALLY => 113, 
                   :LABEL => 41, :BLOCK => 28, :DECR => 63, :ARROW => 22, 
                   :PROGRAM => 15, :RSHIFT3 => 39, :MACRO => 73, :LET => 56, 
                   :EQQ => 107, :STRING => 126, :LEQ => 50 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "AMP", "FUNCTION", "PLUS_ASGN", "AMP_ASGN", "GENERAL", 
                    "POST_DECR", "AND", "GEQ", "POST_INCR", "AREF", "GET", 
                    "PROGRAM", "ARGUMENTS", "GREATER", "QMARK", "ARRAY", 
                    "HAT", "RBRACE", "ARROW", "HAT_ASGN", "RBRACK", "ASGN", 
                    "IF", "REGEX", "BLOCK", "IN", "RETURN", "BL_END", "INCR", 
                    "RPAREN", "BREAK", "INSTANCEOF", "RSHIFT", "CALL", "ITER", 
                    "RSHIFT3", "CASE", "LABEL", "RSHIFT3_ASGN", "CATCH", 
                    "LBRACE", "RSHIFT_ASGN", "COLON", "LBRACK", "SEMI", 
                    "COMMA", "LEQ", "SET", "COMMENT", "LESS", "SLASH", "CONST", 
                    "LET", "SLASH_ASGN", "CONTINUE", "LINE_COMMENT", "SPLAT", 
                    "DDOC", "STAR", "DECR", "LPAREN", "STAR_ASGN", "DEFAULT", 
                    "LSHIFT", "SWITCH", "DELETE", "LSHIFT_ASGN", "THIS", 
                    "DGENERAL", "MACRO", "THROW", "DIRECTIVE", "MINUS", 
                    "TILDE", "DO", "MINUS_ASGN", "TRUE", "DOT", "MOD", "TRY", 
                    "DO_UNTIL", "MOD_ASGN", "TYPEOF", "DO_WHILE", "NEQ", 
                    "UMINUS", "DREGEX", "NEQQ", "UNDEFINED", "DSTRING", 
                    "NEW", "UNLESS", "EACH", "NOT", "UNTIL", "NULL", "UPLUS", 
                    "ELSE", "OBJECT", "VAR", "EQ", "OR", "VOID", "EQQ", 
                    "OR_ASGN", "WHILE", "FALSE", "PARAMS", "WITH", "FINALLY", 
                    "PIPE", "YIELD", "FOR", "PIPE_ASGN", "FOR_IN", "PLUS", 
                    "HIDE", "REQUIRE", "EJS", "ID", "IVAR", "NUMBER", "STRING", 
                    "DOC", "DIRECTIVE_LINE", "GENERALIZED_DELIMITER", "INTERPOLATION", 
                    "NEWLINE", "WS", "IGNORABLE_NL", "NESTED_BRACES", "IGNORABLE", 
                    "NESTED_PARENTHESES", "NESTED_BRACKETS", "NESTED_ANGLES" )
    
  end


  class TreeParser < ANTLR3::TreeParser
    @grammar_home = Jejune
    include ANTLR3::ASTBuilder

    RULE_METHODS = [ :program, :block, :statement_block, :statement_list, 
                     :clause, :statement, :labelled_statement, :try_statement, 
                     :catch_clause, :with_statement, :variable_statement, 
                     :variable_declaration, :declaration_target, :declaration_key, 
                     :if_statement, :switch_statement, :case_clause, :default_clause, 
                     :do_while_statement, :while_statement, :for_loop, :continue_statement, 
                     :break_statement, :return_statement, :yield_statement, 
                     :throw_statement, :expression_list, :expression, :arguments, 
                     :argument, :parameters, :parameter, :literal, :property_definition, 
                     :property_name ].freeze


    include TokenData

    begin
      generated_using( "JejuneTree.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.8" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    ProgramReturnValue = define_return_scope 

    # 
    # parser rule program
    # 
    # (in JejuneTree.g)
    # 9:1: program : ( statement )+ ;
    # 
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )
      return_value = ProgramReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      statement1 = nil


      begin
        root_0 = @adaptor.create_flat_list


        # at line 14:5: ( statement )+
        # at file 14:5: ( statement )+
        match_count_1 = 0
        while true
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0.between?( AMP, AMP_ASGN ) || look_1_0 == POST_DECR || look_1_0.between?( GEQ, AREF ) || look_1_0.between?( GREATER, HAT ) || look_1_0.between?( ARROW, HAT_ASGN ) || look_1_0.between?( ASGN, REGEX ) || look_1_0.between?( IN, RETURN ) || look_1_0 == INCR || look_1_0.between?( BREAK, RSHIFT3 ) || look_1_0.between?( LABEL, CATCH ) || look_1_0 == RSHIFT_ASGN || look_1_0 == LEQ || look_1_0.between?( LESS, SLASH ) || look_1_0.between?( SLASH_ASGN, CONTINUE ) || look_1_0.between?( STAR, DECR ) || look_1_0 == STAR_ASGN || look_1_0.between?( LSHIFT, THIS ) || look_1_0 == THROW || look_1_0.between?( MINUS, MOD ) || look_1_0.between?( MOD_ASGN, TYPEOF ) || look_1_0.between?( NEQ, UMINUS ) || look_1_0.between?( NEQQ, UNDEFINED ) || look_1_0.between?( NEW, UPLUS ) || look_1_0.between?( OBJECT, FALSE ) || look_1_0.between?( WITH, PLUS ) || look_1_0.between?( ID, DOC ) )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 14:5: statement
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_statement_IN_program_43 )
            statement1 = statement
            @state.following.pop

            @adaptor.add_child( root_0, statement1.tree )


          else
            match_count_1 > 0 and break
            eee = EarlyExit(1)


            raise eee
          end
          match_count_1 += 1
        end



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )

      end
      
      return return_value
    end

    BlockReturnValue = define_return_scope 

    # 
    # parser rule block
    # 
    # (in JejuneTree.g)
    # 17:1: block : ( statement_block | statement );
    # 
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      return_value = BlockReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      statement_block2 = nil
      statement3 = nil


      begin
        # at line 18:3: ( statement_block | statement )
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == BLOCK )
          alt_2 = 1
        elsif ( look_2_0.between?( AMP, AMP_ASGN ) || look_2_0 == POST_DECR || look_2_0.between?( GEQ, AREF ) || look_2_0.between?( GREATER, HAT ) || look_2_0.between?( ARROW, HAT_ASGN ) || look_2_0.between?( ASGN, REGEX ) || look_2_0.between?( IN, RETURN ) || look_2_0 == INCR || look_2_0.between?( BREAK, RSHIFT3 ) || look_2_0.between?( LABEL, CATCH ) || look_2_0 == RSHIFT_ASGN || look_2_0 == LEQ || look_2_0.between?( LESS, SLASH ) || look_2_0.between?( SLASH_ASGN, CONTINUE ) || look_2_0.between?( STAR, DECR ) || look_2_0 == STAR_ASGN || look_2_0.between?( LSHIFT, THIS ) || look_2_0 == THROW || look_2_0.between?( MINUS, MOD ) || look_2_0.between?( MOD_ASGN, TYPEOF ) || look_2_0.between?( NEQ, UMINUS ) || look_2_0.between?( NEQQ, UNDEFINED ) || look_2_0.between?( NEW, UPLUS ) || look_2_0.between?( OBJECT, FALSE ) || look_2_0.between?( WITH, PLUS ) || look_2_0.between?( ID, DOC ) )
          alt_2 = 2
        else
          raise NoViableAlternative( "", 2, 0 )
        end
        case alt_2
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 18:5: statement_block
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_statement_block_IN_block_59 )
          statement_block2 = statement_block
          @state.following.pop

          @adaptor.add_child( root_0, statement_block2.tree )


        when 2
          root_0 = @adaptor.create_flat_list


          # at line 19:5: statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_statement_IN_block_65 )
          statement3 = statement
          @state.following.pop

          @adaptor.add_child( root_0, statement3.tree )


        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )

      end
      
      return return_value
    end

    StatementBlockReturnValue = define_return_scope 

    # 
    # parser rule statement_block
    # 
    # (in JejuneTree.g)
    # 22:1: statement_block : ^( BLOCK ( statement_list )? ) ;
    # 
    def statement_block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )
      return_value = StatementBlockReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      __BLOCK4__ = nil
      statement_list5 = nil

      tree_for_BLOCK4 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 23:5: ^( BLOCK ( statement_list )? )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        __BLOCK4__ = match( BLOCK, TOKENS_FOLLOWING_BLOCK_IN_statement_block_80 )

        tree_for_BLOCK4 = @adaptor.copy_node( __BLOCK4__ )

        root_1 = @adaptor.become_root( tree_for_BLOCK4, root_1 )



        if @input.peek == DOWN
          match( DOWN, nil )
          # at line 23:14: ( statement_list )?
          alt_3 = 2
          look_3_0 = @input.peek( 1 )

          if ( look_3_0.between?( AMP, AMP_ASGN ) || look_3_0 == POST_DECR || look_3_0.between?( GEQ, AREF ) || look_3_0.between?( GREATER, HAT ) || look_3_0.between?( ARROW, HAT_ASGN ) || look_3_0.between?( ASGN, REGEX ) || look_3_0.between?( IN, RETURN ) || look_3_0 == INCR || look_3_0.between?( BREAK, RSHIFT3 ) || look_3_0.between?( LABEL, CATCH ) || look_3_0 == RSHIFT_ASGN || look_3_0 == LEQ || look_3_0.between?( LESS, SLASH ) || look_3_0.between?( SLASH_ASGN, CONTINUE ) || look_3_0.between?( STAR, DECR ) || look_3_0 == STAR_ASGN || look_3_0.between?( LSHIFT, THIS ) || look_3_0 == THROW || look_3_0.between?( MINUS, MOD ) || look_3_0.between?( MOD_ASGN, TYPEOF ) || look_3_0.between?( NEQ, UMINUS ) || look_3_0.between?( NEQQ, UNDEFINED ) || look_3_0.between?( NEW, UPLUS ) || look_3_0.between?( OBJECT, FALSE ) || look_3_0.between?( WITH, PLUS ) || look_3_0.between?( ID, DOC ) )
            alt_3 = 1
          end
          case alt_3
          when 1
            # at line 23:14: statement_list
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_statement_list_IN_statement_block_82 )
            statement_list5 = statement_list
            @state.following.pop

            @adaptor.add_child( root_1, statement_list5.tree )


          end

          match( UP, nil )
        end
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )

      end
      
      return return_value
    end

    StatementListReturnValue = define_return_scope 

    # 
    # parser rule statement_list
    # 
    # (in JejuneTree.g)
    # 26:1: statement_list : ( statement )+ ;
    # 
    def statement_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )
      return_value = StatementListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      statement6 = nil


      begin
        root_0 = @adaptor.create_flat_list


        # at line 27:5: ( statement )+
        # at file 27:5: ( statement )+
        match_count_4 = 0
        while true
          alt_4 = 2
          look_4_0 = @input.peek( 1 )

          if ( look_4_0.between?( AMP, AMP_ASGN ) || look_4_0 == POST_DECR || look_4_0.between?( GEQ, AREF ) || look_4_0.between?( GREATER, HAT ) || look_4_0.between?( ARROW, HAT_ASGN ) || look_4_0.between?( ASGN, REGEX ) || look_4_0.between?( IN, RETURN ) || look_4_0 == INCR || look_4_0.between?( BREAK, RSHIFT3 ) || look_4_0.between?( LABEL, CATCH ) || look_4_0 == RSHIFT_ASGN || look_4_0 == LEQ || look_4_0.between?( LESS, SLASH ) || look_4_0.between?( SLASH_ASGN, CONTINUE ) || look_4_0.between?( STAR, DECR ) || look_4_0 == STAR_ASGN || look_4_0.between?( LSHIFT, THIS ) || look_4_0 == THROW || look_4_0.between?( MINUS, MOD ) || look_4_0.between?( MOD_ASGN, TYPEOF ) || look_4_0.between?( NEQ, UMINUS ) || look_4_0.between?( NEQQ, UNDEFINED ) || look_4_0.between?( NEW, UPLUS ) || look_4_0.between?( OBJECT, FALSE ) || look_4_0.between?( WITH, PLUS ) || look_4_0.between?( ID, DOC ) )
            alt_4 = 1

          end
          case alt_4
          when 1
            # at line 27:5: statement
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_statement_IN_statement_list_100 )
            statement6 = statement
            @state.following.pop

            @adaptor.add_child( root_0, statement6.tree )


          else
            match_count_4 > 0 and break
            eee = EarlyExit(4)


            raise eee
          end
          match_count_4 += 1
        end



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )

      end
      
      return return_value
    end

    ClauseReturnValue = define_return_scope 

    # 
    # parser rule clause
    # 
    # (in JejuneTree.g)
    # 30:1: clause : expression ;
    # 
    def clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      return_value = ClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      expression7 = nil


      begin
        root_0 = @adaptor.create_flat_list


        # at line 31:5: expression
        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_expression_IN_clause_114 )
        expression7 = expression
        @state.following.pop

        @adaptor.add_child( root_0, expression7.tree )


        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )

      end
      
      return return_value
    end

    StatementReturnValue = define_return_scope 

    # 
    # parser rule statement
    # 
    # (in JejuneTree.g)
    # 34:1: statement : ( variable_statement | labelled_statement | if_statement | while_statement | do_while_statement | for_loop | continue_statement | break_statement | yield_statement | return_statement | with_statement | switch_statement | throw_statement | try_statement | expression );
    # 
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      return_value = StatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      variable_statement8 = nil
      labelled_statement9 = nil
      if_statement10 = nil
      while_statement11 = nil
      do_while_statement12 = nil
      for_loop13 = nil
      continue_statement14 = nil
      break_statement15 = nil
      yield_statement16 = nil
      return_statement17 = nil
      with_statement18 = nil
      switch_statement19 = nil
      throw_statement20 = nil
      try_statement21 = nil
      expression22 = nil


      begin
        # at line 35:3: ( variable_statement | labelled_statement | if_statement | while_statement | do_while_statement | for_loop | continue_statement | break_statement | yield_statement | return_statement | with_statement | switch_statement | throw_statement | try_statement | expression )
        alt_5 = 15
        case look_5 = @input.peek( 1 )
        when VAR then alt_5 = 1
        when LABEL then alt_5 = 2
        when IF, UNLESS then alt_5 = 3
        when UNTIL, WHILE then alt_5 = 4
        when DO then alt_5 = 5
        when EACH, FOR, FOR_IN then alt_5 = 6
        when CONTINUE then alt_5 = 7
        when BREAK then alt_5 = 8
        when YIELD then alt_5 = 9
        when RETURN then alt_5 = 10
        when WITH then alt_5 = 11
        when SWITCH then alt_5 = 12
        when THROW then alt_5 = 13
        when CATCH, FINALLY then alt_5 = 14
        when AMP, FUNCTION, PLUS_ASGN, AMP_ASGN, POST_DECR, GEQ, POST_INCR, AREF, GREATER, QMARK, ARRAY, HAT, ARROW, HAT_ASGN, ASGN, REGEX, IN, INCR, INSTANCEOF, RSHIFT, CALL, ITER, RSHIFT3, RSHIFT3_ASGN, RSHIFT_ASGN, LEQ, LESS, SLASH, SLASH_ASGN, STAR, DECR, STAR_ASGN, LSHIFT, DELETE, LSHIFT_ASGN, THIS, MINUS, TILDE, MINUS_ASGN, TRUE, DOT, MOD, MOD_ASGN, TYPEOF, NEQ, UMINUS, NEQQ, UNDEFINED, NEW, NOT, NULL, UPLUS, OBJECT, EQ, OR, VOID, EQQ, OR_ASGN, FALSE, PIPE, PIPE_ASGN, PLUS, ID, IVAR, NUMBER, STRING, DOC then alt_5 = 15
        else
          raise NoViableAlternative( "", 5, 0 )
        end
        case alt_5
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 35:5: variable_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_variable_statement_IN_statement_127 )
          variable_statement8 = variable_statement
          @state.following.pop

          @adaptor.add_child( root_0, variable_statement8.tree )


        when 2
          root_0 = @adaptor.create_flat_list


          # at line 36:5: labelled_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_labelled_statement_IN_statement_133 )
          labelled_statement9 = labelled_statement
          @state.following.pop

          @adaptor.add_child( root_0, labelled_statement9.tree )


        when 3
          root_0 = @adaptor.create_flat_list


          # at line 37:5: if_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_if_statement_IN_statement_139 )
          if_statement10 = if_statement
          @state.following.pop

          @adaptor.add_child( root_0, if_statement10.tree )


        when 4
          root_0 = @adaptor.create_flat_list


          # at line 38:5: while_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_while_statement_IN_statement_145 )
          while_statement11 = while_statement
          @state.following.pop

          @adaptor.add_child( root_0, while_statement11.tree )


        when 5
          root_0 = @adaptor.create_flat_list


          # at line 39:5: do_while_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_do_while_statement_IN_statement_151 )
          do_while_statement12 = do_while_statement
          @state.following.pop

          @adaptor.add_child( root_0, do_while_statement12.tree )


        when 6
          root_0 = @adaptor.create_flat_list


          # at line 40:5: for_loop
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_for_loop_IN_statement_157 )
          for_loop13 = for_loop
          @state.following.pop

          @adaptor.add_child( root_0, for_loop13.tree )


        when 7
          root_0 = @adaptor.create_flat_list


          # at line 41:5: continue_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_continue_statement_IN_statement_163 )
          continue_statement14 = continue_statement
          @state.following.pop

          @adaptor.add_child( root_0, continue_statement14.tree )


        when 8
          root_0 = @adaptor.create_flat_list


          # at line 42:5: break_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_break_statement_IN_statement_169 )
          break_statement15 = break_statement
          @state.following.pop

          @adaptor.add_child( root_0, break_statement15.tree )


        when 9
          root_0 = @adaptor.create_flat_list


          # at line 43:5: yield_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_yield_statement_IN_statement_175 )
          yield_statement16 = yield_statement
          @state.following.pop

          @adaptor.add_child( root_0, yield_statement16.tree )


        when 10
          root_0 = @adaptor.create_flat_list


          # at line 44:5: return_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_return_statement_IN_statement_181 )
          return_statement17 = return_statement
          @state.following.pop

          @adaptor.add_child( root_0, return_statement17.tree )


        when 11
          root_0 = @adaptor.create_flat_list


          # at line 45:5: with_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_with_statement_IN_statement_187 )
          with_statement18 = with_statement
          @state.following.pop

          @adaptor.add_child( root_0, with_statement18.tree )


        when 12
          root_0 = @adaptor.create_flat_list


          # at line 46:5: switch_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_switch_statement_IN_statement_193 )
          switch_statement19 = switch_statement
          @state.following.pop

          @adaptor.add_child( root_0, switch_statement19.tree )


        when 13
          root_0 = @adaptor.create_flat_list


          # at line 47:5: throw_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_throw_statement_IN_statement_199 )
          throw_statement20 = throw_statement
          @state.following.pop

          @adaptor.add_child( root_0, throw_statement20.tree )


        when 14
          root_0 = @adaptor.create_flat_list


          # at line 48:5: try_statement
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_try_statement_IN_statement_205 )
          try_statement21 = try_statement
          @state.following.pop

          @adaptor.add_child( root_0, try_statement21.tree )


        when 15
          root_0 = @adaptor.create_flat_list


          # at line 49:5: expression
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_statement_211 )
          expression22 = expression
          @state.following.pop

          @adaptor.add_child( root_0, expression22.tree )


        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )

      end
      
      return return_value
    end

    LabelledStatementReturnValue = define_return_scope 

    # 
    # parser rule labelled_statement
    # 
    # (in JejuneTree.g)
    # 52:1: labelled_statement : ^( LABEL ID block ) ;
    # 
    def labelled_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )
      return_value = LabelledStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      __LABEL23__ = nil
      __ID24__ = nil
      block25 = nil

      tree_for_LABEL23 = nil
      tree_for_ID24 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 53:5: ^( LABEL ID block )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        __LABEL23__ = match( LABEL, TOKENS_FOLLOWING_LABEL_IN_labelled_statement_226 )

        tree_for_LABEL23 = @adaptor.copy_node( __LABEL23__ )

        root_1 = @adaptor.become_root( tree_for_LABEL23, root_1 )



        match( DOWN, nil )
        _last = @input.look
        __ID24__ = match( ID, TOKENS_FOLLOWING_ID_IN_labelled_statement_228 )

        tree_for_ID24 = @adaptor.copy_node( __ID24__ )

        @adaptor.add_child( root_1, tree_for_ID24 )

        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_block_IN_labelled_statement_230 )
        block25 = block
        @state.following.pop

        @adaptor.add_child( root_1, block25.tree )

        match( UP, nil )
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )

      end
      
      return return_value
    end

    TryStatementReturnValue = define_return_scope 

    # 
    # parser rule try_statement
    # 
    # (in JejuneTree.g)
    # 56:1: try_statement : ( catch_clause | ^( 'finally' ( catch_clause | statement_block ) statement_block ) );
    # 
    def try_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )
      return_value = TryStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal27 = nil
      catch_clause26 = nil
      catch_clause28 = nil
      statement_block29 = nil
      statement_block30 = nil

      tree_for_string_literal27 = nil

      begin
        # at line 57:3: ( catch_clause | ^( 'finally' ( catch_clause | statement_block ) statement_block ) )
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == CATCH )
          alt_7 = 1
        elsif ( look_7_0 == FINALLY )
          alt_7 = 2
        else
          raise NoViableAlternative( "", 7, 0 )
        end
        case alt_7
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 57:5: catch_clause
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_catch_clause_IN_try_statement_245 )
          catch_clause26 = catch_clause
          @state.following.pop

          @adaptor.add_child( root_0, catch_clause26.tree )


        when 2
          root_0 = @adaptor.create_flat_list


          # at line 58:5: ^( 'finally' ( catch_clause | statement_block ) statement_block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal27 = match( FINALLY, TOKENS_FOLLOWING_FINALLY_IN_try_statement_253 )

          tree_for_string_literal27 = @adaptor.copy_node( string_literal27 )

          root_1 = @adaptor.become_root( tree_for_string_literal27, root_1 )



          match( DOWN, nil )
          # at line 58:18: ( catch_clause | statement_block )
          alt_6 = 2
          look_6_0 = @input.peek( 1 )

          if ( look_6_0 == CATCH )
            alt_6 = 1
          elsif ( look_6_0 == BLOCK )
            alt_6 = 2
          else
            raise NoViableAlternative( "", 6, 0 )
          end
          case alt_6
          when 1
            # at line 58:20: catch_clause
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_catch_clause_IN_try_statement_257 )
            catch_clause28 = catch_clause
            @state.following.pop

            @adaptor.add_child( root_1, catch_clause28.tree )


          when 2
            # at line 58:35: statement_block
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_statement_block_IN_try_statement_261 )
            statement_block29 = statement_block
            @state.following.pop

            @adaptor.add_child( root_1, statement_block29.tree )


          end
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_statement_block_IN_try_statement_265 )
          statement_block30 = statement_block
          @state.following.pop

          @adaptor.add_child( root_1, statement_block30.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )

      end
      
      return return_value
    end

    CatchClauseReturnValue = define_return_scope 

    # 
    # parser rule catch_clause
    # 
    # (in JejuneTree.g)
    # 61:1: catch_clause : ^( 'catch' statement_block ID statement_block ) ;
    # 
    def catch_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      return_value = CatchClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal31 = nil
      __ID33__ = nil
      statement_block32 = nil
      statement_block34 = nil

      tree_for_string_literal31 = nil
      tree_for_ID33 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 62:5: ^( 'catch' statement_block ID statement_block )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal31 = match( CATCH, TOKENS_FOLLOWING_CATCH_IN_catch_clause_282 )

        tree_for_string_literal31 = @adaptor.copy_node( string_literal31 )

        root_1 = @adaptor.become_root( tree_for_string_literal31, root_1 )



        match( DOWN, nil )
        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_statement_block_IN_catch_clause_284 )
        statement_block32 = statement_block
        @state.following.pop

        @adaptor.add_child( root_1, statement_block32.tree )
        _last = @input.look
        __ID33__ = match( ID, TOKENS_FOLLOWING_ID_IN_catch_clause_286 )

        tree_for_ID33 = @adaptor.copy_node( __ID33__ )

        @adaptor.add_child( root_1, tree_for_ID33 )

        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_statement_block_IN_catch_clause_288 )
        statement_block34 = statement_block
        @state.following.pop

        @adaptor.add_child( root_1, statement_block34.tree )

        match( UP, nil )
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )

      end
      
      return return_value
    end

    WithStatementReturnValue = define_return_scope 

    # 
    # parser rule with_statement
    # 
    # (in JejuneTree.g)
    # 65:1: with_statement : ^( 'with' clause block ) ;
    # 
    def with_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      return_value = WithStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal35 = nil
      clause36 = nil
      block37 = nil

      tree_for_string_literal35 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 66:5: ^( 'with' clause block )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal35 = match( WITH, TOKENS_FOLLOWING_WITH_IN_with_statement_305 )

        tree_for_string_literal35 = @adaptor.copy_node( string_literal35 )

        root_1 = @adaptor.become_root( tree_for_string_literal35, root_1 )



        match( DOWN, nil )
        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_clause_IN_with_statement_307 )
        clause36 = clause
        @state.following.pop

        @adaptor.add_child( root_1, clause36.tree )
        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_block_IN_with_statement_309 )
        block37 = block
        @state.following.pop

        @adaptor.add_child( root_1, block37.tree )

        match( UP, nil )
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )

      end
      
      return return_value
    end

    VariableStatementReturnValue = define_return_scope 

    # 
    # parser rule variable_statement
    # 
    # (in JejuneTree.g)
    # 69:1: variable_statement : ^( 'var' ( variable_declaration )+ ) ;
    # 
    def variable_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )
      return_value = VariableStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal38 = nil
      variable_declaration39 = nil

      tree_for_string_literal38 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 70:5: ^( 'var' ( variable_declaration )+ )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal38 = match( VAR, TOKENS_FOLLOWING_VAR_IN_variable_statement_326 )

        tree_for_string_literal38 = @adaptor.copy_node( string_literal38 )

        root_1 = @adaptor.become_root( tree_for_string_literal38, root_1 )



        match( DOWN, nil )
        # at file 70:14: ( variable_declaration )+
        match_count_8 = 0
        while true
          alt_8 = 2
          look_8_0 = @input.peek( 1 )

          if ( look_8_0 == ASGN || look_8_0 == ID )
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 70:14: variable_declaration
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_variable_declaration_IN_variable_statement_328 )
            variable_declaration39 = variable_declaration
            @state.following.pop

            @adaptor.add_child( root_1, variable_declaration39.tree )


          else
            match_count_8 > 0 and break
            eee = EarlyExit(8)


            raise eee
          end
          match_count_8 += 1
        end


        match( UP, nil )
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )

      end
      
      return return_value
    end

    VariableDeclarationReturnValue = define_return_scope 

    # 
    # parser rule variable_declaration
    # 
    # (in JejuneTree.g)
    # 74:1: variable_declaration : ( ^( '=' declaration_target expression ) | ID );
    # 
    def variable_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      return_value = VariableDeclarationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      char_literal40 = nil
      __ID43__ = nil
      declaration_target41 = nil
      expression42 = nil

      tree_for_char_literal40 = nil
      tree_for_ID43 = nil

      begin
        # at line 75:3: ( ^( '=' declaration_target expression ) | ID )
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0 == ASGN )
          alt_9 = 1
        elsif ( look_9_0 == ID )
          alt_9 = 2
        else
          raise NoViableAlternative( "", 9, 0 )
        end
        case alt_9
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 75:5: ^( '=' declaration_target expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal40 = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_variable_declaration_347 )

          tree_for_char_literal40 = @adaptor.copy_node( char_literal40 )

          root_1 = @adaptor.become_root( tree_for_char_literal40, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_declaration_target_IN_variable_declaration_349 )
          declaration_target41 = declaration_target
          @state.following.pop

          @adaptor.add_child( root_1, declaration_target41.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_variable_declaration_351 )
          expression42 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression42.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 2
          root_0 = @adaptor.create_flat_list


          # at line 76:5: ID
          _last = @input.look
          __ID43__ = match( ID, TOKENS_FOLLOWING_ID_IN_variable_declaration_359 )

          tree_for_ID43 = @adaptor.copy_node( __ID43__ )

          @adaptor.add_child( root_0, tree_for_ID43 )



        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )

      end
      
      return return_value
    end

    DeclarationTargetReturnValue = define_return_scope 

    # 
    # parser rule declaration_target
    # 
    # (in JejuneTree.g)
    # 79:1: declaration_target : ( ^( ARRAY ( declaration_target )+ ) | ^( OBJECT ( declaration_key )+ ) | ID );
    # 
    def declaration_target
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )
      return_value = DeclarationTargetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      __ARRAY44__ = nil
      __OBJECT46__ = nil
      __ID48__ = nil
      declaration_target45 = nil
      declaration_key47 = nil

      tree_for_ARRAY44 = nil
      tree_for_OBJECT46 = nil
      tree_for_ID48 = nil

      begin
        # at line 80:3: ( ^( ARRAY ( declaration_target )+ ) | ^( OBJECT ( declaration_key )+ ) | ID )
        alt_12 = 3
        case look_12 = @input.peek( 1 )
        when ARRAY then alt_12 = 1
        when OBJECT then alt_12 = 2
        when ID then alt_12 = 3
        else
          raise NoViableAlternative( "", 12, 0 )
        end
        case alt_12
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 80:5: ^( ARRAY ( declaration_target )+ )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __ARRAY44__ = match( ARRAY, TOKENS_FOLLOWING_ARRAY_IN_declaration_target_374 )

          tree_for_ARRAY44 = @adaptor.copy_node( __ARRAY44__ )

          root_1 = @adaptor.become_root( tree_for_ARRAY44, root_1 )



          match( DOWN, nil )
          # at file 80:14: ( declaration_target )+
          match_count_10 = 0
          while true
            alt_10 = 2
            look_10_0 = @input.peek( 1 )

            if ( look_10_0 == ARRAY || look_10_0 == OBJECT || look_10_0 == ID )
              alt_10 = 1

            end
            case alt_10
            when 1
              # at line 80:14: declaration_target
              _last = @input.look
              @state.following.push( TOKENS_FOLLOWING_declaration_target_IN_declaration_target_376 )
              declaration_target45 = declaration_target
              @state.following.pop

              @adaptor.add_child( root_1, declaration_target45.tree )


            else
              match_count_10 > 0 and break
              eee = EarlyExit(10)


              raise eee
            end
            match_count_10 += 1
          end


          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 2
          root_0 = @adaptor.create_flat_list


          # at line 81:5: ^( OBJECT ( declaration_key )+ )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __OBJECT46__ = match( OBJECT, TOKENS_FOLLOWING_OBJECT_IN_declaration_target_387 )

          tree_for_OBJECT46 = @adaptor.copy_node( __OBJECT46__ )

          root_1 = @adaptor.become_root( tree_for_OBJECT46, root_1 )



          match( DOWN, nil )
          # at file 81:15: ( declaration_key )+
          match_count_11 = 0
          while true
            alt_11 = 2
            look_11_0 = @input.peek( 1 )

            if ( look_11_0 == COLON )
              alt_11 = 1

            end
            case alt_11
            when 1
              # at line 81:15: declaration_key
              _last = @input.look
              @state.following.push( TOKENS_FOLLOWING_declaration_key_IN_declaration_target_389 )
              declaration_key47 = declaration_key
              @state.following.pop

              @adaptor.add_child( root_1, declaration_key47.tree )


            else
              match_count_11 > 0 and break
              eee = EarlyExit(11)


              raise eee
            end
            match_count_11 += 1
          end


          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 3
          root_0 = @adaptor.create_flat_list


          # at line 82:5: ID
          _last = @input.look
          __ID48__ = match( ID, TOKENS_FOLLOWING_ID_IN_declaration_target_398 )

          tree_for_ID48 = @adaptor.copy_node( __ID48__ )

          @adaptor.add_child( root_0, tree_for_ID48 )



        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )

      end
      
      return return_value
    end

    DeclarationKeyReturnValue = define_return_scope 

    # 
    # parser rule declaration_key
    # 
    # (in JejuneTree.g)
    # 85:1: declaration_key : ^( ':' property_name declaration_target ) ;
    # 
    def declaration_key
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )
      return_value = DeclarationKeyReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      char_literal49 = nil
      property_name50 = nil
      declaration_target51 = nil

      tree_for_char_literal49 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 86:5: ^( ':' property_name declaration_target )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        char_literal49 = match( COLON, TOKENS_FOLLOWING_COLON_IN_declaration_key_415 )

        tree_for_char_literal49 = @adaptor.copy_node( char_literal49 )

        root_1 = @adaptor.become_root( tree_for_char_literal49, root_1 )



        match( DOWN, nil )
        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_property_name_IN_declaration_key_417 )
        property_name50 = property_name
        @state.following.pop

        @adaptor.add_child( root_1, property_name50.tree )
        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_declaration_target_IN_declaration_key_419 )
        declaration_target51 = declaration_target
        @state.following.pop

        @adaptor.add_child( root_1, declaration_target51.tree )

        match( UP, nil )
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )

      end
      
      return return_value
    end

    IfStatementReturnValue = define_return_scope 

    # 
    # parser rule if_statement
    # 
    # (in JejuneTree.g)
    # 89:1: if_statement : ( ^( 'if' clause block ( block )? ) | ^( 'unless' clause block ( block )? ) );
    # 
    def if_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      return_value = IfStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal52 = nil
      string_literal56 = nil
      clause53 = nil
      block54 = nil
      block55 = nil
      clause57 = nil
      block58 = nil
      block59 = nil

      tree_for_string_literal52 = nil
      tree_for_string_literal56 = nil

      begin
        # at line 90:3: ( ^( 'if' clause block ( block )? ) | ^( 'unless' clause block ( block )? ) )
        alt_15 = 2
        look_15_0 = @input.peek( 1 )

        if ( look_15_0 == IF )
          alt_15 = 1
        elsif ( look_15_0 == UNLESS )
          alt_15 = 2
        else
          raise NoViableAlternative( "", 15, 0 )
        end
        case alt_15
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 90:5: ^( 'if' clause block ( block )? )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal52 = match( IF, TOKENS_FOLLOWING_IF_IN_if_statement_436 )

          tree_for_string_literal52 = @adaptor.copy_node( string_literal52 )

          root_1 = @adaptor.become_root( tree_for_string_literal52, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_clause_IN_if_statement_438 )
          clause53 = clause
          @state.following.pop

          @adaptor.add_child( root_1, clause53.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_block_IN_if_statement_440 )
          block54 = block
          @state.following.pop

          @adaptor.add_child( root_1, block54.tree )
          # at line 90:26: ( block )?
          alt_13 = 2
          look_13_0 = @input.peek( 1 )

          if ( look_13_0.between?( AMP, AMP_ASGN ) || look_13_0 == POST_DECR || look_13_0.between?( GEQ, AREF ) || look_13_0.between?( GREATER, HAT ) || look_13_0.between?( ARROW, HAT_ASGN ) || look_13_0.between?( ASGN, RETURN ) || look_13_0 == INCR || look_13_0.between?( BREAK, RSHIFT3 ) || look_13_0.between?( LABEL, CATCH ) || look_13_0 == RSHIFT_ASGN || look_13_0 == LEQ || look_13_0.between?( LESS, SLASH ) || look_13_0.between?( SLASH_ASGN, CONTINUE ) || look_13_0.between?( STAR, DECR ) || look_13_0 == STAR_ASGN || look_13_0.between?( LSHIFT, THIS ) || look_13_0 == THROW || look_13_0.between?( MINUS, MOD ) || look_13_0.between?( MOD_ASGN, TYPEOF ) || look_13_0.between?( NEQ, UMINUS ) || look_13_0.between?( NEQQ, UNDEFINED ) || look_13_0.between?( NEW, UPLUS ) || look_13_0.between?( OBJECT, FALSE ) || look_13_0.between?( WITH, PLUS ) || look_13_0.between?( ID, DOC ) )
            alt_13 = 1
          end
          case alt_13
          when 1
            # at line 90:26: block
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_block_IN_if_statement_442 )
            block55 = block
            @state.following.pop

            @adaptor.add_child( root_1, block55.tree )


          end

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 2
          root_0 = @adaptor.create_flat_list


          # at line 91:5: ^( 'unless' clause block ( block )? )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal56 = match( UNLESS, TOKENS_FOLLOWING_UNLESS_IN_if_statement_453 )

          tree_for_string_literal56 = @adaptor.copy_node( string_literal56 )

          root_1 = @adaptor.become_root( tree_for_string_literal56, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_clause_IN_if_statement_455 )
          clause57 = clause
          @state.following.pop

          @adaptor.add_child( root_1, clause57.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_block_IN_if_statement_457 )
          block58 = block
          @state.following.pop

          @adaptor.add_child( root_1, block58.tree )
          # at line 91:30: ( block )?
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0.between?( AMP, AMP_ASGN ) || look_14_0 == POST_DECR || look_14_0.between?( GEQ, AREF ) || look_14_0.between?( GREATER, HAT ) || look_14_0.between?( ARROW, HAT_ASGN ) || look_14_0.between?( ASGN, RETURN ) || look_14_0 == INCR || look_14_0.between?( BREAK, RSHIFT3 ) || look_14_0.between?( LABEL, CATCH ) || look_14_0 == RSHIFT_ASGN || look_14_0 == LEQ || look_14_0.between?( LESS, SLASH ) || look_14_0.between?( SLASH_ASGN, CONTINUE ) || look_14_0.between?( STAR, DECR ) || look_14_0 == STAR_ASGN || look_14_0.between?( LSHIFT, THIS ) || look_14_0 == THROW || look_14_0.between?( MINUS, MOD ) || look_14_0.between?( MOD_ASGN, TYPEOF ) || look_14_0.between?( NEQ, UMINUS ) || look_14_0.between?( NEQQ, UNDEFINED ) || look_14_0.between?( NEW, UPLUS ) || look_14_0.between?( OBJECT, FALSE ) || look_14_0.between?( WITH, PLUS ) || look_14_0.between?( ID, DOC ) )
            alt_14 = 1
          end
          case alt_14
          when 1
            # at line 91:30: block
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_block_IN_if_statement_459 )
            block59 = block
            @state.following.pop

            @adaptor.add_child( root_1, block59.tree )


          end

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )

      end
      
      return return_value
    end

    SwitchStatementReturnValue = define_return_scope 

    # 
    # parser rule switch_statement
    # 
    # (in JejuneTree.g)
    # 94:1: switch_statement : ^( 'switch' expression ( case_clause )* ( default_clause )? ) ;
    # 
    def switch_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )
      return_value = SwitchStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal60 = nil
      expression61 = nil
      case_clause62 = nil
      default_clause63 = nil

      tree_for_string_literal60 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 95:5: ^( 'switch' expression ( case_clause )* ( default_clause )? )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal60 = match( SWITCH, TOKENS_FOLLOWING_SWITCH_IN_switch_statement_477 )

        tree_for_string_literal60 = @adaptor.copy_node( string_literal60 )

        root_1 = @adaptor.become_root( tree_for_string_literal60, root_1 )



        match( DOWN, nil )
        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_expression_IN_switch_statement_479 )
        expression61 = expression
        @state.following.pop

        @adaptor.add_child( root_1, expression61.tree )
        # at line 95:28: ( case_clause )*
        while true # decision 16
          alt_16 = 2
          look_16_0 = @input.peek( 1 )

          if ( look_16_0 == CASE )
            alt_16 = 1

          end
          case alt_16
          when 1
            # at line 95:28: case_clause
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_case_clause_IN_switch_statement_481 )
            case_clause62 = case_clause
            @state.following.pop

            @adaptor.add_child( root_1, case_clause62.tree )


          else
            break # out of loop for decision 16
          end
        end # loop for decision 16
        # at line 95:41: ( default_clause )?
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == DEFAULT )
          alt_17 = 1
        end
        case alt_17
        when 1
          # at line 95:41: default_clause
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_default_clause_IN_switch_statement_484 )
          default_clause63 = default_clause
          @state.following.pop

          @adaptor.add_child( root_1, default_clause63.tree )


        end

        match( UP, nil )
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )

      end
      
      return return_value
    end

    CaseClauseReturnValue = define_return_scope 

    # 
    # parser rule case_clause
    # 
    # (in JejuneTree.g)
    # 98:1: case_clause : ^( 'case' expression ( statement_list )? ) ;
    # 
    def case_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )
      return_value = CaseClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal64 = nil
      expression65 = nil
      statement_list66 = nil

      tree_for_string_literal64 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 99:5: ^( 'case' expression ( statement_list )? )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal64 = match( CASE, TOKENS_FOLLOWING_CASE_IN_case_clause_504 )

        tree_for_string_literal64 = @adaptor.copy_node( string_literal64 )

        root_1 = @adaptor.become_root( tree_for_string_literal64, root_1 )



        match( DOWN, nil )
        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_expression_IN_case_clause_506 )
        expression65 = expression
        @state.following.pop

        @adaptor.add_child( root_1, expression65.tree )
        # at line 99:27: ( statement_list )?
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0.between?( AMP, AMP_ASGN ) || look_18_0 == POST_DECR || look_18_0.between?( GEQ, AREF ) || look_18_0.between?( GREATER, HAT ) || look_18_0.between?( ARROW, HAT_ASGN ) || look_18_0.between?( ASGN, REGEX ) || look_18_0.between?( IN, RETURN ) || look_18_0 == INCR || look_18_0.between?( BREAK, RSHIFT3 ) || look_18_0.between?( LABEL, CATCH ) || look_18_0 == RSHIFT_ASGN || look_18_0 == LEQ || look_18_0.between?( LESS, SLASH ) || look_18_0.between?( SLASH_ASGN, CONTINUE ) || look_18_0.between?( STAR, DECR ) || look_18_0 == STAR_ASGN || look_18_0.between?( LSHIFT, THIS ) || look_18_0 == THROW || look_18_0.between?( MINUS, MOD ) || look_18_0.between?( MOD_ASGN, TYPEOF ) || look_18_0.between?( NEQ, UMINUS ) || look_18_0.between?( NEQQ, UNDEFINED ) || look_18_0.between?( NEW, UPLUS ) || look_18_0.between?( OBJECT, FALSE ) || look_18_0.between?( WITH, PLUS ) || look_18_0.between?( ID, DOC ) )
          alt_18 = 1
        end
        case alt_18
        when 1
          # at line 99:27: statement_list
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_statement_list_IN_case_clause_509 )
          statement_list66 = statement_list
          @state.following.pop

          @adaptor.add_child( root_1, statement_list66.tree )


        end

        match( UP, nil )
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )

      end
      
      return return_value
    end

    DefaultClauseReturnValue = define_return_scope 

    # 
    # parser rule default_clause
    # 
    # (in JejuneTree.g)
    # 102:1: default_clause : ^( 'default' ( statement_list )? ) ;
    # 
    def default_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )
      return_value = DefaultClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal67 = nil
      statement_list68 = nil

      tree_for_string_literal67 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 103:5: ^( 'default' ( statement_list )? )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal67 = match( DEFAULT, TOKENS_FOLLOWING_DEFAULT_IN_default_clause_529 )

        tree_for_string_literal67 = @adaptor.copy_node( string_literal67 )

        root_1 = @adaptor.become_root( tree_for_string_literal67, root_1 )



        if @input.peek == DOWN
          match( DOWN, nil )
          # at line 103:18: ( statement_list )?
          alt_19 = 2
          look_19_0 = @input.peek( 1 )

          if ( look_19_0.between?( AMP, AMP_ASGN ) || look_19_0 == POST_DECR || look_19_0.between?( GEQ, AREF ) || look_19_0.between?( GREATER, HAT ) || look_19_0.between?( ARROW, HAT_ASGN ) || look_19_0.between?( ASGN, REGEX ) || look_19_0.between?( IN, RETURN ) || look_19_0 == INCR || look_19_0.between?( BREAK, RSHIFT3 ) || look_19_0.between?( LABEL, CATCH ) || look_19_0 == RSHIFT_ASGN || look_19_0 == LEQ || look_19_0.between?( LESS, SLASH ) || look_19_0.between?( SLASH_ASGN, CONTINUE ) || look_19_0.between?( STAR, DECR ) || look_19_0 == STAR_ASGN || look_19_0.between?( LSHIFT, THIS ) || look_19_0 == THROW || look_19_0.between?( MINUS, MOD ) || look_19_0.between?( MOD_ASGN, TYPEOF ) || look_19_0.between?( NEQ, UMINUS ) || look_19_0.between?( NEQQ, UNDEFINED ) || look_19_0.between?( NEW, UPLUS ) || look_19_0.between?( OBJECT, FALSE ) || look_19_0.between?( WITH, PLUS ) || look_19_0.between?( ID, DOC ) )
            alt_19 = 1
          end
          case alt_19
          when 1
            # at line 103:18: statement_list
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_statement_list_IN_default_clause_531 )
            statement_list68 = statement_list
            @state.following.pop

            @adaptor.add_child( root_1, statement_list68.tree )


          end

          match( UP, nil )
        end
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )

      end
      
      return return_value
    end

    DoWhileStatementReturnValue = define_return_scope 

    # 
    # parser rule do_while_statement
    # 
    # (in JejuneTree.g)
    # 106:1: do_while_statement : ^( 'do' while_statement ) ;
    # 
    def do_while_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )
      return_value = DoWhileStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal69 = nil
      while_statement70 = nil

      tree_for_string_literal69 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 107:5: ^( 'do' while_statement )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal69 = match( DO, TOKENS_FOLLOWING_DO_IN_do_while_statement_549 )

        tree_for_string_literal69 = @adaptor.copy_node( string_literal69 )

        root_1 = @adaptor.become_root( tree_for_string_literal69, root_1 )



        match( DOWN, nil )
        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_while_statement_IN_do_while_statement_551 )
        while_statement70 = while_statement
        @state.following.pop

        @adaptor.add_child( root_1, while_statement70.tree )

        match( UP, nil )
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )

      end
      
      return return_value
    end

    WhileStatementReturnValue = define_return_scope 

    # 
    # parser rule while_statement
    # 
    # (in JejuneTree.g)
    # 110:1: while_statement : ( ^( 'while' clause block ) | ^( 'until' clause block ) );
    # 
    def while_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )
      return_value = WhileStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal71 = nil
      string_literal74 = nil
      clause72 = nil
      block73 = nil
      clause75 = nil
      block76 = nil

      tree_for_string_literal71 = nil
      tree_for_string_literal74 = nil

      begin
        # at line 111:3: ( ^( 'while' clause block ) | ^( 'until' clause block ) )
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0 == WHILE )
          alt_20 = 1
        elsif ( look_20_0 == UNTIL )
          alt_20 = 2
        else
          raise NoViableAlternative( "", 20, 0 )
        end
        case alt_20
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 111:5: ^( 'while' clause block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal71 = match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_statement_568 )

          tree_for_string_literal71 = @adaptor.copy_node( string_literal71 )

          root_1 = @adaptor.become_root( tree_for_string_literal71, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_clause_IN_while_statement_570 )
          clause72 = clause
          @state.following.pop

          @adaptor.add_child( root_1, clause72.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_block_IN_while_statement_572 )
          block73 = block
          @state.following.pop

          @adaptor.add_child( root_1, block73.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 2
          root_0 = @adaptor.create_flat_list


          # at line 112:5: ^( 'until' clause block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal74 = match( UNTIL, TOKENS_FOLLOWING_UNTIL_IN_while_statement_582 )

          tree_for_string_literal74 = @adaptor.copy_node( string_literal74 )

          root_1 = @adaptor.become_root( tree_for_string_literal74, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_clause_IN_while_statement_584 )
          clause75 = clause
          @state.following.pop

          @adaptor.add_child( root_1, clause75.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_block_IN_while_statement_586 )
          block76 = block
          @state.following.pop

          @adaptor.add_child( root_1, block76.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )

      end
      
      return return_value
    end

    ForLoopReturnValue = define_return_scope 

    # 
    # parser rule for_loop
    # 
    # (in JejuneTree.g)
    # 115:1: for_loop : ( ^( 'for' ( variable_statement | expression ) expression expression block ) | ^( 'each' ( variable_statement | ID ) expression block ) | ^( FOR_IN ( variable_statement | ID ) expression block ) );
    # 
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )
      return_value = ForLoopReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal77 = nil
      string_literal83 = nil
      __ID85__ = nil
      __FOR_IN88__ = nil
      __ID90__ = nil
      variable_statement78 = nil
      expression79 = nil
      expression80 = nil
      expression81 = nil
      block82 = nil
      variable_statement84 = nil
      expression86 = nil
      block87 = nil
      variable_statement89 = nil
      expression91 = nil
      block92 = nil

      tree_for_string_literal77 = nil
      tree_for_string_literal83 = nil
      tree_for_ID85 = nil
      tree_for_FOR_IN88 = nil
      tree_for_ID90 = nil

      begin
        # at line 116:3: ( ^( 'for' ( variable_statement | expression ) expression expression block ) | ^( 'each' ( variable_statement | ID ) expression block ) | ^( FOR_IN ( variable_statement | ID ) expression block ) )
        alt_24 = 3
        case look_24 = @input.peek( 1 )
        when FOR then alt_24 = 1
        when EACH then alt_24 = 2
        when FOR_IN then alt_24 = 3
        else
          raise NoViableAlternative( "", 24, 0 )
        end
        case alt_24
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 116:5: ^( 'for' ( variable_statement | expression ) expression expression block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal77 = match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_603 )

          tree_for_string_literal77 = @adaptor.copy_node( string_literal77 )

          root_1 = @adaptor.become_root( tree_for_string_literal77, root_1 )



          match( DOWN, nil )
          # at line 116:15: ( variable_statement | expression )
          alt_21 = 2
          look_21_0 = @input.peek( 1 )

          if ( look_21_0 == VAR )
            alt_21 = 1
          elsif ( look_21_0.between?( AMP, AMP_ASGN ) || look_21_0 == POST_DECR || look_21_0.between?( GEQ, AREF ) || look_21_0.between?( GREATER, HAT ) || look_21_0.between?( ARROW, HAT_ASGN ) || look_21_0 == ASGN || look_21_0 == REGEX || look_21_0 == IN || look_21_0 == INCR || look_21_0.between?( INSTANCEOF, RSHIFT3 ) || look_21_0 == RSHIFT3_ASGN || look_21_0 == RSHIFT_ASGN || look_21_0 == LEQ || look_21_0.between?( LESS, SLASH ) || look_21_0 == SLASH_ASGN || look_21_0.between?( STAR, DECR ) || look_21_0 == STAR_ASGN || look_21_0 == LSHIFT || look_21_0.between?( DELETE, THIS ) || look_21_0.between?( MINUS, TILDE ) || look_21_0.between?( MINUS_ASGN, MOD ) || look_21_0.between?( MOD_ASGN, TYPEOF ) || look_21_0.between?( NEQ, UMINUS ) || look_21_0.between?( NEQQ, UNDEFINED ) || look_21_0 == NEW || look_21_0 == NOT || look_21_0.between?( NULL, UPLUS ) || look_21_0 == OBJECT || look_21_0.between?( EQ, OR_ASGN ) || look_21_0 == FALSE || look_21_0 == PIPE || look_21_0 == PIPE_ASGN || look_21_0 == PLUS || look_21_0.between?( ID, DOC ) )
            alt_21 = 2
          else
            raise NoViableAlternative( "", 21, 0 )
          end
          case alt_21
          when 1
            # at line 116:17: variable_statement
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_variable_statement_IN_for_loop_608 )
            variable_statement78 = variable_statement
            @state.following.pop

            @adaptor.add_child( root_1, variable_statement78.tree )


          when 2
            # at line 116:38: expression
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_expression_IN_for_loop_612 )
            expression79 = expression
            @state.following.pop

            @adaptor.add_child( root_1, expression79.tree )


          end
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_for_loop_616 )
          expression80 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression80.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_for_loop_618 )
          expression81 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression81.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_620 )
          block82 = block
          @state.following.pop

          @adaptor.add_child( root_1, block82.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 2
          root_0 = @adaptor.create_flat_list


          # at line 117:5: ^( 'each' ( variable_statement | ID ) expression block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal83 = match( EACH, TOKENS_FOLLOWING_EACH_IN_for_loop_630 )

          tree_for_string_literal83 = @adaptor.copy_node( string_literal83 )

          root_1 = @adaptor.become_root( tree_for_string_literal83, root_1 )



          match( DOWN, nil )
          # at line 117:15: ( variable_statement | ID )
          alt_22 = 2
          look_22_0 = @input.peek( 1 )

          if ( look_22_0 == VAR )
            alt_22 = 1
          elsif ( look_22_0 == ID )
            alt_22 = 2
          else
            raise NoViableAlternative( "", 22, 0 )
          end
          case alt_22
          when 1
            # at line 117:17: variable_statement
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_variable_statement_IN_for_loop_634 )
            variable_statement84 = variable_statement
            @state.following.pop

            @adaptor.add_child( root_1, variable_statement84.tree )


          when 2
            # at line 117:38: ID
            _last = @input.look
            __ID85__ = match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_638 )

            tree_for_ID85 = @adaptor.copy_node( __ID85__ )

            @adaptor.add_child( root_1, tree_for_ID85 )



          end
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_for_loop_642 )
          expression86 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression86.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_644 )
          block87 = block
          @state.following.pop

          @adaptor.add_child( root_1, block87.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 3
          root_0 = @adaptor.create_flat_list


          # at line 118:5: ^( FOR_IN ( variable_statement | ID ) expression block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __FOR_IN88__ = match( FOR_IN, TOKENS_FOLLOWING_FOR_IN_IN_for_loop_654 )

          tree_for_FOR_IN88 = @adaptor.copy_node( __FOR_IN88__ )

          root_1 = @adaptor.become_root( tree_for_FOR_IN88, root_1 )



          match( DOWN, nil )
          # at line 118:15: ( variable_statement | ID )
          alt_23 = 2
          look_23_0 = @input.peek( 1 )

          if ( look_23_0 == VAR )
            alt_23 = 1
          elsif ( look_23_0 == ID )
            alt_23 = 2
          else
            raise NoViableAlternative( "", 23, 0 )
          end
          case alt_23
          when 1
            # at line 118:17: variable_statement
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_variable_statement_IN_for_loop_658 )
            variable_statement89 = variable_statement
            @state.following.pop

            @adaptor.add_child( root_1, variable_statement89.tree )


          when 2
            # at line 118:38: ID
            _last = @input.look
            __ID90__ = match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_662 )

            tree_for_ID90 = @adaptor.copy_node( __ID90__ )

            @adaptor.add_child( root_1, tree_for_ID90 )



          end
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_for_loop_666 )
          expression91 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression91.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_668 )
          block92 = block
          @state.following.pop

          @adaptor.add_child( root_1, block92.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )

      end
      
      return return_value
    end

    ContinueStatementReturnValue = define_return_scope 

    # 
    # parser rule continue_statement
    # 
    # (in JejuneTree.g)
    # 121:1: continue_statement : ^( 'continue' ( ID )? ) ;
    # 
    def continue_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )
      return_value = ContinueStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal93 = nil
      __ID94__ = nil

      tree_for_string_literal93 = nil
      tree_for_ID94 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 122:5: ^( 'continue' ( ID )? )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal93 = match( CONTINUE, TOKENS_FOLLOWING_CONTINUE_IN_continue_statement_685 )

        tree_for_string_literal93 = @adaptor.copy_node( string_literal93 )

        root_1 = @adaptor.become_root( tree_for_string_literal93, root_1 )



        if @input.peek == DOWN
          match( DOWN, nil )
          # at line 122:19: ( ID )?
          alt_25 = 2
          look_25_0 = @input.peek( 1 )

          if ( look_25_0 == ID )
            alt_25 = 1
          end
          case alt_25
          when 1
            # at line 122:19: ID
            _last = @input.look
            __ID94__ = match( ID, TOKENS_FOLLOWING_ID_IN_continue_statement_687 )

            tree_for_ID94 = @adaptor.copy_node( __ID94__ )

            @adaptor.add_child( root_1, tree_for_ID94 )



          end

          match( UP, nil )
        end
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 22 )

      end
      
      return return_value
    end

    BreakStatementReturnValue = define_return_scope 

    # 
    # parser rule break_statement
    # 
    # (in JejuneTree.g)
    # 125:1: break_statement : ^( 'break' ( ID )? ) ;
    # 
    def break_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )
      return_value = BreakStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal95 = nil
      __ID96__ = nil

      tree_for_string_literal95 = nil
      tree_for_ID96 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 126:5: ^( 'break' ( ID )? )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal95 = match( BREAK, TOKENS_FOLLOWING_BREAK_IN_break_statement_705 )

        tree_for_string_literal95 = @adaptor.copy_node( string_literal95 )

        root_1 = @adaptor.become_root( tree_for_string_literal95, root_1 )



        if @input.peek == DOWN
          match( DOWN, nil )
          # at line 126:16: ( ID )?
          alt_26 = 2
          look_26_0 = @input.peek( 1 )

          if ( look_26_0 == ID )
            alt_26 = 1
          end
          case alt_26
          when 1
            # at line 126:16: ID
            _last = @input.look
            __ID96__ = match( ID, TOKENS_FOLLOWING_ID_IN_break_statement_707 )

            tree_for_ID96 = @adaptor.copy_node( __ID96__ )

            @adaptor.add_child( root_1, tree_for_ID96 )



          end

          match( UP, nil )
        end
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 23 )

      end
      
      return return_value
    end

    ReturnStatementReturnValue = define_return_scope 

    # 
    # parser rule return_statement
    # 
    # (in JejuneTree.g)
    # 129:1: return_statement : ^( 'return' ( expression )? ) ;
    # 
    def return_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )
      return_value = ReturnStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal97 = nil
      expression98 = nil

      tree_for_string_literal97 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 130:5: ^( 'return' ( expression )? )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal97 = match( RETURN, TOKENS_FOLLOWING_RETURN_IN_return_statement_725 )

        tree_for_string_literal97 = @adaptor.copy_node( string_literal97 )

        root_1 = @adaptor.become_root( tree_for_string_literal97, root_1 )



        if @input.peek == DOWN
          match( DOWN, nil )
          # at line 130:17: ( expression )?
          alt_27 = 2
          look_27_0 = @input.peek( 1 )

          if ( look_27_0.between?( AMP, AMP_ASGN ) || look_27_0 == POST_DECR || look_27_0.between?( GEQ, AREF ) || look_27_0.between?( GREATER, HAT ) || look_27_0.between?( ARROW, HAT_ASGN ) || look_27_0 == ASGN || look_27_0 == REGEX || look_27_0 == IN || look_27_0 == INCR || look_27_0.between?( INSTANCEOF, RSHIFT3 ) || look_27_0 == RSHIFT3_ASGN || look_27_0 == RSHIFT_ASGN || look_27_0 == LEQ || look_27_0.between?( LESS, SLASH ) || look_27_0 == SLASH_ASGN || look_27_0.between?( STAR, DECR ) || look_27_0 == STAR_ASGN || look_27_0 == LSHIFT || look_27_0.between?( DELETE, THIS ) || look_27_0.between?( MINUS, TILDE ) || look_27_0.between?( MINUS_ASGN, MOD ) || look_27_0.between?( MOD_ASGN, TYPEOF ) || look_27_0.between?( NEQ, UMINUS ) || look_27_0.between?( NEQQ, UNDEFINED ) || look_27_0 == NEW || look_27_0 == NOT || look_27_0.between?( NULL, UPLUS ) || look_27_0 == OBJECT || look_27_0.between?( EQ, OR_ASGN ) || look_27_0 == FALSE || look_27_0 == PIPE || look_27_0 == PIPE_ASGN || look_27_0 == PLUS || look_27_0.between?( ID, DOC ) )
            alt_27 = 1
          end
          case alt_27
          when 1
            # at line 130:17: expression
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_expression_IN_return_statement_727 )
            expression98 = expression
            @state.following.pop

            @adaptor.add_child( root_1, expression98.tree )


          end

          match( UP, nil )
        end
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )

      end
      
      return return_value
    end

    YieldStatementReturnValue = define_return_scope 

    # 
    # parser rule yield_statement
    # 
    # (in JejuneTree.g)
    # 133:1: yield_statement : ^( 'yield' ( expression )? ) ;
    # 
    def yield_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )
      return_value = YieldStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal99 = nil
      expression100 = nil

      tree_for_string_literal99 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 134:5: ^( 'yield' ( expression )? )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal99 = match( YIELD, TOKENS_FOLLOWING_YIELD_IN_yield_statement_745 )

        tree_for_string_literal99 = @adaptor.copy_node( string_literal99 )

        root_1 = @adaptor.become_root( tree_for_string_literal99, root_1 )



        if @input.peek == DOWN
          match( DOWN, nil )
          # at line 134:16: ( expression )?
          alt_28 = 2
          look_28_0 = @input.peek( 1 )

          if ( look_28_0.between?( AMP, AMP_ASGN ) || look_28_0 == POST_DECR || look_28_0.between?( GEQ, AREF ) || look_28_0.between?( GREATER, HAT ) || look_28_0.between?( ARROW, HAT_ASGN ) || look_28_0 == ASGN || look_28_0 == REGEX || look_28_0 == IN || look_28_0 == INCR || look_28_0.between?( INSTANCEOF, RSHIFT3 ) || look_28_0 == RSHIFT3_ASGN || look_28_0 == RSHIFT_ASGN || look_28_0 == LEQ || look_28_0.between?( LESS, SLASH ) || look_28_0 == SLASH_ASGN || look_28_0.between?( STAR, DECR ) || look_28_0 == STAR_ASGN || look_28_0 == LSHIFT || look_28_0.between?( DELETE, THIS ) || look_28_0.between?( MINUS, TILDE ) || look_28_0.between?( MINUS_ASGN, MOD ) || look_28_0.between?( MOD_ASGN, TYPEOF ) || look_28_0.between?( NEQ, UMINUS ) || look_28_0.between?( NEQQ, UNDEFINED ) || look_28_0 == NEW || look_28_0 == NOT || look_28_0.between?( NULL, UPLUS ) || look_28_0 == OBJECT || look_28_0.between?( EQ, OR_ASGN ) || look_28_0 == FALSE || look_28_0 == PIPE || look_28_0 == PIPE_ASGN || look_28_0 == PLUS || look_28_0.between?( ID, DOC ) )
            alt_28 = 1
          end
          case alt_28
          when 1
            # at line 134:16: expression
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_expression_IN_yield_statement_747 )
            expression100 = expression
            @state.following.pop

            @adaptor.add_child( root_1, expression100.tree )


          end

          match( UP, nil )
        end
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 25 )

      end
      
      return return_value
    end

    ThrowStatementReturnValue = define_return_scope 

    # 
    # parser rule throw_statement
    # 
    # (in JejuneTree.g)
    # 137:1: throw_statement : ^( 'throw' ( expression )? ) ;
    # 
    def throw_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )
      return_value = ThrowStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal101 = nil
      expression102 = nil

      tree_for_string_literal101 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 138:5: ^( 'throw' ( expression )? )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        string_literal101 = match( THROW, TOKENS_FOLLOWING_THROW_IN_throw_statement_767 )

        tree_for_string_literal101 = @adaptor.copy_node( string_literal101 )

        root_1 = @adaptor.become_root( tree_for_string_literal101, root_1 )



        if @input.peek == DOWN
          match( DOWN, nil )
          # at line 138:16: ( expression )?
          alt_29 = 2
          look_29_0 = @input.peek( 1 )

          if ( look_29_0.between?( AMP, AMP_ASGN ) || look_29_0 == POST_DECR || look_29_0.between?( GEQ, AREF ) || look_29_0.between?( GREATER, HAT ) || look_29_0.between?( ARROW, HAT_ASGN ) || look_29_0 == ASGN || look_29_0 == REGEX || look_29_0 == IN || look_29_0 == INCR || look_29_0.between?( INSTANCEOF, RSHIFT3 ) || look_29_0 == RSHIFT3_ASGN || look_29_0 == RSHIFT_ASGN || look_29_0 == LEQ || look_29_0.between?( LESS, SLASH ) || look_29_0 == SLASH_ASGN || look_29_0.between?( STAR, DECR ) || look_29_0 == STAR_ASGN || look_29_0 == LSHIFT || look_29_0.between?( DELETE, THIS ) || look_29_0.between?( MINUS, TILDE ) || look_29_0.between?( MINUS_ASGN, MOD ) || look_29_0.between?( MOD_ASGN, TYPEOF ) || look_29_0.between?( NEQ, UMINUS ) || look_29_0.between?( NEQQ, UNDEFINED ) || look_29_0 == NEW || look_29_0 == NOT || look_29_0.between?( NULL, UPLUS ) || look_29_0 == OBJECT || look_29_0.between?( EQ, OR_ASGN ) || look_29_0 == FALSE || look_29_0 == PIPE || look_29_0 == PIPE_ASGN || look_29_0 == PLUS || look_29_0.between?( ID, DOC ) )
            alt_29 = 1
          end
          case alt_29
          when 1
            # at line 138:16: expression
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_expression_IN_throw_statement_769 )
            expression102 = expression
            @state.following.pop

            @adaptor.add_child( root_1, expression102.tree )


          end

          match( UP, nil )
        end
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 26 )

      end
      
      return return_value
    end

    ExpressionListReturnValue = define_return_scope 

    # 
    # parser rule expression_list
    # 
    # (in JejuneTree.g)
    # 141:1: expression_list : expression ( ',' expression )* ;
    # 
    def expression_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )
      return_value = ExpressionListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      char_literal104 = nil
      expression103 = nil
      expression105 = nil

      tree_for_char_literal104 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 146:5: expression ( ',' expression )*
        _last = @input.look
        @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_list_788 )
        expression103 = expression
        @state.following.pop

        @adaptor.add_child( root_0, expression103.tree )
        # at line 146:16: ( ',' expression )*
        while true # decision 30
          alt_30 = 2
          look_30_0 = @input.peek( 1 )

          if ( look_30_0 == COMMA )
            alt_30 = 1

          end
          case alt_30
          when 1
            # at line 146:18: ',' expression
            _last = @input.look
            char_literal104 = match( COMMA, TOKENS_FOLLOWING_COMMA_IN_expression_list_792 )

            tree_for_char_literal104 = @adaptor.copy_node( char_literal104 )

            root_0 = @adaptor.become_root( tree_for_char_literal104, root_0 )

            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_list_795 )
            expression105 = expression
            @state.following.pop

            @adaptor.add_child( root_0, expression105.tree )


          else
            break # out of loop for decision 30
          end
        end # loop for decision 30


        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )

      end
      
      return return_value
    end

    ExpressionReturnValue = define_return_scope 

    # 
    # parser rule expression
    # 
    # (in JejuneTree.g)
    # 149:1: expression : ( ^( '?' expression expression expression ) | ^( '=' expression expression ) | ^( '*=' expression expression ) | ^( SLASH_ASGN expression expression ) | ^( MOD_ASGN expression expression ) | ^( '+=' expression expression ) | ^( '-=' expression expression ) | ^( '<<=' expression expression ) | ^( '>>=' expression expression ) | ^( '>>>=' expression expression ) | ^( '&=' expression expression ) | ^( '^=' expression expression ) | ^( '||=' expression expression ) | ^( '|=' expression expression ) | ^( '|' expression expression ) | ^( '||' expression expression ) | ^( '&' expression expression ) | ^( '^' expression expression ) | ^( '>>' expression expression ) | ^( '<<' expression expression ) | ^( '>>>' expression expression ) | ^( '-' expression expression ) | ^( '+' expression expression ) | ^( MOD expression expression ) | ^( SLASH expression expression ) | ^( '*' expression expression ) | ^( '==' expression expression ) | ^( '===' expression expression ) | ^( '!=' expression expression ) | ^( '!==' expression expression ) | ^( '>=' expression expression ) | ^( '<=' expression expression ) | ^( '>' expression expression ) | ^( '<' expression expression ) | ^( 'instanceof' expression expression ) | ^( 'in' expression expression ) | ^( 'delete' expression ) | ^( 'void' expression ) | ^( 'typeof' expression ) | ^( '++' expression ) | ^( '--' expression ) | ^( UPLUS expression ) | ^( UMINUS expression ) | ^( '~' expression ) | ^( '!' expression ) | ^( POST_INCR expression ) | ^( POST_DECR expression ) | ^( AREF expression expression ) | ^( '.' expression property_name ) | ^( CALL expression arguments ) | ^( ITER parameters block ) | ^( 'new' expression ( arguments )? ) | literal );
    # 
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )
      return_value = ExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      char_literal106 = nil
      char_literal110 = nil
      string_literal113 = nil
      __SLASH_ASGN116__ = nil
      __MOD_ASGN119__ = nil
      string_literal122 = nil
      string_literal125 = nil
      string_literal128 = nil
      string_literal131 = nil
      string_literal134 = nil
      string_literal137 = nil
      string_literal140 = nil
      string_literal143 = nil
      string_literal146 = nil
      char_literal149 = nil
      string_literal152 = nil
      char_literal155 = nil
      char_literal158 = nil
      string_literal161 = nil
      string_literal164 = nil
      string_literal167 = nil
      char_literal170 = nil
      char_literal173 = nil
      __MOD176__ = nil
      __SLASH179__ = nil
      char_literal182 = nil
      string_literal185 = nil
      string_literal188 = nil
      string_literal191 = nil
      string_literal194 = nil
      string_literal197 = nil
      string_literal200 = nil
      char_literal203 = nil
      char_literal206 = nil
      string_literal209 = nil
      string_literal212 = nil
      string_literal215 = nil
      string_literal217 = nil
      string_literal219 = nil
      string_literal221 = nil
      string_literal223 = nil
      __UPLUS225__ = nil
      __UMINUS227__ = nil
      char_literal229 = nil
      char_literal231 = nil
      __POST_INCR233__ = nil
      __POST_DECR235__ = nil
      __AREF237__ = nil
      char_literal240 = nil
      __CALL243__ = nil
      __ITER246__ = nil
      string_literal249 = nil
      expression107 = nil
      expression108 = nil
      expression109 = nil
      expression111 = nil
      expression112 = nil
      expression114 = nil
      expression115 = nil
      expression117 = nil
      expression118 = nil
      expression120 = nil
      expression121 = nil
      expression123 = nil
      expression124 = nil
      expression126 = nil
      expression127 = nil
      expression129 = nil
      expression130 = nil
      expression132 = nil
      expression133 = nil
      expression135 = nil
      expression136 = nil
      expression138 = nil
      expression139 = nil
      expression141 = nil
      expression142 = nil
      expression144 = nil
      expression145 = nil
      expression147 = nil
      expression148 = nil
      expression150 = nil
      expression151 = nil
      expression153 = nil
      expression154 = nil
      expression156 = nil
      expression157 = nil
      expression159 = nil
      expression160 = nil
      expression162 = nil
      expression163 = nil
      expression165 = nil
      expression166 = nil
      expression168 = nil
      expression169 = nil
      expression171 = nil
      expression172 = nil
      expression174 = nil
      expression175 = nil
      expression177 = nil
      expression178 = nil
      expression180 = nil
      expression181 = nil
      expression183 = nil
      expression184 = nil
      expression186 = nil
      expression187 = nil
      expression189 = nil
      expression190 = nil
      expression192 = nil
      expression193 = nil
      expression195 = nil
      expression196 = nil
      expression198 = nil
      expression199 = nil
      expression201 = nil
      expression202 = nil
      expression204 = nil
      expression205 = nil
      expression207 = nil
      expression208 = nil
      expression210 = nil
      expression211 = nil
      expression213 = nil
      expression214 = nil
      expression216 = nil
      expression218 = nil
      expression220 = nil
      expression222 = nil
      expression224 = nil
      expression226 = nil
      expression228 = nil
      expression230 = nil
      expression232 = nil
      expression234 = nil
      expression236 = nil
      expression238 = nil
      expression239 = nil
      expression241 = nil
      property_name242 = nil
      expression244 = nil
      arguments245 = nil
      parameters247 = nil
      block248 = nil
      expression250 = nil
      arguments251 = nil
      literal252 = nil

      tree_for_char_literal106 = nil
      tree_for_char_literal110 = nil
      tree_for_string_literal113 = nil
      tree_for_SLASH_ASGN116 = nil
      tree_for_MOD_ASGN119 = nil
      tree_for_string_literal122 = nil
      tree_for_string_literal125 = nil
      tree_for_string_literal128 = nil
      tree_for_string_literal131 = nil
      tree_for_string_literal134 = nil
      tree_for_string_literal137 = nil
      tree_for_string_literal140 = nil
      tree_for_string_literal143 = nil
      tree_for_string_literal146 = nil
      tree_for_char_literal149 = nil
      tree_for_string_literal152 = nil
      tree_for_char_literal155 = nil
      tree_for_char_literal158 = nil
      tree_for_string_literal161 = nil
      tree_for_string_literal164 = nil
      tree_for_string_literal167 = nil
      tree_for_char_literal170 = nil
      tree_for_char_literal173 = nil
      tree_for_MOD176 = nil
      tree_for_SLASH179 = nil
      tree_for_char_literal182 = nil
      tree_for_string_literal185 = nil
      tree_for_string_literal188 = nil
      tree_for_string_literal191 = nil
      tree_for_string_literal194 = nil
      tree_for_string_literal197 = nil
      tree_for_string_literal200 = nil
      tree_for_char_literal203 = nil
      tree_for_char_literal206 = nil
      tree_for_string_literal209 = nil
      tree_for_string_literal212 = nil
      tree_for_string_literal215 = nil
      tree_for_string_literal217 = nil
      tree_for_string_literal219 = nil
      tree_for_string_literal221 = nil
      tree_for_string_literal223 = nil
      tree_for_UPLUS225 = nil
      tree_for_UMINUS227 = nil
      tree_for_char_literal229 = nil
      tree_for_char_literal231 = nil
      tree_for_POST_INCR233 = nil
      tree_for_POST_DECR235 = nil
      tree_for_AREF237 = nil
      tree_for_char_literal240 = nil
      tree_for_CALL243 = nil
      tree_for_ITER246 = nil
      tree_for_string_literal249 = nil

      begin
        # at line 150:3: ( ^( '?' expression expression expression ) | ^( '=' expression expression ) | ^( '*=' expression expression ) | ^( SLASH_ASGN expression expression ) | ^( MOD_ASGN expression expression ) | ^( '+=' expression expression ) | ^( '-=' expression expression ) | ^( '<<=' expression expression ) | ^( '>>=' expression expression ) | ^( '>>>=' expression expression ) | ^( '&=' expression expression ) | ^( '^=' expression expression ) | ^( '||=' expression expression ) | ^( '|=' expression expression ) | ^( '|' expression expression ) | ^( '||' expression expression ) | ^( '&' expression expression ) | ^( '^' expression expression ) | ^( '>>' expression expression ) | ^( '<<' expression expression ) | ^( '>>>' expression expression ) | ^( '-' expression expression ) | ^( '+' expression expression ) | ^( MOD expression expression ) | ^( SLASH expression expression ) | ^( '*' expression expression ) | ^( '==' expression expression ) | ^( '===' expression expression ) | ^( '!=' expression expression ) | ^( '!==' expression expression ) | ^( '>=' expression expression ) | ^( '<=' expression expression ) | ^( '>' expression expression ) | ^( '<' expression expression ) | ^( 'instanceof' expression expression ) | ^( 'in' expression expression ) | ^( 'delete' expression ) | ^( 'void' expression ) | ^( 'typeof' expression ) | ^( '++' expression ) | ^( '--' expression ) | ^( UPLUS expression ) | ^( UMINUS expression ) | ^( '~' expression ) | ^( '!' expression ) | ^( POST_INCR expression ) | ^( POST_DECR expression ) | ^( AREF expression expression ) | ^( '.' expression property_name ) | ^( CALL expression arguments ) | ^( ITER parameters block ) | ^( 'new' expression ( arguments )? ) | literal )
        alt_32 = 53
        case look_32 = @input.peek( 1 )
        when QMARK then alt_32 = 1
        when ASGN then alt_32 = 2
        when STAR_ASGN then alt_32 = 3
        when SLASH_ASGN then alt_32 = 4
        when MOD_ASGN then alt_32 = 5
        when PLUS_ASGN then alt_32 = 6
        when MINUS_ASGN then alt_32 = 7
        when LSHIFT_ASGN then alt_32 = 8
        when RSHIFT_ASGN then alt_32 = 9
        when RSHIFT3_ASGN then alt_32 = 10
        when AMP_ASGN then alt_32 = 11
        when HAT_ASGN then alt_32 = 12
        when OR_ASGN then alt_32 = 13
        when PIPE_ASGN then alt_32 = 14
        when PIPE then alt_32 = 15
        when OR then alt_32 = 16
        when AMP then alt_32 = 17
        when HAT then alt_32 = 18
        when RSHIFT then alt_32 = 19
        when LSHIFT then alt_32 = 20
        when RSHIFT3 then alt_32 = 21
        when MINUS then alt_32 = 22
        when PLUS then alt_32 = 23
        when MOD then alt_32 = 24
        when SLASH then alt_32 = 25
        when STAR then alt_32 = 26
        when EQ then alt_32 = 27
        when EQQ then alt_32 = 28
        when NEQ then alt_32 = 29
        when NEQQ then alt_32 = 30
        when GEQ then alt_32 = 31
        when LEQ then alt_32 = 32
        when GREATER then alt_32 = 33
        when LESS then alt_32 = 34
        when INSTANCEOF then alt_32 = 35
        when IN then alt_32 = 36
        when DELETE then alt_32 = 37
        when VOID then alt_32 = 38
        when TYPEOF then alt_32 = 39
        when INCR then alt_32 = 40
        when DECR then alt_32 = 41
        when UPLUS then alt_32 = 42
        when UMINUS then alt_32 = 43
        when TILDE then alt_32 = 44
        when NOT then alt_32 = 45
        when POST_INCR then alt_32 = 46
        when POST_DECR then alt_32 = 47
        when AREF then alt_32 = 48
        when DOT then alt_32 = 49
        when CALL then alt_32 = 50
        when ITER then alt_32 = 51
        when NEW then alt_32 = 52
        when FUNCTION, ARRAY, ARROW, REGEX, THIS, TRUE, UNDEFINED, NULL, OBJECT, FALSE, ID, IVAR, NUMBER, STRING, DOC then alt_32 = 53
        else
          raise NoViableAlternative( "", 32, 0 )
        end
        case alt_32
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 150:5: ^( '?' expression expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal106 = match( QMARK, TOKENS_FOLLOWING_QMARK_IN_expression_813 )

          tree_for_char_literal106 = @adaptor.copy_node( char_literal106 )

          root_1 = @adaptor.become_root( tree_for_char_literal106, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_815 )
          expression107 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression107.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_817 )
          expression108 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression108.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_819 )
          expression109 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression109.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 2
          root_0 = @adaptor.create_flat_list


          # at line 151:5: ^( '=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal110 = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_expression_829 )

          tree_for_char_literal110 = @adaptor.copy_node( char_literal110 )

          root_1 = @adaptor.become_root( tree_for_char_literal110, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_831 )
          expression111 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression111.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_833 )
          expression112 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression112.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 3
          root_0 = @adaptor.create_flat_list


          # at line 152:5: ^( '*=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal113 = match( STAR_ASGN, TOKENS_FOLLOWING_STAR_ASGN_IN_expression_843 )

          tree_for_string_literal113 = @adaptor.copy_node( string_literal113 )

          root_1 = @adaptor.become_root( tree_for_string_literal113, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_845 )
          expression114 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression114.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_847 )
          expression115 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression115.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 4
          root_0 = @adaptor.create_flat_list


          # at line 153:5: ^( SLASH_ASGN expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __SLASH_ASGN116__ = match( SLASH_ASGN, TOKENS_FOLLOWING_SLASH_ASGN_IN_expression_857 )

          tree_for_SLASH_ASGN116 = @adaptor.copy_node( __SLASH_ASGN116__ )

          root_1 = @adaptor.become_root( tree_for_SLASH_ASGN116, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_859 )
          expression117 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression117.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_861 )
          expression118 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression118.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 5
          root_0 = @adaptor.create_flat_list


          # at line 154:5: ^( MOD_ASGN expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __MOD_ASGN119__ = match( MOD_ASGN, TOKENS_FOLLOWING_MOD_ASGN_IN_expression_871 )

          tree_for_MOD_ASGN119 = @adaptor.copy_node( __MOD_ASGN119__ )

          root_1 = @adaptor.become_root( tree_for_MOD_ASGN119, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_873 )
          expression120 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression120.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_875 )
          expression121 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression121.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 6
          root_0 = @adaptor.create_flat_list


          # at line 155:5: ^( '+=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal122 = match( PLUS_ASGN, TOKENS_FOLLOWING_PLUS_ASGN_IN_expression_885 )

          tree_for_string_literal122 = @adaptor.copy_node( string_literal122 )

          root_1 = @adaptor.become_root( tree_for_string_literal122, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_887 )
          expression123 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression123.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_889 )
          expression124 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression124.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 7
          root_0 = @adaptor.create_flat_list


          # at line 156:5: ^( '-=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal125 = match( MINUS_ASGN, TOKENS_FOLLOWING_MINUS_ASGN_IN_expression_899 )

          tree_for_string_literal125 = @adaptor.copy_node( string_literal125 )

          root_1 = @adaptor.become_root( tree_for_string_literal125, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_901 )
          expression126 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression126.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_903 )
          expression127 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression127.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 8
          root_0 = @adaptor.create_flat_list


          # at line 157:5: ^( '<<=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal128 = match( LSHIFT_ASGN, TOKENS_FOLLOWING_LSHIFT_ASGN_IN_expression_913 )

          tree_for_string_literal128 = @adaptor.copy_node( string_literal128 )

          root_1 = @adaptor.become_root( tree_for_string_literal128, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_915 )
          expression129 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression129.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_917 )
          expression130 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression130.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 9
          root_0 = @adaptor.create_flat_list


          # at line 158:5: ^( '>>=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal131 = match( RSHIFT_ASGN, TOKENS_FOLLOWING_RSHIFT_ASGN_IN_expression_927 )

          tree_for_string_literal131 = @adaptor.copy_node( string_literal131 )

          root_1 = @adaptor.become_root( tree_for_string_literal131, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_929 )
          expression132 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression132.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_931 )
          expression133 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression133.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 10
          root_0 = @adaptor.create_flat_list


          # at line 159:5: ^( '>>>=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal134 = match( RSHIFT3_ASGN, TOKENS_FOLLOWING_RSHIFT3_ASGN_IN_expression_941 )

          tree_for_string_literal134 = @adaptor.copy_node( string_literal134 )

          root_1 = @adaptor.become_root( tree_for_string_literal134, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_943 )
          expression135 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression135.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_945 )
          expression136 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression136.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 11
          root_0 = @adaptor.create_flat_list


          # at line 160:5: ^( '&=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal137 = match( AMP_ASGN, TOKENS_FOLLOWING_AMP_ASGN_IN_expression_955 )

          tree_for_string_literal137 = @adaptor.copy_node( string_literal137 )

          root_1 = @adaptor.become_root( tree_for_string_literal137, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_957 )
          expression138 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression138.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_959 )
          expression139 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression139.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 12
          root_0 = @adaptor.create_flat_list


          # at line 161:5: ^( '^=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal140 = match( HAT_ASGN, TOKENS_FOLLOWING_HAT_ASGN_IN_expression_969 )

          tree_for_string_literal140 = @adaptor.copy_node( string_literal140 )

          root_1 = @adaptor.become_root( tree_for_string_literal140, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_971 )
          expression141 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression141.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_973 )
          expression142 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression142.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 13
          root_0 = @adaptor.create_flat_list


          # at line 162:5: ^( '||=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal143 = match( OR_ASGN, TOKENS_FOLLOWING_OR_ASGN_IN_expression_983 )

          tree_for_string_literal143 = @adaptor.copy_node( string_literal143 )

          root_1 = @adaptor.become_root( tree_for_string_literal143, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_985 )
          expression144 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression144.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_987 )
          expression145 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression145.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 14
          root_0 = @adaptor.create_flat_list


          # at line 163:5: ^( '|=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal146 = match( PIPE_ASGN, TOKENS_FOLLOWING_PIPE_ASGN_IN_expression_997 )

          tree_for_string_literal146 = @adaptor.copy_node( string_literal146 )

          root_1 = @adaptor.become_root( tree_for_string_literal146, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_999 )
          expression147 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression147.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1001 )
          expression148 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression148.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 15
          root_0 = @adaptor.create_flat_list


          # at line 164:5: ^( '|' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal149 = match( PIPE, TOKENS_FOLLOWING_PIPE_IN_expression_1011 )

          tree_for_char_literal149 = @adaptor.copy_node( char_literal149 )

          root_1 = @adaptor.become_root( tree_for_char_literal149, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1013 )
          expression150 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression150.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1015 )
          expression151 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression151.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 16
          root_0 = @adaptor.create_flat_list


          # at line 165:5: ^( '||' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal152 = match( OR, TOKENS_FOLLOWING_OR_IN_expression_1025 )

          tree_for_string_literal152 = @adaptor.copy_node( string_literal152 )

          root_1 = @adaptor.become_root( tree_for_string_literal152, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1027 )
          expression153 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression153.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1029 )
          expression154 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression154.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 17
          root_0 = @adaptor.create_flat_list


          # at line 166:5: ^( '&' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal155 = match( AMP, TOKENS_FOLLOWING_AMP_IN_expression_1039 )

          tree_for_char_literal155 = @adaptor.copy_node( char_literal155 )

          root_1 = @adaptor.become_root( tree_for_char_literal155, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1041 )
          expression156 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression156.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1043 )
          expression157 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression157.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 18
          root_0 = @adaptor.create_flat_list


          # at line 167:5: ^( '^' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal158 = match( HAT, TOKENS_FOLLOWING_HAT_IN_expression_1053 )

          tree_for_char_literal158 = @adaptor.copy_node( char_literal158 )

          root_1 = @adaptor.become_root( tree_for_char_literal158, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1055 )
          expression159 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression159.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1057 )
          expression160 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression160.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 19
          root_0 = @adaptor.create_flat_list


          # at line 168:5: ^( '>>' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal161 = match( RSHIFT, TOKENS_FOLLOWING_RSHIFT_IN_expression_1067 )

          tree_for_string_literal161 = @adaptor.copy_node( string_literal161 )

          root_1 = @adaptor.become_root( tree_for_string_literal161, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1069 )
          expression162 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression162.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1071 )
          expression163 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression163.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 20
          root_0 = @adaptor.create_flat_list


          # at line 169:5: ^( '<<' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal164 = match( LSHIFT, TOKENS_FOLLOWING_LSHIFT_IN_expression_1081 )

          tree_for_string_literal164 = @adaptor.copy_node( string_literal164 )

          root_1 = @adaptor.become_root( tree_for_string_literal164, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1083 )
          expression165 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression165.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1085 )
          expression166 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression166.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 21
          root_0 = @adaptor.create_flat_list


          # at line 170:5: ^( '>>>' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal167 = match( RSHIFT3, TOKENS_FOLLOWING_RSHIFT3_IN_expression_1095 )

          tree_for_string_literal167 = @adaptor.copy_node( string_literal167 )

          root_1 = @adaptor.become_root( tree_for_string_literal167, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1097 )
          expression168 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression168.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1099 )
          expression169 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression169.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 22
          root_0 = @adaptor.create_flat_list


          # at line 171:5: ^( '-' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal170 = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_expression_1109 )

          tree_for_char_literal170 = @adaptor.copy_node( char_literal170 )

          root_1 = @adaptor.become_root( tree_for_char_literal170, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1111 )
          expression171 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression171.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1113 )
          expression172 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression172.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 23
          root_0 = @adaptor.create_flat_list


          # at line 172:5: ^( '+' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal173 = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_expression_1123 )

          tree_for_char_literal173 = @adaptor.copy_node( char_literal173 )

          root_1 = @adaptor.become_root( tree_for_char_literal173, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1125 )
          expression174 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression174.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1127 )
          expression175 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression175.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 24
          root_0 = @adaptor.create_flat_list


          # at line 173:5: ^( MOD expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __MOD176__ = match( MOD, TOKENS_FOLLOWING_MOD_IN_expression_1137 )

          tree_for_MOD176 = @adaptor.copy_node( __MOD176__ )

          root_1 = @adaptor.become_root( tree_for_MOD176, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1139 )
          expression177 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression177.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1141 )
          expression178 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression178.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 25
          root_0 = @adaptor.create_flat_list


          # at line 174:5: ^( SLASH expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __SLASH179__ = match( SLASH, TOKENS_FOLLOWING_SLASH_IN_expression_1151 )

          tree_for_SLASH179 = @adaptor.copy_node( __SLASH179__ )

          root_1 = @adaptor.become_root( tree_for_SLASH179, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1153 )
          expression180 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression180.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1155 )
          expression181 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression181.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 26
          root_0 = @adaptor.create_flat_list


          # at line 175:5: ^( '*' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal182 = match( STAR, TOKENS_FOLLOWING_STAR_IN_expression_1165 )

          tree_for_char_literal182 = @adaptor.copy_node( char_literal182 )

          root_1 = @adaptor.become_root( tree_for_char_literal182, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1167 )
          expression183 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression183.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1169 )
          expression184 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression184.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 27
          root_0 = @adaptor.create_flat_list


          # at line 176:5: ^( '==' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal185 = match( EQ, TOKENS_FOLLOWING_EQ_IN_expression_1179 )

          tree_for_string_literal185 = @adaptor.copy_node( string_literal185 )

          root_1 = @adaptor.become_root( tree_for_string_literal185, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1181 )
          expression186 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression186.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1183 )
          expression187 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression187.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 28
          root_0 = @adaptor.create_flat_list


          # at line 177:5: ^( '===' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal188 = match( EQQ, TOKENS_FOLLOWING_EQQ_IN_expression_1193 )

          tree_for_string_literal188 = @adaptor.copy_node( string_literal188 )

          root_1 = @adaptor.become_root( tree_for_string_literal188, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1195 )
          expression189 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression189.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1197 )
          expression190 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression190.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 29
          root_0 = @adaptor.create_flat_list


          # at line 178:5: ^( '!=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal191 = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expression_1207 )

          tree_for_string_literal191 = @adaptor.copy_node( string_literal191 )

          root_1 = @adaptor.become_root( tree_for_string_literal191, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1209 )
          expression192 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression192.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1211 )
          expression193 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression193.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 30
          root_0 = @adaptor.create_flat_list


          # at line 179:5: ^( '!==' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal194 = match( NEQQ, TOKENS_FOLLOWING_NEQQ_IN_expression_1221 )

          tree_for_string_literal194 = @adaptor.copy_node( string_literal194 )

          root_1 = @adaptor.become_root( tree_for_string_literal194, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1223 )
          expression195 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression195.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1225 )
          expression196 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression196.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 31
          root_0 = @adaptor.create_flat_list


          # at line 180:5: ^( '>=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal197 = match( GEQ, TOKENS_FOLLOWING_GEQ_IN_expression_1235 )

          tree_for_string_literal197 = @adaptor.copy_node( string_literal197 )

          root_1 = @adaptor.become_root( tree_for_string_literal197, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1237 )
          expression198 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression198.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1239 )
          expression199 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression199.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 32
          root_0 = @adaptor.create_flat_list


          # at line 181:5: ^( '<=' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal200 = match( LEQ, TOKENS_FOLLOWING_LEQ_IN_expression_1249 )

          tree_for_string_literal200 = @adaptor.copy_node( string_literal200 )

          root_1 = @adaptor.become_root( tree_for_string_literal200, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1251 )
          expression201 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression201.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1253 )
          expression202 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression202.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 33
          root_0 = @adaptor.create_flat_list


          # at line 182:5: ^( '>' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal203 = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expression_1263 )

          tree_for_char_literal203 = @adaptor.copy_node( char_literal203 )

          root_1 = @adaptor.become_root( tree_for_char_literal203, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1265 )
          expression204 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression204.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1267 )
          expression205 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression205.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 34
          root_0 = @adaptor.create_flat_list


          # at line 183:5: ^( '<' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal206 = match( LESS, TOKENS_FOLLOWING_LESS_IN_expression_1277 )

          tree_for_char_literal206 = @adaptor.copy_node( char_literal206 )

          root_1 = @adaptor.become_root( tree_for_char_literal206, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1279 )
          expression207 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression207.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1281 )
          expression208 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression208.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 35
          root_0 = @adaptor.create_flat_list


          # at line 184:5: ^( 'instanceof' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal209 = match( INSTANCEOF, TOKENS_FOLLOWING_INSTANCEOF_IN_expression_1291 )

          tree_for_string_literal209 = @adaptor.copy_node( string_literal209 )

          root_1 = @adaptor.become_root( tree_for_string_literal209, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1293 )
          expression210 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression210.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1295 )
          expression211 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression211.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 36
          root_0 = @adaptor.create_flat_list


          # at line 185:5: ^( 'in' expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal212 = match( IN, TOKENS_FOLLOWING_IN_IN_expression_1305 )

          tree_for_string_literal212 = @adaptor.copy_node( string_literal212 )

          root_1 = @adaptor.become_root( tree_for_string_literal212, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1307 )
          expression213 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression213.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1309 )
          expression214 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression214.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 37
          root_0 = @adaptor.create_flat_list


          # at line 186:5: ^( 'delete' expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal215 = match( DELETE, TOKENS_FOLLOWING_DELETE_IN_expression_1319 )

          tree_for_string_literal215 = @adaptor.copy_node( string_literal215 )

          root_1 = @adaptor.become_root( tree_for_string_literal215, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1321 )
          expression216 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression216.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 38
          root_0 = @adaptor.create_flat_list


          # at line 187:5: ^( 'void' expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal217 = match( VOID, TOKENS_FOLLOWING_VOID_IN_expression_1331 )

          tree_for_string_literal217 = @adaptor.copy_node( string_literal217 )

          root_1 = @adaptor.become_root( tree_for_string_literal217, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1333 )
          expression218 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression218.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 39
          root_0 = @adaptor.create_flat_list


          # at line 188:5: ^( 'typeof' expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal219 = match( TYPEOF, TOKENS_FOLLOWING_TYPEOF_IN_expression_1343 )

          tree_for_string_literal219 = @adaptor.copy_node( string_literal219 )

          root_1 = @adaptor.become_root( tree_for_string_literal219, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1345 )
          expression220 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression220.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 40
          root_0 = @adaptor.create_flat_list


          # at line 189:5: ^( '++' expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal221 = match( INCR, TOKENS_FOLLOWING_INCR_IN_expression_1355 )

          tree_for_string_literal221 = @adaptor.copy_node( string_literal221 )

          root_1 = @adaptor.become_root( tree_for_string_literal221, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1357 )
          expression222 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression222.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 41
          root_0 = @adaptor.create_flat_list


          # at line 190:5: ^( '--' expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal223 = match( DECR, TOKENS_FOLLOWING_DECR_IN_expression_1367 )

          tree_for_string_literal223 = @adaptor.copy_node( string_literal223 )

          root_1 = @adaptor.become_root( tree_for_string_literal223, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1369 )
          expression224 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression224.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 42
          root_0 = @adaptor.create_flat_list


          # at line 191:5: ^( UPLUS expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __UPLUS225__ = match( UPLUS, TOKENS_FOLLOWING_UPLUS_IN_expression_1379 )

          tree_for_UPLUS225 = @adaptor.copy_node( __UPLUS225__ )

          root_1 = @adaptor.become_root( tree_for_UPLUS225, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1381 )
          expression226 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression226.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 43
          root_0 = @adaptor.create_flat_list


          # at line 192:5: ^( UMINUS expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __UMINUS227__ = match( UMINUS, TOKENS_FOLLOWING_UMINUS_IN_expression_1391 )

          tree_for_UMINUS227 = @adaptor.copy_node( __UMINUS227__ )

          root_1 = @adaptor.become_root( tree_for_UMINUS227, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1393 )
          expression228 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression228.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 44
          root_0 = @adaptor.create_flat_list


          # at line 193:5: ^( '~' expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal229 = match( TILDE, TOKENS_FOLLOWING_TILDE_IN_expression_1403 )

          tree_for_char_literal229 = @adaptor.copy_node( char_literal229 )

          root_1 = @adaptor.become_root( tree_for_char_literal229, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1405 )
          expression230 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression230.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 45
          root_0 = @adaptor.create_flat_list


          # at line 194:5: ^( '!' expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal231 = match( NOT, TOKENS_FOLLOWING_NOT_IN_expression_1415 )

          tree_for_char_literal231 = @adaptor.copy_node( char_literal231 )

          root_1 = @adaptor.become_root( tree_for_char_literal231, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1417 )
          expression232 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression232.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 46
          root_0 = @adaptor.create_flat_list


          # at line 195:5: ^( POST_INCR expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __POST_INCR233__ = match( POST_INCR, TOKENS_FOLLOWING_POST_INCR_IN_expression_1427 )

          tree_for_POST_INCR233 = @adaptor.copy_node( __POST_INCR233__ )

          root_1 = @adaptor.become_root( tree_for_POST_INCR233, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1429 )
          expression234 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression234.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 47
          root_0 = @adaptor.create_flat_list


          # at line 196:5: ^( POST_DECR expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __POST_DECR235__ = match( POST_DECR, TOKENS_FOLLOWING_POST_DECR_IN_expression_1439 )

          tree_for_POST_DECR235 = @adaptor.copy_node( __POST_DECR235__ )

          root_1 = @adaptor.become_root( tree_for_POST_DECR235, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1441 )
          expression236 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression236.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 48
          root_0 = @adaptor.create_flat_list


          # at line 197:5: ^( AREF expression expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __AREF237__ = match( AREF, TOKENS_FOLLOWING_AREF_IN_expression_1451 )

          tree_for_AREF237 = @adaptor.copy_node( __AREF237__ )

          root_1 = @adaptor.become_root( tree_for_AREF237, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1453 )
          expression238 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression238.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1455 )
          expression239 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression239.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 49
          root_0 = @adaptor.create_flat_list


          # at line 198:5: ^( '.' expression property_name )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal240 = match( DOT, TOKENS_FOLLOWING_DOT_IN_expression_1465 )

          tree_for_char_literal240 = @adaptor.copy_node( char_literal240 )

          root_1 = @adaptor.become_root( tree_for_char_literal240, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1467 )
          expression241 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression241.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_property_name_IN_expression_1469 )
          property_name242 = property_name
          @state.following.pop

          @adaptor.add_child( root_1, property_name242.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 50
          root_0 = @adaptor.create_flat_list


          # at line 199:5: ^( CALL expression arguments )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __CALL243__ = match( CALL, TOKENS_FOLLOWING_CALL_IN_expression_1479 )

          tree_for_CALL243 = @adaptor.copy_node( __CALL243__ )

          root_1 = @adaptor.become_root( tree_for_CALL243, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1481 )
          expression244 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression244.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_arguments_IN_expression_1483 )
          arguments245 = arguments
          @state.following.pop

          @adaptor.add_child( root_1, arguments245.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 51
          root_0 = @adaptor.create_flat_list


          # at line 200:5: ^( ITER parameters block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __ITER246__ = match( ITER, TOKENS_FOLLOWING_ITER_IN_expression_1493 )

          tree_for_ITER246 = @adaptor.copy_node( __ITER246__ )

          root_1 = @adaptor.become_root( tree_for_ITER246, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_parameters_IN_expression_1495 )
          parameters247 = parameters
          @state.following.pop

          @adaptor.add_child( root_1, parameters247.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_block_IN_expression_1497 )
          block248 = block
          @state.following.pop

          @adaptor.add_child( root_1, block248.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 52
          root_0 = @adaptor.create_flat_list


          # at line 201:5: ^( 'new' expression ( arguments )? )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal249 = match( NEW, TOKENS_FOLLOWING_NEW_IN_expression_1507 )

          tree_for_string_literal249 = @adaptor.copy_node( string_literal249 )

          root_1 = @adaptor.become_root( tree_for_string_literal249, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_expression_1509 )
          expression250 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression250.tree )
          # at line 201:25: ( arguments )?
          alt_31 = 2
          look_31_0 = @input.peek( 1 )

          if ( look_31_0 == ARGUMENTS )
            alt_31 = 1
          end
          case alt_31
          when 1
            # at line 201:25: arguments
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_arguments_IN_expression_1511 )
            arguments251 = arguments
            @state.following.pop

            @adaptor.add_child( root_1, arguments251.tree )


          end

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 53
          root_0 = @adaptor.create_flat_list


          # at line 202:5: literal
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_literal_IN_expression_1520 )
          literal252 = literal
          @state.following.pop

          @adaptor.add_child( root_0, literal252.tree )


        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )

      end
      
      return return_value
    end

    ArgumentsReturnValue = define_return_scope 

    # 
    # parser rule arguments
    # 
    # (in JejuneTree.g)
    # 205:1: arguments : ^( ARGUMENTS ( argument )* ) ;
    # 
    def arguments
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )
      return_value = ArgumentsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      __ARGUMENTS253__ = nil
      argument254 = nil

      tree_for_ARGUMENTS253 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 206:5: ^( ARGUMENTS ( argument )* )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        __ARGUMENTS253__ = match( ARGUMENTS, TOKENS_FOLLOWING_ARGUMENTS_IN_arguments_1535 )

        tree_for_ARGUMENTS253 = @adaptor.copy_node( __ARGUMENTS253__ )

        root_1 = @adaptor.become_root( tree_for_ARGUMENTS253, root_1 )



        if @input.peek == DOWN
          match( DOWN, nil )
          # at line 206:18: ( argument )*
          while true # decision 33
            alt_33 = 2
            look_33_0 = @input.peek( 1 )

            if ( look_33_0.between?( AMP, AMP_ASGN ) || look_33_0 == POST_DECR || look_33_0.between?( GEQ, AREF ) || look_33_0.between?( GREATER, HAT ) || look_33_0.between?( ARROW, HAT_ASGN ) || look_33_0 == ASGN || look_33_0 == REGEX || look_33_0 == IN || look_33_0 == INCR || look_33_0.between?( INSTANCEOF, RSHIFT3 ) || look_33_0 == RSHIFT3_ASGN || look_33_0.between?( RSHIFT_ASGN, COLON ) || look_33_0 == LEQ || look_33_0.between?( LESS, SLASH ) || look_33_0 == SLASH_ASGN || look_33_0.between?( STAR, DECR ) || look_33_0 == STAR_ASGN || look_33_0 == LSHIFT || look_33_0.between?( DELETE, THIS ) || look_33_0.between?( MINUS, TILDE ) || look_33_0.between?( MINUS_ASGN, MOD ) || look_33_0.between?( MOD_ASGN, TYPEOF ) || look_33_0.between?( NEQ, UMINUS ) || look_33_0.between?( NEQQ, UNDEFINED ) || look_33_0 == NEW || look_33_0 == NOT || look_33_0.between?( NULL, UPLUS ) || look_33_0 == OBJECT || look_33_0.between?( EQ, OR_ASGN ) || look_33_0 == FALSE || look_33_0 == PIPE || look_33_0 == PIPE_ASGN || look_33_0 == PLUS || look_33_0.between?( ID, DOC ) )
              alt_33 = 1

            end
            case alt_33
            when 1
              # at line 206:18: argument
              _last = @input.look
              @state.following.push( TOKENS_FOLLOWING_argument_IN_arguments_1537 )
              argument254 = argument
              @state.following.pop

              @adaptor.add_child( root_1, argument254.tree )


            else
              break # out of loop for decision 33
            end
          end # loop for decision 33

          match( UP, nil )
        end
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 29 )

      end
      
      return return_value
    end

    ArgumentReturnValue = define_return_scope 

    # 
    # parser rule argument
    # 
    # (in JejuneTree.g)
    # 209:1: argument : ( ^( ':' property_name expression ) | expression );
    # 
    def argument
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )
      return_value = ArgumentReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      char_literal255 = nil
      property_name256 = nil
      expression257 = nil
      expression258 = nil

      tree_for_char_literal255 = nil

      begin
        # at line 210:3: ( ^( ':' property_name expression ) | expression )
        alt_34 = 2
        look_34_0 = @input.peek( 1 )

        if ( look_34_0 == COLON )
          alt_34 = 1
        elsif ( look_34_0.between?( AMP, AMP_ASGN ) || look_34_0 == POST_DECR || look_34_0.between?( GEQ, AREF ) || look_34_0.between?( GREATER, HAT ) || look_34_0.between?( ARROW, HAT_ASGN ) || look_34_0 == ASGN || look_34_0 == REGEX || look_34_0 == IN || look_34_0 == INCR || look_34_0.between?( INSTANCEOF, RSHIFT3 ) || look_34_0 == RSHIFT3_ASGN || look_34_0 == RSHIFT_ASGN || look_34_0 == LEQ || look_34_0.between?( LESS, SLASH ) || look_34_0 == SLASH_ASGN || look_34_0.between?( STAR, DECR ) || look_34_0 == STAR_ASGN || look_34_0 == LSHIFT || look_34_0.between?( DELETE, THIS ) || look_34_0.between?( MINUS, TILDE ) || look_34_0.between?( MINUS_ASGN, MOD ) || look_34_0.between?( MOD_ASGN, TYPEOF ) || look_34_0.between?( NEQ, UMINUS ) || look_34_0.between?( NEQQ, UNDEFINED ) || look_34_0 == NEW || look_34_0 == NOT || look_34_0.between?( NULL, UPLUS ) || look_34_0 == OBJECT || look_34_0.between?( EQ, OR_ASGN ) || look_34_0 == FALSE || look_34_0 == PIPE || look_34_0 == PIPE_ASGN || look_34_0 == PLUS || look_34_0.between?( ID, DOC ) )
          alt_34 = 2
        else
          raise NoViableAlternative( "", 34, 0 )
        end
        case alt_34
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 210:5: ^( ':' property_name expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal255 = match( COLON, TOKENS_FOLLOWING_COLON_IN_argument_1555 )

          tree_for_char_literal255 = @adaptor.copy_node( char_literal255 )

          root_1 = @adaptor.become_root( tree_for_char_literal255, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_property_name_IN_argument_1557 )
          property_name256 = property_name
          @state.following.pop

          @adaptor.add_child( root_1, property_name256.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_argument_1559 )
          expression257 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression257.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 2
          root_0 = @adaptor.create_flat_list


          # at line 211:5: expression
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_argument_1567 )
          expression258 = expression
          @state.following.pop

          @adaptor.add_child( root_0, expression258.tree )


        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 30 )

      end
      
      return return_value
    end

    ParametersReturnValue = define_return_scope 

    # 
    # parser rule parameters
    # 
    # (in JejuneTree.g)
    # 214:1: parameters : ^( PARAMS ( parameter )* ) ;
    # 
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )
      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      __PARAMS259__ = nil
      parameter260 = nil

      tree_for_PARAMS259 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 215:5: ^( PARAMS ( parameter )* )
        _save_last_1 = _last = @input.look
        _first_1 = nil
        root_1 = @adaptor.create_flat_list
        _last = @input.look
        __PARAMS259__ = match( PARAMS, TOKENS_FOLLOWING_PARAMS_IN_parameters_1582 )

        tree_for_PARAMS259 = @adaptor.copy_node( __PARAMS259__ )

        root_1 = @adaptor.become_root( tree_for_PARAMS259, root_1 )



        if @input.peek == DOWN
          match( DOWN, nil )
          # at line 215:15: ( parameter )*
          while true # decision 35
            alt_35 = 2
            look_35_0 = @input.peek( 1 )

            if ( look_35_0 == ASGN || look_35_0 == SPLAT || look_35_0 == ID )
              alt_35 = 1

            end
            case alt_35
            when 1
              # at line 215:15: parameter
              _last = @input.look
              @state.following.push( TOKENS_FOLLOWING_parameter_IN_parameters_1584 )
              parameter260 = parameter
              @state.following.pop

              @adaptor.add_child( root_1, parameter260.tree )


            else
              break # out of loop for decision 35
            end
          end # loop for decision 35

          match( UP, nil )
        end
        @adaptor.add_child( root_0, root_1 )
        _last = _save_last_1



        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 31 )

      end
      
      return return_value
    end

    ParameterReturnValue = define_return_scope 

    # 
    # parser rule parameter
    # 
    # (in JejuneTree.g)
    # 218:1: parameter : ( ^( SPLAT ID ) | ^( '=' ID expression ) | ID );
    # 
    def parameter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )
      return_value = ParameterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      __SPLAT261__ = nil
      __ID262__ = nil
      char_literal263 = nil
      __ID264__ = nil
      __ID266__ = nil
      expression265 = nil

      tree_for_SPLAT261 = nil
      tree_for_ID262 = nil
      tree_for_char_literal263 = nil
      tree_for_ID264 = nil
      tree_for_ID266 = nil

      begin
        # at line 219:3: ( ^( SPLAT ID ) | ^( '=' ID expression ) | ID )
        alt_36 = 3
        case look_36 = @input.peek( 1 )
        when SPLAT then alt_36 = 1
        when ASGN then alt_36 = 2
        when ID then alt_36 = 3
        else
          raise NoViableAlternative( "", 36, 0 )
        end
        case alt_36
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 219:5: ^( SPLAT ID )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __SPLAT261__ = match( SPLAT, TOKENS_FOLLOWING_SPLAT_IN_parameter_1602 )

          tree_for_SPLAT261 = @adaptor.copy_node( __SPLAT261__ )

          root_1 = @adaptor.become_root( tree_for_SPLAT261, root_1 )



          match( DOWN, nil )
          _last = @input.look
          __ID262__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameter_1604 )

          tree_for_ID262 = @adaptor.copy_node( __ID262__ )

          @adaptor.add_child( root_1, tree_for_ID262 )


          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 2
          root_0 = @adaptor.create_flat_list


          # at line 220:5: ^( '=' ID expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal263 = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_parameter_1614 )

          tree_for_char_literal263 = @adaptor.copy_node( char_literal263 )

          root_1 = @adaptor.become_root( tree_for_char_literal263, root_1 )



          match( DOWN, nil )
          _last = @input.look
          __ID264__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameter_1616 )

          tree_for_ID264 = @adaptor.copy_node( __ID264__ )

          @adaptor.add_child( root_1, tree_for_ID264 )

          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_parameter_1618 )
          expression265 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression265.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 3
          root_0 = @adaptor.create_flat_list


          # at line 221:5: ID
          _last = @input.look
          __ID266__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameter_1626 )

          tree_for_ID266 = @adaptor.copy_node( __ID266__ )

          @adaptor.add_child( root_0, tree_for_ID266 )



        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 32 )

      end
      
      return return_value
    end

    LiteralReturnValue = define_return_scope 

    # 
    # parser rule literal
    # 
    # (in JejuneTree.g)
    # 228:1: literal : ( 'this' | IVAR | ID | 'null' | 'true' | 'false' | 'undefined' | NUMBER | STRING | DOC | REGEX | ^( ARRAY ( argument )* ) | ^( OBJECT ( property_definition )* ) | ^( 'function' ( ID )? parameters statement_block ) | ^( '->' ( parameters )? statement_block ) );
    # 
    def literal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )
      return_value = LiteralReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal267 = nil
      __IVAR268__ = nil
      __ID269__ = nil
      string_literal270 = nil
      string_literal271 = nil
      string_literal272 = nil
      string_literal273 = nil
      __NUMBER274__ = nil
      __STRING275__ = nil
      __DOC276__ = nil
      __REGEX277__ = nil
      __ARRAY278__ = nil
      __OBJECT280__ = nil
      string_literal282 = nil
      __ID283__ = nil
      string_literal286 = nil
      argument279 = nil
      property_definition281 = nil
      parameters284 = nil
      statement_block285 = nil
      parameters287 = nil
      statement_block288 = nil

      tree_for_string_literal267 = nil
      tree_for_IVAR268 = nil
      tree_for_ID269 = nil
      tree_for_string_literal270 = nil
      tree_for_string_literal271 = nil
      tree_for_string_literal272 = nil
      tree_for_string_literal273 = nil
      tree_for_NUMBER274 = nil
      tree_for_STRING275 = nil
      tree_for_DOC276 = nil
      tree_for_REGEX277 = nil
      tree_for_ARRAY278 = nil
      tree_for_OBJECT280 = nil
      tree_for_string_literal282 = nil
      tree_for_ID283 = nil
      tree_for_string_literal286 = nil

      begin
        # at line 229:3: ( 'this' | IVAR | ID | 'null' | 'true' | 'false' | 'undefined' | NUMBER | STRING | DOC | REGEX | ^( ARRAY ( argument )* ) | ^( OBJECT ( property_definition )* ) | ^( 'function' ( ID )? parameters statement_block ) | ^( '->' ( parameters )? statement_block ) )
        alt_41 = 15
        case look_41 = @input.peek( 1 )
        when THIS then alt_41 = 1
        when IVAR then alt_41 = 2
        when ID then alt_41 = 3
        when NULL then alt_41 = 4
        when TRUE then alt_41 = 5
        when FALSE then alt_41 = 6
        when UNDEFINED then alt_41 = 7
        when NUMBER then alt_41 = 8
        when STRING then alt_41 = 9
        when DOC then alt_41 = 10
        when REGEX then alt_41 = 11
        when ARRAY then alt_41 = 12
        when OBJECT then alt_41 = 13
        when FUNCTION then alt_41 = 14
        when ARROW then alt_41 = 15
        else
          raise NoViableAlternative( "", 41, 0 )
        end
        case alt_41
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 229:5: 'this'
          _last = @input.look
          string_literal267 = match( THIS, TOKENS_FOLLOWING_THIS_IN_literal_1643 )

          tree_for_string_literal267 = @adaptor.copy_node( string_literal267 )

          @adaptor.add_child( root_0, tree_for_string_literal267 )



        when 2
          root_0 = @adaptor.create_flat_list


          # at line 230:5: IVAR
          _last = @input.look
          __IVAR268__ = match( IVAR, TOKENS_FOLLOWING_IVAR_IN_literal_1649 )

          tree_for_IVAR268 = @adaptor.copy_node( __IVAR268__ )

          @adaptor.add_child( root_0, tree_for_IVAR268 )



        when 3
          root_0 = @adaptor.create_flat_list


          # at line 231:5: ID
          _last = @input.look
          __ID269__ = match( ID, TOKENS_FOLLOWING_ID_IN_literal_1655 )

          tree_for_ID269 = @adaptor.copy_node( __ID269__ )

          @adaptor.add_child( root_0, tree_for_ID269 )



        when 4
          root_0 = @adaptor.create_flat_list


          # at line 232:5: 'null'
          _last = @input.look
          string_literal270 = match( NULL, TOKENS_FOLLOWING_NULL_IN_literal_1661 )

          tree_for_string_literal270 = @adaptor.copy_node( string_literal270 )

          @adaptor.add_child( root_0, tree_for_string_literal270 )



        when 5
          root_0 = @adaptor.create_flat_list


          # at line 233:5: 'true'
          _last = @input.look
          string_literal271 = match( TRUE, TOKENS_FOLLOWING_TRUE_IN_literal_1667 )

          tree_for_string_literal271 = @adaptor.copy_node( string_literal271 )

          @adaptor.add_child( root_0, tree_for_string_literal271 )



        when 6
          root_0 = @adaptor.create_flat_list


          # at line 234:5: 'false'
          _last = @input.look
          string_literal272 = match( FALSE, TOKENS_FOLLOWING_FALSE_IN_literal_1673 )

          tree_for_string_literal272 = @adaptor.copy_node( string_literal272 )

          @adaptor.add_child( root_0, tree_for_string_literal272 )



        when 7
          root_0 = @adaptor.create_flat_list


          # at line 235:5: 'undefined'
          _last = @input.look
          string_literal273 = match( UNDEFINED, TOKENS_FOLLOWING_UNDEFINED_IN_literal_1679 )

          tree_for_string_literal273 = @adaptor.copy_node( string_literal273 )

          @adaptor.add_child( root_0, tree_for_string_literal273 )



        when 8
          root_0 = @adaptor.create_flat_list


          # at line 236:5: NUMBER
          _last = @input.look
          __NUMBER274__ = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_literal_1685 )

          tree_for_NUMBER274 = @adaptor.copy_node( __NUMBER274__ )

          @adaptor.add_child( root_0, tree_for_NUMBER274 )



        when 9
          root_0 = @adaptor.create_flat_list


          # at line 237:5: STRING
          _last = @input.look
          __STRING275__ = match( STRING, TOKENS_FOLLOWING_STRING_IN_literal_1691 )

          tree_for_STRING275 = @adaptor.copy_node( __STRING275__ )

          @adaptor.add_child( root_0, tree_for_STRING275 )



        when 10
          root_0 = @adaptor.create_flat_list


          # at line 238:5: DOC
          _last = @input.look
          __DOC276__ = match( DOC, TOKENS_FOLLOWING_DOC_IN_literal_1697 )

          tree_for_DOC276 = @adaptor.copy_node( __DOC276__ )

          @adaptor.add_child( root_0, tree_for_DOC276 )



        when 11
          root_0 = @adaptor.create_flat_list


          # at line 239:5: REGEX
          _last = @input.look
          __REGEX277__ = match( REGEX, TOKENS_FOLLOWING_REGEX_IN_literal_1703 )

          tree_for_REGEX277 = @adaptor.copy_node( __REGEX277__ )

          @adaptor.add_child( root_0, tree_for_REGEX277 )



        when 12
          root_0 = @adaptor.create_flat_list


          # at line 240:5: ^( ARRAY ( argument )* )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __ARRAY278__ = match( ARRAY, TOKENS_FOLLOWING_ARRAY_IN_literal_1711 )

          tree_for_ARRAY278 = @adaptor.copy_node( __ARRAY278__ )

          root_1 = @adaptor.become_root( tree_for_ARRAY278, root_1 )



          if @input.peek == DOWN
            match( DOWN, nil )
            # at line 240:14: ( argument )*
            while true # decision 37
              alt_37 = 2
              look_37_0 = @input.peek( 1 )

              if ( look_37_0.between?( AMP, AMP_ASGN ) || look_37_0 == POST_DECR || look_37_0.between?( GEQ, AREF ) || look_37_0.between?( GREATER, HAT ) || look_37_0.between?( ARROW, HAT_ASGN ) || look_37_0 == ASGN || look_37_0 == REGEX || look_37_0 == IN || look_37_0 == INCR || look_37_0.between?( INSTANCEOF, RSHIFT3 ) || look_37_0 == RSHIFT3_ASGN || look_37_0.between?( RSHIFT_ASGN, COLON ) || look_37_0 == LEQ || look_37_0.between?( LESS, SLASH ) || look_37_0 == SLASH_ASGN || look_37_0.between?( STAR, DECR ) || look_37_0 == STAR_ASGN || look_37_0 == LSHIFT || look_37_0.between?( DELETE, THIS ) || look_37_0.between?( MINUS, TILDE ) || look_37_0.between?( MINUS_ASGN, MOD ) || look_37_0.between?( MOD_ASGN, TYPEOF ) || look_37_0.between?( NEQ, UMINUS ) || look_37_0.between?( NEQQ, UNDEFINED ) || look_37_0 == NEW || look_37_0 == NOT || look_37_0.between?( NULL, UPLUS ) || look_37_0 == OBJECT || look_37_0.between?( EQ, OR_ASGN ) || look_37_0 == FALSE || look_37_0 == PIPE || look_37_0 == PIPE_ASGN || look_37_0 == PLUS || look_37_0.between?( ID, DOC ) )
                alt_37 = 1

              end
              case alt_37
              when 1
                # at line 240:14: argument
                _last = @input.look
                @state.following.push( TOKENS_FOLLOWING_argument_IN_literal_1713 )
                argument279 = argument
                @state.following.pop

                @adaptor.add_child( root_1, argument279.tree )


              else
                break # out of loop for decision 37
              end
            end # loop for decision 37

            match( UP, nil )
          end
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 13
          root_0 = @adaptor.create_flat_list


          # at line 241:5: ^( OBJECT ( property_definition )* )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          __OBJECT280__ = match( OBJECT, TOKENS_FOLLOWING_OBJECT_IN_literal_1724 )

          tree_for_OBJECT280 = @adaptor.copy_node( __OBJECT280__ )

          root_1 = @adaptor.become_root( tree_for_OBJECT280, root_1 )



          if @input.peek == DOWN
            match( DOWN, nil )
            # at line 241:15: ( property_definition )*
            while true # decision 38
              alt_38 = 2
              look_38_0 = @input.peek( 1 )

              if ( look_38_0 == GET || look_38_0 == COLON || look_38_0 == SET )
                alt_38 = 1

              end
              case alt_38
              when 1
                # at line 241:15: property_definition
                _last = @input.look
                @state.following.push( TOKENS_FOLLOWING_property_definition_IN_literal_1726 )
                property_definition281 = property_definition
                @state.following.pop

                @adaptor.add_child( root_1, property_definition281.tree )


              else
                break # out of loop for decision 38
              end
            end # loop for decision 38

            match( UP, nil )
          end
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 14
          root_0 = @adaptor.create_flat_list


          # at line 242:5: ^( 'function' ( ID )? parameters statement_block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal282 = match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_literal_1737 )

          tree_for_string_literal282 = @adaptor.copy_node( string_literal282 )

          root_1 = @adaptor.become_root( tree_for_string_literal282, root_1 )



          match( DOWN, nil )
          # at line 242:19: ( ID )?
          alt_39 = 2
          look_39_0 = @input.peek( 1 )

          if ( look_39_0 == ID )
            alt_39 = 1
          end
          case alt_39
          when 1
            # at line 242:19: ID
            _last = @input.look
            __ID283__ = match( ID, TOKENS_FOLLOWING_ID_IN_literal_1739 )

            tree_for_ID283 = @adaptor.copy_node( __ID283__ )

            @adaptor.add_child( root_1, tree_for_ID283 )



          end
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_parameters_IN_literal_1742 )
          parameters284 = parameters
          @state.following.pop

          @adaptor.add_child( root_1, parameters284.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_statement_block_IN_literal_1744 )
          statement_block285 = statement_block
          @state.following.pop

          @adaptor.add_child( root_1, statement_block285.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 15
          root_0 = @adaptor.create_flat_list


          # at line 243:5: ^( '->' ( parameters )? statement_block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal286 = match( ARROW, TOKENS_FOLLOWING_ARROW_IN_literal_1754 )

          tree_for_string_literal286 = @adaptor.copy_node( string_literal286 )

          root_1 = @adaptor.become_root( tree_for_string_literal286, root_1 )



          match( DOWN, nil )
          # at line 243:13: ( parameters )?
          alt_40 = 2
          look_40_0 = @input.peek( 1 )

          if ( look_40_0 == PARAMS )
            alt_40 = 1
          end
          case alt_40
          when 1
            # at line 243:13: parameters
            _last = @input.look
            @state.following.push( TOKENS_FOLLOWING_parameters_IN_literal_1756 )
            parameters287 = parameters
            @state.following.pop

            @adaptor.add_child( root_1, parameters287.tree )


          end
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_statement_block_IN_literal_1759 )
          statement_block288 = statement_block
          @state.following.pop

          @adaptor.add_child( root_1, statement_block288.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 33 )

      end
      
      return return_value
    end

    PropertyDefinitionReturnValue = define_return_scope 

    # 
    # parser rule property_definition
    # 
    # (in JejuneTree.g)
    # 246:1: property_definition : ( ^( 'get' ID parameters block ) | ^( 'set' ID parameters block ) | ^( ':' property_name expression ) );
    # 
    def property_definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )
      return_value = PropertyDefinitionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      string_literal289 = nil
      __ID290__ = nil
      string_literal293 = nil
      __ID294__ = nil
      char_literal297 = nil
      parameters291 = nil
      block292 = nil
      parameters295 = nil
      block296 = nil
      property_name298 = nil
      expression299 = nil

      tree_for_string_literal289 = nil
      tree_for_ID290 = nil
      tree_for_string_literal293 = nil
      tree_for_ID294 = nil
      tree_for_char_literal297 = nil

      begin
        # at line 247:3: ( ^( 'get' ID parameters block ) | ^( 'set' ID parameters block ) | ^( ':' property_name expression ) )
        alt_42 = 3
        case look_42 = @input.peek( 1 )
        when GET then alt_42 = 1
        when SET then alt_42 = 2
        when COLON then alt_42 = 3
        else
          raise NoViableAlternative( "", 42, 0 )
        end
        case alt_42
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 247:5: ^( 'get' ID parameters block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal289 = match( GET, TOKENS_FOLLOWING_GET_IN_property_definition_1776 )

          tree_for_string_literal289 = @adaptor.copy_node( string_literal289 )

          root_1 = @adaptor.become_root( tree_for_string_literal289, root_1 )



          match( DOWN, nil )
          _last = @input.look
          __ID290__ = match( ID, TOKENS_FOLLOWING_ID_IN_property_definition_1778 )

          tree_for_ID290 = @adaptor.copy_node( __ID290__ )

          @adaptor.add_child( root_1, tree_for_ID290 )

          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_parameters_IN_property_definition_1780 )
          parameters291 = parameters
          @state.following.pop

          @adaptor.add_child( root_1, parameters291.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_block_IN_property_definition_1782 )
          block292 = block
          @state.following.pop

          @adaptor.add_child( root_1, block292.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 2
          root_0 = @adaptor.create_flat_list


          # at line 248:5: ^( 'set' ID parameters block )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          string_literal293 = match( SET, TOKENS_FOLLOWING_SET_IN_property_definition_1792 )

          tree_for_string_literal293 = @adaptor.copy_node( string_literal293 )

          root_1 = @adaptor.become_root( tree_for_string_literal293, root_1 )



          match( DOWN, nil )
          _last = @input.look
          __ID294__ = match( ID, TOKENS_FOLLOWING_ID_IN_property_definition_1794 )

          tree_for_ID294 = @adaptor.copy_node( __ID294__ )

          @adaptor.add_child( root_1, tree_for_ID294 )

          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_parameters_IN_property_definition_1796 )
          parameters295 = parameters
          @state.following.pop

          @adaptor.add_child( root_1, parameters295.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_block_IN_property_definition_1798 )
          block296 = block
          @state.following.pop

          @adaptor.add_child( root_1, block296.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        when 3
          root_0 = @adaptor.create_flat_list


          # at line 249:5: ^( ':' property_name expression )
          _save_last_1 = _last = @input.look
          _first_1 = nil
          root_1 = @adaptor.create_flat_list
          _last = @input.look
          char_literal297 = match( COLON, TOKENS_FOLLOWING_COLON_IN_property_definition_1808 )

          tree_for_char_literal297 = @adaptor.copy_node( char_literal297 )

          root_1 = @adaptor.become_root( tree_for_char_literal297, root_1 )



          match( DOWN, nil )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_property_name_IN_property_definition_1810 )
          property_name298 = property_name
          @state.following.pop

          @adaptor.add_child( root_1, property_name298.tree )
          _last = @input.look
          @state.following.push( TOKENS_FOLLOWING_expression_IN_property_definition_1812 )
          expression299 = expression
          @state.following.pop

          @adaptor.add_child( root_1, expression299.tree )

          match( UP, nil )
          @adaptor.add_child( root_0, root_1 )
          _last = _save_last_1



        end
        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 34 )

      end
      
      return return_value
    end

    PropertyNameReturnValue = define_return_scope 

    # 
    # parser rule property_name
    # 
    # (in JejuneTree.g)
    # 252:1: property_name : ( ID | STRING | NUMBER );
    # 
    def property_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )
      return_value = PropertyNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil

      _last = _first_0 = nil
      set300 = nil

      tree_for_set300 = nil

      begin
        root_0 = @adaptor.create_flat_list


        # at line 
        _last = @input.look
        set300 = @input.look
        if @input.peek(1) == ID || @input.peek( 1 ).between?( NUMBER, STRING )
          @input.consume


          tree_for_set300 = @adaptor.copy_node( set300 )

          @adaptor.add_child( root_0, tree_for_set300 )

          @state.error_recovery = false
        else
          mse = MismatchedSet( nil )
          raise mse
        end





        return_value.tree = @adaptor.rule_post_processing( root_0 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 35 )

      end
      
      return return_value
    end



    TOKENS_FOLLOWING_statement_IN_program_43 = Set[ 1, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_statement_block_IN_block_59 = Set[ 1 ]
    TOKENS_FOLLOWING_statement_IN_block_65 = Set[ 1 ]
    TOKENS_FOLLOWING_BLOCK_IN_statement_block_80 = Set[ 2 ]
    TOKENS_FOLLOWING_statement_list_IN_statement_block_82 = Set[ 3 ]
    TOKENS_FOLLOWING_statement_IN_statement_list_100 = Set[ 1, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_clause_114 = Set[ 1 ]
    TOKENS_FOLLOWING_variable_statement_IN_statement_127 = Set[ 1 ]
    TOKENS_FOLLOWING_labelled_statement_IN_statement_133 = Set[ 1 ]
    TOKENS_FOLLOWING_if_statement_IN_statement_139 = Set[ 1 ]
    TOKENS_FOLLOWING_while_statement_IN_statement_145 = Set[ 1 ]
    TOKENS_FOLLOWING_do_while_statement_IN_statement_151 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_statement_157 = Set[ 1 ]
    TOKENS_FOLLOWING_continue_statement_IN_statement_163 = Set[ 1 ]
    TOKENS_FOLLOWING_break_statement_IN_statement_169 = Set[ 1 ]
    TOKENS_FOLLOWING_yield_statement_IN_statement_175 = Set[ 1 ]
    TOKENS_FOLLOWING_return_statement_IN_statement_181 = Set[ 1 ]
    TOKENS_FOLLOWING_with_statement_IN_statement_187 = Set[ 1 ]
    TOKENS_FOLLOWING_switch_statement_IN_statement_193 = Set[ 1 ]
    TOKENS_FOLLOWING_throw_statement_IN_statement_199 = Set[ 1 ]
    TOKENS_FOLLOWING_try_statement_IN_statement_205 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_statement_211 = Set[ 1 ]
    TOKENS_FOLLOWING_LABEL_IN_labelled_statement_226 = Set[ 2 ]
    TOKENS_FOLLOWING_ID_IN_labelled_statement_228 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_labelled_statement_230 = Set[ 3 ]
    TOKENS_FOLLOWING_catch_clause_IN_try_statement_245 = Set[ 1 ]
    TOKENS_FOLLOWING_FINALLY_IN_try_statement_253 = Set[ 2 ]
    TOKENS_FOLLOWING_catch_clause_IN_try_statement_257 = Set[ 28 ]
    TOKENS_FOLLOWING_statement_block_IN_try_statement_261 = Set[ 28 ]
    TOKENS_FOLLOWING_statement_block_IN_try_statement_265 = Set[ 3 ]
    TOKENS_FOLLOWING_CATCH_IN_catch_clause_282 = Set[ 2 ]
    TOKENS_FOLLOWING_statement_block_IN_catch_clause_284 = Set[ 123 ]
    TOKENS_FOLLOWING_ID_IN_catch_clause_286 = Set[ 28 ]
    TOKENS_FOLLOWING_statement_block_IN_catch_clause_288 = Set[ 3 ]
    TOKENS_FOLLOWING_WITH_IN_with_statement_305 = Set[ 2 ]
    TOKENS_FOLLOWING_clause_IN_with_statement_307 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_with_statement_309 = Set[ 3 ]
    TOKENS_FOLLOWING_VAR_IN_variable_statement_326 = Set[ 2 ]
    TOKENS_FOLLOWING_variable_declaration_IN_variable_statement_328 = Set[ 3, 25, 123 ]
    TOKENS_FOLLOWING_ASGN_IN_variable_declaration_347 = Set[ 2 ]
    TOKENS_FOLLOWING_declaration_target_IN_variable_declaration_349 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_variable_declaration_351 = Set[ 3 ]
    TOKENS_FOLLOWING_ID_IN_variable_declaration_359 = Set[ 1 ]
    TOKENS_FOLLOWING_ARRAY_IN_declaration_target_374 = Set[ 2 ]
    TOKENS_FOLLOWING_declaration_target_IN_declaration_target_376 = Set[ 3, 19, 102, 123 ]
    TOKENS_FOLLOWING_OBJECT_IN_declaration_target_387 = Set[ 2 ]
    TOKENS_FOLLOWING_declaration_key_IN_declaration_target_389 = Set[ 3, 46 ]
    TOKENS_FOLLOWING_ID_IN_declaration_target_398 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_declaration_key_415 = Set[ 2 ]
    TOKENS_FOLLOWING_property_name_IN_declaration_key_417 = Set[ 3, 19, 102, 123 ]
    TOKENS_FOLLOWING_declaration_target_IN_declaration_key_419 = Set[ 3 ]
    TOKENS_FOLLOWING_IF_IN_if_statement_436 = Set[ 2 ]
    TOKENS_FOLLOWING_clause_IN_if_statement_438 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_if_statement_440 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_if_statement_442 = Set[ 3 ]
    TOKENS_FOLLOWING_UNLESS_IN_if_statement_453 = Set[ 2 ]
    TOKENS_FOLLOWING_clause_IN_if_statement_455 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_if_statement_457 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_if_statement_459 = Set[ 3 ]
    TOKENS_FOLLOWING_SWITCH_IN_switch_statement_477 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_switch_statement_479 = Set[ 3, 40, 66 ]
    TOKENS_FOLLOWING_case_clause_IN_switch_statement_481 = Set[ 3, 40, 66 ]
    TOKENS_FOLLOWING_default_clause_IN_switch_statement_484 = Set[ 3 ]
    TOKENS_FOLLOWING_CASE_IN_case_clause_504 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_case_clause_506 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_statement_list_IN_case_clause_509 = Set[ 3 ]
    TOKENS_FOLLOWING_DEFAULT_IN_default_clause_529 = Set[ 2 ]
    TOKENS_FOLLOWING_statement_list_IN_default_clause_531 = Set[ 3 ]
    TOKENS_FOLLOWING_DO_IN_do_while_statement_549 = Set[ 2 ]
    TOKENS_FOLLOWING_while_statement_IN_do_while_statement_551 = Set[ 3 ]
    TOKENS_FOLLOWING_WHILE_IN_while_statement_568 = Set[ 2 ]
    TOKENS_FOLLOWING_clause_IN_while_statement_570 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_while_statement_572 = Set[ 3 ]
    TOKENS_FOLLOWING_UNTIL_IN_while_statement_582 = Set[ 2 ]
    TOKENS_FOLLOWING_clause_IN_while_statement_584 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_while_statement_586 = Set[ 3 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_603 = Set[ 2 ]
    TOKENS_FOLLOWING_variable_statement_IN_for_loop_608 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_for_loop_612 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_for_loop_616 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_for_loop_618 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_for_loop_620 = Set[ 3 ]
    TOKENS_FOLLOWING_EACH_IN_for_loop_630 = Set[ 2 ]
    TOKENS_FOLLOWING_variable_statement_IN_for_loop_634 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_638 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_for_loop_642 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_for_loop_644 = Set[ 3 ]
    TOKENS_FOLLOWING_FOR_IN_IN_for_loop_654 = Set[ 2 ]
    TOKENS_FOLLOWING_variable_statement_IN_for_loop_658 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_662 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_for_loop_666 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_for_loop_668 = Set[ 3 ]
    TOKENS_FOLLOWING_CONTINUE_IN_continue_statement_685 = Set[ 2 ]
    TOKENS_FOLLOWING_ID_IN_continue_statement_687 = Set[ 3 ]
    TOKENS_FOLLOWING_BREAK_IN_break_statement_705 = Set[ 2 ]
    TOKENS_FOLLOWING_ID_IN_break_statement_707 = Set[ 3 ]
    TOKENS_FOLLOWING_RETURN_IN_return_statement_725 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_return_statement_727 = Set[ 3 ]
    TOKENS_FOLLOWING_YIELD_IN_yield_statement_745 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_yield_statement_747 = Set[ 3 ]
    TOKENS_FOLLOWING_THROW_IN_throw_statement_767 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_throw_statement_769 = Set[ 3 ]
    TOKENS_FOLLOWING_expression_IN_expression_list_788 = Set[ 1, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_expression_list_792 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 49, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_list_795 = Set[ 1, 49 ]
    TOKENS_FOLLOWING_QMARK_IN_expression_813 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_815 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_817 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_819 = Set[ 3 ]
    TOKENS_FOLLOWING_ASGN_IN_expression_829 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_831 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_833 = Set[ 3 ]
    TOKENS_FOLLOWING_STAR_ASGN_IN_expression_843 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_845 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_847 = Set[ 3 ]
    TOKENS_FOLLOWING_SLASH_ASGN_IN_expression_857 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_859 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_861 = Set[ 3 ]
    TOKENS_FOLLOWING_MOD_ASGN_IN_expression_871 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_873 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_875 = Set[ 3 ]
    TOKENS_FOLLOWING_PLUS_ASGN_IN_expression_885 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_887 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_889 = Set[ 3 ]
    TOKENS_FOLLOWING_MINUS_ASGN_IN_expression_899 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_901 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_903 = Set[ 3 ]
    TOKENS_FOLLOWING_LSHIFT_ASGN_IN_expression_913 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_915 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_917 = Set[ 3 ]
    TOKENS_FOLLOWING_RSHIFT_ASGN_IN_expression_927 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_929 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_931 = Set[ 3 ]
    TOKENS_FOLLOWING_RSHIFT3_ASGN_IN_expression_941 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_943 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_945 = Set[ 3 ]
    TOKENS_FOLLOWING_AMP_ASGN_IN_expression_955 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_957 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_959 = Set[ 3 ]
    TOKENS_FOLLOWING_HAT_ASGN_IN_expression_969 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_971 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_973 = Set[ 3 ]
    TOKENS_FOLLOWING_OR_ASGN_IN_expression_983 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_985 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_987 = Set[ 3 ]
    TOKENS_FOLLOWING_PIPE_ASGN_IN_expression_997 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_999 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1001 = Set[ 3 ]
    TOKENS_FOLLOWING_PIPE_IN_expression_1011 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1013 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1015 = Set[ 3 ]
    TOKENS_FOLLOWING_OR_IN_expression_1025 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1027 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1029 = Set[ 3 ]
    TOKENS_FOLLOWING_AMP_IN_expression_1039 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1041 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1043 = Set[ 3 ]
    TOKENS_FOLLOWING_HAT_IN_expression_1053 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1055 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1057 = Set[ 3 ]
    TOKENS_FOLLOWING_RSHIFT_IN_expression_1067 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1069 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1071 = Set[ 3 ]
    TOKENS_FOLLOWING_LSHIFT_IN_expression_1081 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1083 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1085 = Set[ 3 ]
    TOKENS_FOLLOWING_RSHIFT3_IN_expression_1095 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1097 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1099 = Set[ 3 ]
    TOKENS_FOLLOWING_MINUS_IN_expression_1109 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1111 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1113 = Set[ 3 ]
    TOKENS_FOLLOWING_PLUS_IN_expression_1123 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1125 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1127 = Set[ 3 ]
    TOKENS_FOLLOWING_MOD_IN_expression_1137 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1139 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1141 = Set[ 3 ]
    TOKENS_FOLLOWING_SLASH_IN_expression_1151 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1153 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1155 = Set[ 3 ]
    TOKENS_FOLLOWING_STAR_IN_expression_1165 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1167 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1169 = Set[ 3 ]
    TOKENS_FOLLOWING_EQ_IN_expression_1179 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1181 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1183 = Set[ 3 ]
    TOKENS_FOLLOWING_EQQ_IN_expression_1193 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1195 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1197 = Set[ 3 ]
    TOKENS_FOLLOWING_NEQ_IN_expression_1207 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1209 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1211 = Set[ 3 ]
    TOKENS_FOLLOWING_NEQQ_IN_expression_1221 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1223 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1225 = Set[ 3 ]
    TOKENS_FOLLOWING_GEQ_IN_expression_1235 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1237 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1239 = Set[ 3 ]
    TOKENS_FOLLOWING_LEQ_IN_expression_1249 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1251 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1253 = Set[ 3 ]
    TOKENS_FOLLOWING_GREATER_IN_expression_1263 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1265 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1267 = Set[ 3 ]
    TOKENS_FOLLOWING_LESS_IN_expression_1277 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1279 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1281 = Set[ 3 ]
    TOKENS_FOLLOWING_INSTANCEOF_IN_expression_1291 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1293 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1295 = Set[ 3 ]
    TOKENS_FOLLOWING_IN_IN_expression_1305 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1307 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1309 = Set[ 3 ]
    TOKENS_FOLLOWING_DELETE_IN_expression_1319 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1321 = Set[ 3 ]
    TOKENS_FOLLOWING_VOID_IN_expression_1331 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1333 = Set[ 3 ]
    TOKENS_FOLLOWING_TYPEOF_IN_expression_1343 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1345 = Set[ 3 ]
    TOKENS_FOLLOWING_INCR_IN_expression_1355 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1357 = Set[ 3 ]
    TOKENS_FOLLOWING_DECR_IN_expression_1367 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1369 = Set[ 3 ]
    TOKENS_FOLLOWING_UPLUS_IN_expression_1379 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1381 = Set[ 3 ]
    TOKENS_FOLLOWING_UMINUS_IN_expression_1391 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1393 = Set[ 3 ]
    TOKENS_FOLLOWING_TILDE_IN_expression_1403 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1405 = Set[ 3 ]
    TOKENS_FOLLOWING_NOT_IN_expression_1415 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1417 = Set[ 3 ]
    TOKENS_FOLLOWING_POST_INCR_IN_expression_1427 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1429 = Set[ 3 ]
    TOKENS_FOLLOWING_POST_DECR_IN_expression_1439 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1441 = Set[ 3 ]
    TOKENS_FOLLOWING_AREF_IN_expression_1451 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1453 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_expression_1455 = Set[ 3 ]
    TOKENS_FOLLOWING_DOT_IN_expression_1465 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1467 = Set[ 123, 125, 126 ]
    TOKENS_FOLLOWING_property_name_IN_expression_1469 = Set[ 3 ]
    TOKENS_FOLLOWING_CALL_IN_expression_1479 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1481 = Set[ 16 ]
    TOKENS_FOLLOWING_arguments_IN_expression_1483 = Set[ 3 ]
    TOKENS_FOLLOWING_ITER_IN_expression_1493 = Set[ 2 ]
    TOKENS_FOLLOWING_parameters_IN_expression_1495 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_expression_1497 = Set[ 3 ]
    TOKENS_FOLLOWING_NEW_IN_expression_1507 = Set[ 2 ]
    TOKENS_FOLLOWING_expression_IN_expression_1509 = Set[ 3, 16 ]
    TOKENS_FOLLOWING_arguments_IN_expression_1511 = Set[ 3 ]
    TOKENS_FOLLOWING_literal_IN_expression_1520 = Set[ 1 ]
    TOKENS_FOLLOWING_ARGUMENTS_IN_arguments_1535 = Set[ 2 ]
    TOKENS_FOLLOWING_argument_IN_arguments_1537 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 46, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_COLON_IN_argument_1555 = Set[ 2 ]
    TOKENS_FOLLOWING_property_name_IN_argument_1557 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_argument_1559 = Set[ 3 ]
    TOKENS_FOLLOWING_expression_IN_argument_1567 = Set[ 1 ]
    TOKENS_FOLLOWING_PARAMS_IN_parameters_1582 = Set[ 2 ]
    TOKENS_FOLLOWING_parameter_IN_parameters_1584 = Set[ 3, 25, 60, 123 ]
    TOKENS_FOLLOWING_SPLAT_IN_parameter_1602 = Set[ 2 ]
    TOKENS_FOLLOWING_ID_IN_parameter_1604 = Set[ 3 ]
    TOKENS_FOLLOWING_ASGN_IN_parameter_1614 = Set[ 2 ]
    TOKENS_FOLLOWING_ID_IN_parameter_1616 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_parameter_1618 = Set[ 3 ]
    TOKENS_FOLLOWING_ID_IN_parameter_1626 = Set[ 1 ]
    TOKENS_FOLLOWING_THIS_IN_literal_1643 = Set[ 1 ]
    TOKENS_FOLLOWING_IVAR_IN_literal_1649 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_literal_1655 = Set[ 1 ]
    TOKENS_FOLLOWING_NULL_IN_literal_1661 = Set[ 1 ]
    TOKENS_FOLLOWING_TRUE_IN_literal_1667 = Set[ 1 ]
    TOKENS_FOLLOWING_FALSE_IN_literal_1673 = Set[ 1 ]
    TOKENS_FOLLOWING_UNDEFINED_IN_literal_1679 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_literal_1685 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_literal_1691 = Set[ 1 ]
    TOKENS_FOLLOWING_DOC_IN_literal_1697 = Set[ 1 ]
    TOKENS_FOLLOWING_REGEX_IN_literal_1703 = Set[ 1 ]
    TOKENS_FOLLOWING_ARRAY_IN_literal_1711 = Set[ 2 ]
    TOKENS_FOLLOWING_argument_IN_literal_1713 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 46, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_OBJECT_IN_literal_1724 = Set[ 2 ]
    TOKENS_FOLLOWING_property_definition_IN_literal_1726 = Set[ 3, 14, 46, 51 ]
    TOKENS_FOLLOWING_FUNCTION_IN_literal_1737 = Set[ 2 ]
    TOKENS_FOLLOWING_ID_IN_literal_1739 = Set[ 111 ]
    TOKENS_FOLLOWING_parameters_IN_literal_1742 = Set[ 28 ]
    TOKENS_FOLLOWING_statement_block_IN_literal_1744 = Set[ 3 ]
    TOKENS_FOLLOWING_ARROW_IN_literal_1754 = Set[ 2 ]
    TOKENS_FOLLOWING_parameters_IN_literal_1756 = Set[ 28 ]
    TOKENS_FOLLOWING_statement_block_IN_literal_1759 = Set[ 3 ]
    TOKENS_FOLLOWING_GET_IN_property_definition_1776 = Set[ 2 ]
    TOKENS_FOLLOWING_ID_IN_property_definition_1778 = Set[ 111 ]
    TOKENS_FOLLOWING_parameters_IN_property_definition_1780 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_property_definition_1782 = Set[ 3 ]
    TOKENS_FOLLOWING_SET_IN_property_definition_1792 = Set[ 2 ]
    TOKENS_FOLLOWING_ID_IN_property_definition_1794 = Set[ 111 ]
    TOKENS_FOLLOWING_parameters_IN_property_definition_1796 = Set[ 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_block_IN_property_definition_1798 = Set[ 3 ]
    TOKENS_FOLLOWING_COLON_IN_property_definition_1808 = Set[ 2 ]
    TOKENS_FOLLOWING_property_name_IN_property_definition_1810 = Set[ 3, 4, 5, 6, 7, 9, 11, 12, 13, 17, 18, 19, 20, 22, 23, 25, 26, 27, 29, 30, 32, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 50, 53, 54, 57, 58, 62, 63, 65, 67, 68, 69, 70, 71, 74, 76, 77, 78, 79, 80, 81, 82, 85, 86, 88, 89, 91, 92, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 123, 124, 125, 126, 127 ]
    TOKENS_FOLLOWING_expression_IN_property_definition_1812 = Set[ 3 ]
    TOKENS_FOLLOWING_set_IN_property_name_0 = Set[ 1 ]

  end # class TreeParser < ANTLR3::TreeParser

  at_exit { TreeParser.main( ARGV ) } if __FILE__ == $0
end


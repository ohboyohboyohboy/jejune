#!/usr/bin/env ruby
#
# Jejune.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jun 18, 2010 05:38:11
# Ruby runtime library version: 1.8.0
# Input grammar file: Jejune.g
# Generated at: 2013-09-04 12:02:42
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
    gem( 'antlr3', '~> 1.8.0' )
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
                   :HAT => 17, :RPAREN => 39, :GREATER => 14, :T__148 => 148, 
                   :POST_IF => 9, :T__149 => 149, :INCR => 32, :DO_WHILE => 88, 
                   :THIS => 78, :LESS => 56, :RETURN => 36, :RSHIFT_ASGN => 51, 
                   :GET => 11, :VAR => 111, :VOID => 114, :GEQ => 8, :EACH => 97, 
                   :EQ => 103, :COMMENT => 52, :PIPE_ASGN => 119, :ASGN => 25, 
                   :T__150 => 150, :ARRAY => 19, :RBRACK => 27, :RBRACE => 24, 
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
                   :AMP => 4, :DOC => 136, :LBRACE => 47, :FOR => 115, :AND => 10, 
                   :ID => 132, :DIRECTIVE => 76, :LPAREN => 65, :IF => 26, 
                   :SLASH => 60, :IN => 29, :CONTINUE => 58, :OBJECT => 104, 
                   :COMMA => 49, :TILDE => 84, :YIELD => 123, :PIPE => 116, 
                   :PLUS => 122, :POST_DECR => 6, :DOT => 82, :UNLESS => 102, 
                   :RSHIFT => 42, :NESTED_BRACKETS => 146, :WITH => 120, 
                   :PARAMS => 113, :NESTED_BRACES => 143, :UPLUS => 108, 
                   :ITER => 41, :DEFAULT => 67, :UMINUS => 96, :SET => 57, 
                   :INSTANCEOF => 35, :MINUS => 77, :GENERALIZED_DELIMITER => 138, 
                   :TRUE => 87, :SEMI => 54, :DREGEX => 91, :COLON => 46, 
                   :AMP_ASGN => 7, :NEQ => 89, :RSHIFT3_ASGN => 48, :NEWLINE => 140, 
                   :FINALLY => 112, :LABEL => 44, :IS_UNDEFINED => 126, 
                   :BLOCK => 28, :DECR => 64, :ARROW => 22, :PROGRAM => 18, 
                   :IS_DEFINED => 38, :RSHIFT3 => 45, :MACRO => 74, :CLASS_DEF => 129, 
                   :LET => 59, :EQQ => 106, :POST_UNLESS => 15, :STRING => 133, 
                   :LEQ => 53 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Jejune
    include TokenData

    
    begin
      generated_using( "Jejune.g", "3.2.1-SNAPSHOT Jun 18, 2010 05:38:11", "1.8.0" )
    rescue NoMethodError => error
      # ignore
    end
    
    RULE_NAMES   = [ "AMP", "AMP_ASGN", "GEQ", "AND", "GET", "GREATER", 
                     "HAT", "HAT_ASGN", "QMARK", "ARROW", "RBRACE", "ASGN", 
                     "IF", "RBRACK", "IN", "BL_END", "INCR", "BREAK", "INSTANCEOF", 
                     "RETURN", "IS_DEFINED", "RPAREN", "CASE", "RSHIFT", 
                     "CATCH", "RSHIFT3", "COLON", "LBRACE", "RSHIFT3_ASGN", 
                     "COMMA", "LBRACK", "RSHIFT_ASGN", "LEQ", "SEMI", "CONST", 
                     "LESS", "SET", "CONTINUE", "LET", "DECR", "LPAREN", 
                     "DEFAULT", "LSHIFT", "STAR", "DELETE", "LSHIFT_ASGN", 
                     "STAR_ASGN", "MACRO", "SWITCH", "MINUS", "THIS", "DO", 
                     "MINUS_ASGN", "THROW", "DOT", "TILDE", "TRUE", "NEQ", 
                     "TRY", "NEQQ", "TYPEOF", "NEW", "EACH", "NOT", "UNDEFINED", 
                     "ELSE", "NULL", "UNLESS", "EQ", "UNTIL", "EQQ", "OR", 
                     "FALSE", "OR_ASGN", "VAR", "FINALLY", "VOID", "FOR", 
                     "PIPE", "WHILE", "PIPE_ASGN", "WITH", "FUNCTION", "PLUS", 
                     "YIELD", "PLUS_ASGN", "IS_UNDEFINED", "POUND", "DEF", 
                     "CLASS_DEF", "OBJECT_DEF", "T__148", "T__149", "T__150", 
                     "MOD", "SLASH", "DOC", "STRING", "NUMBER", "NEWLINE", 
                     "IVAR", "ID", "WS", "EJS", "IGNORABLE", "IGNORABLE_NL", 
                     "DIRECTIVE_LINE", "HIDE", "REQUIRE", "GENERALIZED_DELIMITER", 
                     "NESTED_PARENTHESES", "NESTED_BRACKETS", "NESTED_BRACES", 
                     "NESTED_ANGLES", "INTERPOLATION" ].freeze
    RULE_METHODS = [ :amp!, :amp_asgn!, :geq!, :and!, :get!, :greater!, 
                     :hat!, :hat_asgn!, :qmark!, :arrow!, :rbrace!, :asgn!, 
                     :if!, :rbrack!, :in!, :bl_end!, :incr!, :break!, :instanceof!, 
                     :return!, :is_defined!, :rparen!, :case!, :rshift!, 
                     :catch!, :rshift_3!, :colon!, :lbrace!, :rshift_3_asgn!, 
                     :comma!, :lbrack!, :rshift_asgn!, :leq!, :semi!, :const!, 
                     :less!, :set!, :continue!, :let!, :decr!, :lparen!, 
                     :default!, :lshift!, :star!, :delete!, :lshift_asgn!, 
                     :star_asgn!, :macro!, :switch!, :minus!, :this!, :do!, 
                     :minus_asgn!, :throw!, :dot!, :tilde!, :true!, :neq!, 
                     :try!, :neqq!, :typeof!, :new!, :each!, :not!, :undefined!, 
                     :else!, :null!, :unless!, :eq!, :until!, :eqq!, :or!, 
                     :false!, :or_asgn!, :var!, :finally!, :void!, :for!, 
                     :pipe!, :while!, :pipe_asgn!, :with!, :function!, :plus!, 
                     :yield!, :plus_asgn!, :is_undefined!, :pound!, :def!, 
                     :class_def!, :object_def!, :t__148!, :t__149!, :t__150!, 
                     :mod!, :slash!, :doc!, :string!, :number!, :newline!, 
                     :ivar!, :id!, :ws!, :ejs!, :ignorable!, :ignorable_nl!, 
                     :directive_line!, :hide!, :require!, :generalized_delimiter!, 
                     :nested_parentheses!, :nested_brackets!, :nested_braces!, 
                     :nested_angles!, :interpolation! ].freeze

    
    def initialize( input=nil, options = {} )
      super( input, options )
      # - - - - - - begin action @lexer::init - - - - - -
      # Jejune.g


        @value_expected = true

      # - - - - - - end action @lexer::init - - - - - - -

    end
    
    # - - - - - - begin action @lexer::members - - - - - -
    # Jejune.g


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

    # - - - - - - end action @lexer::members - - - - - - -

    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule amp! (AMP)
    # (in Jejune.g)
    def amp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      type = AMP
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 122:7: '&'
      match( 0x26 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )

    end

    # lexer rule amp_asgn! (AMP_ASGN)
    # (in Jejune.g)
    def amp_asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      type = AMP_ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 123:12: '&='
      match( "&=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )

    end

    # lexer rule geq! (GEQ)
    # (in Jejune.g)
    def geq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      type = GEQ
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 124:7: '>='
      match( ">=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )

    end

    # lexer rule and! (AND)
    # (in Jejune.g)
    def and!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      type = AND
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 125:7: '&&'
      match( "&&" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )

    end

    # lexer rule get! (GET)
    # (in Jejune.g)
    def get!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      type = GET
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 126:7: 'get'
      match( "get" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )

    end

    # lexer rule greater! (GREATER)
    # (in Jejune.g)
    def greater!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      type = GREATER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 127:11: '>'
      match( 0x3e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )

    end

    # lexer rule hat! (HAT)
    # (in Jejune.g)
    def hat!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      type = HAT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 128:7: '^'
      match( 0x5e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )

    end

    # lexer rule hat_asgn! (HAT_ASGN)
    # (in Jejune.g)
    def hat_asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      type = HAT_ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 129:12: '^='
      match( "^=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )

    end

    # lexer rule qmark! (QMARK)
    # (in Jejune.g)
    def qmark!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      type = QMARK
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 130:9: '?'
      match( 0x3f )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )

    end

    # lexer rule arrow! (ARROW)
    # (in Jejune.g)
    def arrow!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      type = ARROW
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 131:9: '->'
      match( "->" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )

    end

    # lexer rule rbrace! (RBRACE)
    # (in Jejune.g)
    def rbrace!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      type = RBRACE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 132:10: '}'
      match( 0x7d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )

    end

    # lexer rule asgn! (ASGN)
    # (in Jejune.g)
    def asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      type = ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 133:8: '='
      match( 0x3d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )

    end

    # lexer rule if! (IF)
    # (in Jejune.g)
    def if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      type = IF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 134:6: 'if'
      match( "if" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )

    end

    # lexer rule rbrack! (RBRACK)
    # (in Jejune.g)
    def rbrack!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      type = RBRACK
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 135:10: ']'
      match( 0x5d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )

    end

    # lexer rule in! (IN)
    # (in Jejune.g)
    def in!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      type = IN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 136:6: 'in'
      match( "in" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )

    end

    # lexer rule bl_end! (BL_END)
    # (in Jejune.g)
    def bl_end!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      type = BL_END
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 137:10: 'end'
      match( "end" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )

    end

    # lexer rule incr! (INCR)
    # (in Jejune.g)
    def incr!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = INCR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 138:8: '++'
      match( "++" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )

    end

    # lexer rule break! (BREAK)
    # (in Jejune.g)
    def break!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = BREAK
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 139:9: 'break'
      match( "break" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end

    # lexer rule instanceof! (INSTANCEOF)
    # (in Jejune.g)
    def instanceof!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = INSTANCEOF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 140:14: 'instanceof'
      match( "instanceof" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )

    end

    # lexer rule return! (RETURN)
    # (in Jejune.g)
    def return!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = RETURN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 141:10: 'return'
      match( "return" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )

    end

    # lexer rule is_defined! (IS_DEFINED)
    # (in Jejune.g)
    def is_defined!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = IS_DEFINED
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 142:14: 'defined?'
      match( "defined?" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )

    end

    # lexer rule rparen! (RPAREN)
    # (in Jejune.g)
    def rparen!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      type = RPAREN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 143:10: ')'
      match( 0x29 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )

    end

    # lexer rule case! (CASE)
    # (in Jejune.g)
    def case!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )

      type = CASE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 144:8: 'case'
      match( "case" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )

    end

    # lexer rule rshift! (RSHIFT)
    # (in Jejune.g)
    def rshift!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )

      type = RSHIFT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 145:10: '>>'
      match( ">>" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )

    end

    # lexer rule catch! (CATCH)
    # (in Jejune.g)
    def catch!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      type = CATCH
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 146:9: 'catch'
      match( "catch" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )

    end

    # lexer rule rshift_3! (RSHIFT3)
    # (in Jejune.g)
    def rshift_3!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      type = RSHIFT3
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 147:11: '>>>'
      match( ">>>" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )

    end

    # lexer rule colon! (COLON)
    # (in Jejune.g)
    def colon!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      type = COLON
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 148:9: ':'
      match( 0x3a )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )

    end

    # lexer rule lbrace! (LBRACE)
    # (in Jejune.g)
    def lbrace!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      type = LBRACE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 149:10: '{'
      match( 0x7b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )

    end

    # lexer rule rshift_3_asgn! (RSHIFT3_ASGN)
    # (in Jejune.g)
    def rshift_3_asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )

      type = RSHIFT3_ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 150:16: '>>>='
      match( ">>>=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )

    end

    # lexer rule comma! (COMMA)
    # (in Jejune.g)
    def comma!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )

      type = COMMA
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 151:9: ','
      match( 0x2c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )

    end

    # lexer rule lbrack! (LBRACK)
    # (in Jejune.g)
    def lbrack!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )

      type = LBRACK
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 152:10: '['
      match( 0x5b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )

    end

    # lexer rule rshift_asgn! (RSHIFT_ASGN)
    # (in Jejune.g)
    def rshift_asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )

      type = RSHIFT_ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 153:15: '>>='
      match( ">>=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )

    end

    # lexer rule leq! (LEQ)
    # (in Jejune.g)
    def leq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )

      type = LEQ
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 154:7: '<='
      match( "<=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )

    end

    # lexer rule semi! (SEMI)
    # (in Jejune.g)
    def semi!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )

      type = SEMI
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 155:8: ';'
      match( 0x3b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )

    end

    # lexer rule const! (CONST)
    # (in Jejune.g)
    def const!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )

      type = CONST
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 156:9: 'const'
      match( "const" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )

    end

    # lexer rule less! (LESS)
    # (in Jejune.g)
    def less!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )

      type = LESS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 157:8: '<'
      match( 0x3c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )

    end

    # lexer rule set! (SET)
    # (in Jejune.g)
    def set!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )

      type = SET
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 158:7: 'set'
      match( "set" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )

    end

    # lexer rule continue! (CONTINUE)
    # (in Jejune.g)
    def continue!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )

      type = CONTINUE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 159:12: 'continue'
      match( "continue" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )

    end

    # lexer rule let! (LET)
    # (in Jejune.g)
    def let!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )

      type = LET
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 160:7: 'let'
      match( "let" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )

    end

    # lexer rule decr! (DECR)
    # (in Jejune.g)
    def decr!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )

      type = DECR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 161:8: '--'
      match( "--" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )

    end

    # lexer rule lparen! (LPAREN)
    # (in Jejune.g)
    def lparen!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )

      type = LPAREN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 162:10: '('
      match( 0x28 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )

    end

    # lexer rule default! (DEFAULT)
    # (in Jejune.g)
    def default!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )

      type = DEFAULT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 163:11: 'default'
      match( "default" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )

    end

    # lexer rule lshift! (LSHIFT)
    # (in Jejune.g)
    def lshift!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )

      type = LSHIFT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 164:10: '<<'
      match( "<<" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )

    end

    # lexer rule star! (STAR)
    # (in Jejune.g)
    def star!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )

      type = STAR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 165:8: '*'
      match( 0x2a )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )

    end

    # lexer rule delete! (DELETE)
    # (in Jejune.g)
    def delete!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )

      type = DELETE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 166:10: 'delete'
      match( "delete" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )

    end

    # lexer rule lshift_asgn! (LSHIFT_ASGN)
    # (in Jejune.g)
    def lshift_asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )

      type = LSHIFT_ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 167:15: '<<='
      match( "<<=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 46 )

    end

    # lexer rule star_asgn! (STAR_ASGN)
    # (in Jejune.g)
    def star_asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )

      type = STAR_ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 168:13: '*='
      match( "*=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 47 )

    end

    # lexer rule macro! (MACRO)
    # (in Jejune.g)
    def macro!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )

      type = MACRO
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 169:9: 'macro'
      match( "macro" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 48 )

    end

    # lexer rule switch! (SWITCH)
    # (in Jejune.g)
    def switch!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )

      type = SWITCH
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 170:10: 'switch'
      match( "switch" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 49 )

    end

    # lexer rule minus! (MINUS)
    # (in Jejune.g)
    def minus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )

      type = MINUS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 171:9: '-'
      match( 0x2d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 50 )

    end

    # lexer rule this! (THIS)
    # (in Jejune.g)
    def this!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )

      type = THIS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 172:8: 'this'
      match( "this" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 51 )

    end

    # lexer rule do! (DO)
    # (in Jejune.g)
    def do!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 52 )

      type = DO
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 173:6: 'do'
      match( "do" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 52 )

    end

    # lexer rule minus_asgn! (MINUS_ASGN)
    # (in Jejune.g)
    def minus_asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 53 )

      type = MINUS_ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 174:14: '-='
      match( "-=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 53 )

    end

    # lexer rule throw! (THROW)
    # (in Jejune.g)
    def throw!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 54 )

      type = THROW
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 175:9: 'throw'
      match( "throw" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 54 )

    end

    # lexer rule dot! (DOT)
    # (in Jejune.g)
    def dot!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 55 )

      type = DOT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 176:7: '.'
      match( 0x2e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 55 )

    end

    # lexer rule tilde! (TILDE)
    # (in Jejune.g)
    def tilde!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 56 )

      type = TILDE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 177:9: '~'
      match( 0x7e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 56 )

    end

    # lexer rule true! (TRUE)
    # (in Jejune.g)
    def true!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 57 )

      type = TRUE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 178:8: 'true'
      match( "true" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 57 )

    end

    # lexer rule neq! (NEQ)
    # (in Jejune.g)
    def neq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 58 )

      type = NEQ
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 179:7: '!='
      match( "!=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 58 )

    end

    # lexer rule try! (TRY)
    # (in Jejune.g)
    def try!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 59 )

      type = TRY
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 180:7: 'try'
      match( "try" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 59 )

    end

    # lexer rule neqq! (NEQQ)
    # (in Jejune.g)
    def neqq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 60 )

      type = NEQQ
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 181:8: '!=='
      match( "!==" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 60 )

    end

    # lexer rule typeof! (TYPEOF)
    # (in Jejune.g)
    def typeof!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 61 )

      type = TYPEOF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 182:10: 'typeof'
      match( "typeof" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 61 )

    end

    # lexer rule new! (NEW)
    # (in Jejune.g)
    def new!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 62 )

      type = NEW
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 183:7: 'new'
      match( "new" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 62 )

    end

    # lexer rule each! (EACH)
    # (in Jejune.g)
    def each!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 63 )

      type = EACH
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 184:8: 'each'
      match( "each" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 63 )

    end

    # lexer rule not! (NOT)
    # (in Jejune.g)
    def not!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 64 )

      type = NOT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 185:7: '!'
      match( 0x21 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 64 )

    end

    # lexer rule undefined! (UNDEFINED)
    # (in Jejune.g)
    def undefined!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 65 )

      type = UNDEFINED
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 186:13: 'undefined'
      match( "undefined" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 65 )

    end

    # lexer rule else! (ELSE)
    # (in Jejune.g)
    def else!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 66 )

      type = ELSE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 187:8: 'else'
      match( "else" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 66 )

    end

    # lexer rule null! (NULL)
    # (in Jejune.g)
    def null!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 67 )

      type = NULL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 188:8: 'null'
      match( "null" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 67 )

    end

    # lexer rule unless! (UNLESS)
    # (in Jejune.g)
    def unless!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 68 )

      type = UNLESS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 189:10: 'unless'
      match( "unless" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 68 )

    end

    # lexer rule eq! (EQ)
    # (in Jejune.g)
    def eq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 69 )

      type = EQ
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 190:6: '=='
      match( "==" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 69 )

    end

    # lexer rule until! (UNTIL)
    # (in Jejune.g)
    def until!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 70 )

      type = UNTIL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 191:9: 'until'
      match( "until" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 70 )

    end

    # lexer rule eqq! (EQQ)
    # (in Jejune.g)
    def eqq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 71 )

      type = EQQ
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 192:7: '==='
      match( "===" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 71 )

    end

    # lexer rule or! (OR)
    # (in Jejune.g)
    def or!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 72 )

      type = OR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 193:6: '||'
      match( "||" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 72 )

    end

    # lexer rule false! (FALSE)
    # (in Jejune.g)
    def false!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 73 )

      type = FALSE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 194:9: 'false'
      match( "false" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 73 )

    end

    # lexer rule or_asgn! (OR_ASGN)
    # (in Jejune.g)
    def or_asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 74 )

      type = OR_ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 195:11: '||='
      match( "||=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 74 )

    end

    # lexer rule var! (VAR)
    # (in Jejune.g)
    def var!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 75 )

      type = VAR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 196:7: 'var'
      match( "var" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 75 )

    end

    # lexer rule finally! (FINALLY)
    # (in Jejune.g)
    def finally!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 76 )

      type = FINALLY
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 197:11: 'finally'
      match( "finally" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 76 )

    end

    # lexer rule void! (VOID)
    # (in Jejune.g)
    def void!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 77 )

      type = VOID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 198:8: 'void'
      match( "void" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 77 )

    end

    # lexer rule for! (FOR)
    # (in Jejune.g)
    def for!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 78 )

      type = FOR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 199:7: 'for'
      match( "for" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 78 )

    end

    # lexer rule pipe! (PIPE)
    # (in Jejune.g)
    def pipe!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 79 )

      type = PIPE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 200:8: '|'
      match( 0x7c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 79 )

    end

    # lexer rule while! (WHILE)
    # (in Jejune.g)
    def while!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 80 )

      type = WHILE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 201:9: 'while'
      match( "while" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 80 )

    end

    # lexer rule pipe_asgn! (PIPE_ASGN)
    # (in Jejune.g)
    def pipe_asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 81 )

      type = PIPE_ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 202:13: '|='
      match( "|=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 81 )

    end

    # lexer rule with! (WITH)
    # (in Jejune.g)
    def with!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 82 )

      type = WITH
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 203:8: 'with'
      match( "with" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 82 )

    end

    # lexer rule function! (FUNCTION)
    # (in Jejune.g)
    def function!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 83 )

      type = FUNCTION
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 204:12: 'function'
      match( "function" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 83 )

    end

    # lexer rule plus! (PLUS)
    # (in Jejune.g)
    def plus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 84 )

      type = PLUS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 205:8: '+'
      match( 0x2b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 84 )

    end

    # lexer rule yield! (YIELD)
    # (in Jejune.g)
    def yield!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 85 )

      type = YIELD
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 206:9: 'yield'
      match( "yield" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 85 )

    end

    # lexer rule plus_asgn! (PLUS_ASGN)
    # (in Jejune.g)
    def plus_asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 86 )

      type = PLUS_ASGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 207:13: '+='
      match( "+=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 86 )

    end

    # lexer rule is_undefined! (IS_UNDEFINED)
    # (in Jejune.g)
    def is_undefined!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 87 )

      type = IS_UNDEFINED
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 208:16: 'undefined?'
      match( "undefined?" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 87 )

    end

    # lexer rule pound! (POUND)
    # (in Jejune.g)
    def pound!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 88 )

      type = POUND
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 209:9: '#'
      match( 0x23 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 88 )

    end

    # lexer rule def! (DEF)
    # (in Jejune.g)
    def def!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 89 )

      type = DEF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 210:7: 'def'
      match( "def" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 89 )

    end

    # lexer rule class_def! (CLASS_DEF)
    # (in Jejune.g)
    def class_def!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 90 )

      type = CLASS_DEF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 211:13: 'class'
      match( "class" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 90 )

    end

    # lexer rule object_def! (OBJECT_DEF)
    # (in Jejune.g)
    def object_def!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 91 )

      type = OBJECT_DEF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 212:14: 'object'
      match( "object" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 91 )

    end

    # lexer rule t__148! (T__148)
    # (in Jejune.g)
    def t__148!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 92 )

      type = T__148
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 213:10: 'opera'
      match( "opera" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 92 )

    end

    # lexer rule t__149! (T__149)
    # (in Jejune.g)
    def t__149!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 93 )

      type = T__149
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 214:10: 'firefox'
      match( "firefox" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 93 )

    end

    # lexer rule t__150! (T__150)
    # (in Jejune.g)
    def t__150!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 94 )

      type = T__150
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 215:10: 'chrome'
      match( "chrome" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 94 )

    end

    # lexer rule mod! (MOD)
    # (in Jejune.g)
    def mod!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 95 )

      type = MOD
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 859:3: ( '%%' DIRECTIVE_LINE | {...}? => '%' ( ID ( ' ' | '\\t' )* )? GENERALIZED_DELIMITER ( 'a' .. 'z' )* | '%' ( '=' | ) )
      alt_5 = 3
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == 0x25 )
        look_5_1 = @input.peek( 2 )

        if ( look_5_1 == 0x25 )
          alt_5 = 1
        elsif ( look_5_1.between?( 0x21, 0x22 ) || look_5_1 == 0x24 || look_5_1.between?( 0x26, 0x28 ) || look_5_1.between?( 0x2a, 0x2f ) || look_5_1.between?( 0x3a, 0x3c ) || look_5_1.between?( 0x3f, 0x5b ) || look_5_1.between?( 0x5e, 0x7c ) || look_5_1 == 0x7e ) and ( (  @value_expected   ) )
          alt_5 = 2
        elsif ( look_5_1 == 0x3d )
          look_5_4 = @input.peek( 3 )

          if ( (  @value_expected   ) )
            alt_5 = 2
          elsif ( true )
            alt_5 = 3
          else
            raise NoViableAlternative( "", 5, 4 )
          end
        else
          alt_5 = 3
        end
      else
        raise NoViableAlternative( "", 5, 0 )
      end
      case alt_5
      when 1
        # at line 859:5: '%%' DIRECTIVE_LINE
        match( "%%" )
        directive_line!
        # --> action
         type = DIRECTIVE 
        # <-- action

      when 2
        # at line 860:5: {...}? => '%' ( ID ( ' ' | '\\t' )* )? GENERALIZED_DELIMITER ( 'a' .. 'z' )*
        raise FailedPredicate( "MOD", " @value_expected  " ) unless ( (  @value_expected   ) )
        match( 0x25 )
        # at line 861:11: ( ID ( ' ' | '\\t' )* )?
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == 0x24 || look_2_0.between?( 0x41, 0x5a ) || look_2_0 == 0x5f || look_2_0.between?( 0x61, 0x7a ) )
          alt_2 = 1
        end
        case alt_2
        when 1
          # at line 861:13: ID ( ' ' | '\\t' )*
          id!
          # at line 861:16: ( ' ' | '\\t' )*
          while true # decision 1
            alt_1 = 2
            look_1_0 = @input.peek( 1 )

            if ( look_1_0 == 0x9 || look_1_0 == 0x20 )
              alt_1 = 1

            end
            case alt_1
            when 1
              # at line 
              if @input.peek(1) == 0x9 || @input.peek(1) == 0x20
                @input.consume
              else
                mse = MismatchedSet( nil )
                recover mse
                raise mse
              end



            else
              break # out of loop for decision 1
            end
          end # loop for decision 1

        end
        # --> action
         type = GENERAL 
        # <-- action
        generalized_delimiter!
        # at line 862:7: ( 'a' .. 'z' )*
        while true # decision 3
          alt_3 = 2
          look_3_0 = @input.peek( 1 )

          if ( look_3_0.between?( 0x61, 0x7a ) )
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 862:9: 'a' .. 'z'
            match_range( 0x61, 0x7a )

          else
            break # out of loop for decision 3
          end
        end # loop for decision 3

      when 3
        # at line 863:5: '%' ( '=' | )
        match( 0x25 )
        # at line 863:9: ( '=' | )
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0 == 0x3d )
          alt_4 = 1
        else
          alt_4 = 2
        end
        case alt_4
        when 1
          # at line 863:11: '='
          match( 0x3d )
          # --> action
           type = MOD_ASGN 
          # <-- action

        when 2
          # at line 863:38: 
          # --> action
           type = MOD 
          # <-- action

        end

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 95 )

    end

    # lexer rule slash! (SLASH)
    # (in Jejune.g)
    def slash!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 96 )

      type = SLASH
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 867:3: ( '//' (~ ( '\\n' | '\\r' ) )* | '/*' ( . )* '*/' | {...}? => '/' (~ ( '/' | '*' | '\\\\' | '\\r' | '\\n' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' ) (~ ( '/' | '\\\\' | '\\r' | '\\n' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )* '/' ( 'a' .. 'z' )* | {...}? => '/' ( '=' | ) )
      alt_12 = 4
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == 0x2f )
        look_12_1 = @input.peek( 2 )

        if ( look_12_1 == 0x2f )
          alt_12 = 1
        elsif ( look_12_1 == 0x2a )
          alt_12 = 2
        elsif ( look_12_1 == 0x3d ) and ( ( (  @value_expected   ) ) or ( (  !@value_expected  ) ) )
          look_12_4 = @input.peek( 3 )

          if ( look_12_4.between?( 0x0, 0x9 ) || look_12_4.between?( 0xb, 0xc ) || look_12_4.between?( 0xe, 0xffff ) ) and ( (  @value_expected   ) )
            alt_12 = 3
          else
            alt_12 = 4
          end
        elsif ( look_12_1.between?( 0x0, 0x9 ) || look_12_1.between?( 0xb, 0xc ) || look_12_1.between?( 0xe, 0x29 ) || look_12_1.between?( 0x2b, 0x2e ) || look_12_1.between?( 0x30, 0x3c ) || look_12_1.between?( 0x3e, 0xffff ) ) and ( (  @value_expected   ) )
          alt_12 = 3
        else
          alt_12 = 4
        end
      else
        raise NoViableAlternative( "", 12, 0 )
      end
      case alt_12
      when 1
        # at line 867:5: '//' (~ ( '\\n' | '\\r' ) )*
        match( "//" )
        # at line 867:10: (~ ( '\\n' | '\\r' ) )*
        while true # decision 6
          alt_6 = 2
          look_6_0 = @input.peek( 1 )

          if ( look_6_0.between?( 0x0, 0x9 ) || look_6_0.between?( 0xb, 0xc ) || look_6_0.between?( 0xe, 0xffff ) )
            alt_6 = 1

          end
          case alt_6
          when 1
            # at line 867:10: ~ ( '\\n' | '\\r' )
            if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            break # out of loop for decision 6
          end
        end # loop for decision 6
        # --> action
         type = LINE_COMMENT; channel = HIDDEN 
        # <-- action

      when 2
        # at line 868:5: '/*' ( . )* '*/'
        match( "/*" )
        # at line 868:10: ( . )*
        while true # decision 7
          alt_7 = 2
          look_7_0 = @input.peek( 1 )

          if ( look_7_0 == 0x2a )
            look_7_1 = @input.peek( 2 )

            if ( look_7_1 == 0x2f )
              alt_7 = 2
            elsif ( look_7_1.between?( 0x0, 0x2e ) || look_7_1.between?( 0x30, 0xffff ) )
              alt_7 = 1

            end
          elsif ( look_7_0.between?( 0x0, 0x29 ) || look_7_0.between?( 0x2b, 0xffff ) )
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 868:10: .
            match_any

          else
            break # out of loop for decision 7
          end
        end # loop for decision 7
        match( "*/" )
        # --> action
         type = COMMENT; channel = HIDDEN 
        # <-- action

      when 3
        # at line 869:5: {...}? => '/' (~ ( '/' | '*' | '\\\\' | '\\r' | '\\n' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' ) (~ ( '/' | '\\\\' | '\\r' | '\\n' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )* '/' ( 'a' .. 'z' )*
        raise FailedPredicate( "SLASH", " @value_expected  " ) unless ( (  @value_expected   ) )
        match( 0x2f )
        # --> action
         type = REGEX 
        # <-- action
        # at line 871:5: (~ ( '/' | '*' | '\\\\' | '\\r' | '\\n' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )
        alt_8 = 4
        alt_8 = @dfa8.predict( @input )
        case alt_8
        when 1
          # at line 871:7: ~ ( '/' | '*' | '\\\\' | '\\r' | '\\n' | '#' )
          if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0x22 ) || @input.peek( 1 ).between?( 0x24, 0x29 ) || @input.peek( 1 ).between?( 0x2b, 0x2e ) || @input.peek( 1 ).between?( 0x30, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        when 2
          # at line 872:7: '\\\\' .
          match( 0x5c )
          match_any

        when 3
          # at line 873:7: {...}? => INTERPOLATION
          raise FailedPredicate( "SLASH", " at_interpolation? " ) unless ( (  at_interpolation?  ) )
          interpolation!
          # --> action
           type = DREGEX 
          # <-- action

        when 4
          # at line 874:7: '#'
          match( 0x23 )

        end
        # at line 876:5: (~ ( '/' | '\\\\' | '\\r' | '\\n' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )*
        while true # decision 9
          alt_9 = 5
          alt_9 = @dfa9.predict( @input )
          case alt_9
          when 1
            # at line 876:7: ~ ( '/' | '\\\\' | '\\r' | '\\n' | '#' )
            if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0x22 ) || @input.peek( 1 ).between?( 0x24, 0x2e ) || @input.peek( 1 ).between?( 0x30, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          when 2
            # at line 877:7: '\\\\' .
            match( 0x5c )
            match_any

          when 3
            # at line 878:7: {...}? => INTERPOLATION
            raise FailedPredicate( "SLASH", " at_interpolation? " ) unless ( (  at_interpolation?  ) )
            interpolation!
            # --> action
             type = DREGEX 
            # <-- action

          when 4
            # at line 879:7: '#'
            match( 0x23 )

          else
            break # out of loop for decision 9
          end
        end # loop for decision 9
        match( 0x2f )
        # at line 882:5: ( 'a' .. 'z' )*
        while true # decision 10
          alt_10 = 2
          look_10_0 = @input.peek( 1 )

          if ( look_10_0.between?( 0x61, 0x7a ) )
            alt_10 = 1

          end
          case alt_10
          when 1
            # at line 882:7: 'a' .. 'z'
            match_range( 0x61, 0x7a )

          else
            break # out of loop for decision 10
          end
        end # loop for decision 10

      when 4
        # at line 883:5: {...}? => '/' ( '=' | )
        raise FailedPredicate( "SLASH", " !@value_expected " ) unless ( (  !@value_expected  ) )
        match( 0x2f )
        # at line 883:33: ( '=' | )
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == 0x3d )
          alt_11 = 1
        else
          alt_11 = 2
        end
        case alt_11
        when 1
          # at line 883:35: '='
          match( 0x3d )
          # --> action
           type = SLASH_ASGN 
          # <-- action

        when 2
          # at line 883:64: 
          # --> action
           type = SLASH 
          # <-- action

        end

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 96 )

    end

    # lexer rule doc! (DOC)
    # (in Jejune.g)
    def doc!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 97 )

      type = DOC
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 887:5: '`' (~ ( '`' | '\\\\' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )* '`'
      match( 0x60 )
      # at line 888:5: (~ ( '`' | '\\\\' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )*
      while true # decision 13
        alt_13 = 5
        alt_13 = @dfa13.predict( @input )
        case alt_13
        when 1
          # at line 888:7: ~ ( '`' | '\\\\' | '#' )
          if @input.peek( 1 ).between?( 0x0, 0x22 ) || @input.peek( 1 ).between?( 0x24, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0x5f ) || @input.peek( 1 ).between?( 0x61, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        when 2
          # at line 889:7: '\\\\' .
          match( 0x5c )
          match_any

        when 3
          # at line 890:7: {...}? => INTERPOLATION
          raise FailedPredicate( "DOC", " at_interpolation? " ) unless ( (  at_interpolation?  ) )
          interpolation!
          # --> action
           type = DDOC 
          # <-- action

        when 4
          # at line 891:7: '#'
          match( 0x23 )

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13
      match( 0x60 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 97 )

    end

    # lexer rule string! (STRING)
    # (in Jejune.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 98 )

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 897:3: ( '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' | '\"' (~ ( '\"' | '\\\\' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )* '\"' )
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == 0x27 )
        alt_16 = 1
      elsif ( look_16_0 == 0x22 )
        alt_16 = 2
      else
        raise NoViableAlternative( "", 16, 0 )
      end
      case alt_16
      when 1
        # at line 897:5: '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\''
        match( 0x27 )
        # at line 897:10: (~ ( '\\'' | '\\\\' ) | '\\\\' . )*
        while true # decision 14
          alt_14 = 3
          look_14_0 = @input.peek( 1 )

          if ( look_14_0.between?( 0x0, 0x26 ) || look_14_0.between?( 0x28, 0x5b ) || look_14_0.between?( 0x5d, 0xffff ) )
            alt_14 = 1
          elsif ( look_14_0 == 0x5c )
            alt_14 = 2

          end
          case alt_14
          when 1
            # at line 897:12: ~ ( '\\'' | '\\\\' )
            if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          when 2
            # at line 897:31: '\\\\' .
            match( 0x5c )
            match_any

          else
            break # out of loop for decision 14
          end
        end # loop for decision 14
        match( 0x27 )

      when 2
        # at line 898:5: '\"' (~ ( '\"' | '\\\\' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )* '\"'
        match( 0x22 )
        # at line 899:5: (~ ( '\"' | '\\\\' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )*
        while true # decision 15
          alt_15 = 5
          alt_15 = @dfa15.predict( @input )
          case alt_15
          when 1
            # at line 899:7: ~ ( '\"' | '\\\\' | '#' )
            if @input.peek( 1 ).between?( 0x0, 0x21 ) || @input.peek( 1 ).between?( 0x24, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          when 2
            # at line 900:7: '\\\\' .
            match( 0x5c )
            match_any

          when 3
            # at line 901:7: {...}? => INTERPOLATION
            raise FailedPredicate( "STRING", " at_interpolation? " ) unless ( (  at_interpolation?  ) )
            interpolation!
            # --> action
             type = DSTRING 
            # <-- action

          when 4
            # at line 902:7: '#'
            match( 0x23 )

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15
        match( 0x22 )

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 98 )

    end

    # lexer rule number! (NUMBER)
    # (in Jejune.g)
    def number!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 99 )

      type = NUMBER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 908:3: ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ )? | ( '.' )? ( '0' .. '9' )+ ( ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ )? | '0' ( 'x' | 'X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+ )
      alt_28 = 3
      alt_28 = @dfa28.predict( @input )
      case alt_28
      when 1
        # at line 908:5: ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ )?
        # at file 908:5: ( '0' .. '9' )+
        match_count_17 = 0
        while true
          alt_17 = 2
          look_17_0 = @input.peek( 1 )

          if ( look_17_0.between?( 0x30, 0x39 ) )
            alt_17 = 1

          end
          case alt_17
          when 1
            # at line 908:6: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            match_count_17 > 0 and break
            eee = EarlyExit(17)


            raise eee
          end
          match_count_17 += 1
        end

        match( 0x2e )
        # at line 908:21: ( '0' .. '9' )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0.between?( 0x30, 0x39 ) )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 908:22: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            break # out of loop for decision 18
          end
        end # loop for decision 18
        # at line 908:33: ( ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ )?
        alt_21 = 2
        look_21_0 = @input.peek( 1 )

        if ( look_21_0 == 0x45 || look_21_0 == 0x65 )
          alt_21 = 1
        end
        case alt_21
        when 1
          # at line 908:35: ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+
          if @input.peek(1) == 0x45 || @input.peek(1) == 0x65
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end


          # at line 908:47: ( '+' | '-' )?
          alt_19 = 2
          look_19_0 = @input.peek( 1 )

          if ( look_19_0 == 0x2b || look_19_0 == 0x2d )
            alt_19 = 1
          end
          case alt_19
          when 1
            # at line 
            if @input.peek(1) == 0x2b || @input.peek(1) == 0x2d
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          end
          # at file 908:60: ( '0' .. '9' )+
          match_count_20 = 0
          while true
            alt_20 = 2
            look_20_0 = @input.peek( 1 )

            if ( look_20_0.between?( 0x30, 0x39 ) )
              alt_20 = 1

            end
            case alt_20
            when 1
              # at line 908:61: '0' .. '9'
              match_range( 0x30, 0x39 )

            else
              match_count_20 > 0 and break
              eee = EarlyExit(20)


              raise eee
            end
            match_count_20 += 1
          end


        end

      when 2
        # at line 909:5: ( '.' )? ( '0' .. '9' )+ ( ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ )?
        # at line 909:5: ( '.' )?
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == 0x2e )
          alt_22 = 1
        end
        case alt_22
        when 1
          # at line 909:5: '.'
          match( 0x2e )

        end
        # at file 909:10: ( '0' .. '9' )+
        match_count_23 = 0
        while true
          alt_23 = 2
          look_23_0 = @input.peek( 1 )

          if ( look_23_0.between?( 0x30, 0x39 ) )
            alt_23 = 1

          end
          case alt_23
          when 1
            # at line 909:11: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            match_count_23 > 0 and break
            eee = EarlyExit(23)


            raise eee
          end
          match_count_23 += 1
        end

        # at line 909:22: ( ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ )?
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == 0x45 || look_26_0 == 0x65 )
          alt_26 = 1
        end
        case alt_26
        when 1
          # at line 909:24: ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+
          if @input.peek(1) == 0x45 || @input.peek(1) == 0x65
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end


          # at line 909:36: ( '+' | '-' )?
          alt_24 = 2
          look_24_0 = @input.peek( 1 )

          if ( look_24_0 == 0x2b || look_24_0 == 0x2d )
            alt_24 = 1
          end
          case alt_24
          when 1
            # at line 
            if @input.peek(1) == 0x2b || @input.peek(1) == 0x2d
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          end
          # at file 909:49: ( '0' .. '9' )+
          match_count_25 = 0
          while true
            alt_25 = 2
            look_25_0 = @input.peek( 1 )

            if ( look_25_0.between?( 0x30, 0x39 ) )
              alt_25 = 1

            end
            case alt_25
            when 1
              # at line 909:50: '0' .. '9'
              match_range( 0x30, 0x39 )

            else
              match_count_25 > 0 and break
              eee = EarlyExit(25)


              raise eee
            end
            match_count_25 += 1
          end


        end

      when 3
        # at line 910:5: '0' ( 'x' | 'X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+
        match( 0x30 )
        if @input.peek(1) == 0x58 || @input.peek(1) == 0x78
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end


        # at file 910:21: ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+
        match_count_27 = 0
        while true
          alt_27 = 2
          look_27_0 = @input.peek( 1 )

          if ( look_27_0.between?( 0x30, 0x39 ) || look_27_0.between?( 0x41, 0x46 ) || look_27_0.between?( 0x61, 0x66 ) )
            alt_27 = 1

          end
          case alt_27
          when 1
            # at line 
            if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x46 ) || @input.peek( 1 ).between?( 0x61, 0x66 )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            match_count_27 > 0 and break
            eee = EarlyExit(27)


            raise eee
          end
          match_count_27 += 1
        end


      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 99 )

    end

    # lexer rule newline! (NEWLINE)
    # (in Jejune.g)
    def newline!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 100 )

      type = NEWLINE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 914:5: ( '\\n' | '\\r' )+
      # at file 914:5: ( '\\n' | '\\r' )+
      match_count_29 = 0
      while true
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == 0xa || look_29_0 == 0xd )
          alt_29 = 1

        end
        case alt_29
        when 1
          # at line 
          if @input.peek(1) == 0xa || @input.peek(1) == 0xd
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          match_count_29 > 0 and break
          eee = EarlyExit(29)


          raise eee
        end
        match_count_29 += 1
      end

      # --> action
       channel = HIDDEN 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 100 )

    end

    # lexer rule ivar! (IVAR)
    # (in Jejune.g)
    def ivar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 101 )

      type = IVAR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 918:5: '@' ( '$' | '_' | 'a' .. 'z' | 'A' .. 'Z' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' | '$' )*
      match( 0x40 )
      if @input.peek(1) == 0x24 || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # at line 919:5: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' | '$' )*
      while true # decision 30
        alt_30 = 2
        look_30_0 = @input.peek( 1 )

        if ( look_30_0 == 0x24 || look_30_0.between?( 0x30, 0x39 ) || look_30_0.between?( 0x41, 0x5a ) || look_30_0 == 0x5f || look_30_0.between?( 0x61, 0x7a ) )
          alt_30 = 1

        end
        case alt_30
        when 1
          # at line 
          if @input.peek(1) == 0x24 || @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 30
        end
      end # loop for decision 30

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 101 )

    end

    # lexer rule id! (ID)
    # (in Jejune.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 102 )

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 923:5: ( '$' | '_' | 'a' .. 'z' | 'A' .. 'Z' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' | '$' )*
      if @input.peek(1) == 0x24 || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # at line 924:5: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' | '$' )*
      while true # decision 31
        alt_31 = 2
        look_31_0 = @input.peek( 1 )

        if ( look_31_0 == 0x24 || look_31_0.between?( 0x30, 0x39 ) || look_31_0.between?( 0x41, 0x5a ) || look_31_0 == 0x5f || look_31_0.between?( 0x61, 0x7a ) )
          alt_31 = 1

        end
        case alt_31
        when 1
          # at line 
          if @input.peek(1) == 0x24 || @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 31
        end
      end # loop for decision 31

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 102 )

    end

    # lexer rule ws! (WS)
    # (in Jejune.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 103 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 928:5: ( '\\t' | '\\f' | ' ' | '\\u00A0' )+
      # at file 928:5: ( '\\t' | '\\f' | ' ' | '\\u00A0' )+
      match_count_32 = 0
      while true
        alt_32 = 2
        look_32_0 = @input.peek( 1 )

        if ( look_32_0 == 0x9 || look_32_0 == 0xc || look_32_0 == 0x20 || look_32_0 == 0xa0 )
          alt_32 = 1

        end
        case alt_32
        when 1
          # at line 
          if @input.peek(1) == 0x9 || @input.peek(1) == 0xc || @input.peek(1) == 0x20 || @input.peek(1) == 0xa0
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          match_count_32 > 0 and break
          eee = EarlyExit(32)


          raise eee
        end
        match_count_32 += 1
      end

      # --> action
       channel = HIDDEN 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 103 )

    end

    # lexer rule ejs! (EJS)
    # (in Jejune.g)
    def ejs!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 104 )

      type = EJS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 932:5: 'ejs' ( IGNORABLE_NL )* ( ID )? ( IGNORABLE_NL )* '(' ( IGNORABLE_NL )* ( '%' )? NESTED_BRACES
      match( "ejs" )
      # at line 932:11: ( IGNORABLE_NL )*
      while true # decision 33
        alt_33 = 2
        alt_33 = @dfa33.predict( @input )
        case alt_33
        when 1
          # at line 932:11: IGNORABLE_NL
          ignorable_nl!

        else
          break # out of loop for decision 33
        end
      end # loop for decision 33
      # at line 932:25: ( ID )?
      alt_34 = 2
      look_34_0 = @input.peek( 1 )

      if ( look_34_0 == 0x24 || look_34_0.between?( 0x41, 0x5a ) || look_34_0 == 0x5f || look_34_0.between?( 0x61, 0x7a ) )
        alt_34 = 1
      end
      case alt_34
      when 1
        # at line 932:25: ID
        id!

      end
      # at line 932:29: ( IGNORABLE_NL )*
      while true # decision 35
        alt_35 = 2
        look_35_0 = @input.peek( 1 )

        if ( look_35_0.between?( 0x9, 0xa ) || look_35_0.between?( 0xc, 0xd ) || look_35_0 == 0x20 || look_35_0 == 0x2f || look_35_0 == 0xa0 )
          alt_35 = 1

        end
        case alt_35
        when 1
          # at line 932:29: IGNORABLE_NL
          ignorable_nl!

        else
          break # out of loop for decision 35
        end
      end # loop for decision 35
      match( 0x28 )
      # --> action
       quick_balance( LPAREN, RPAREN ) 
      # <-- action
      # at line 934:5: ( IGNORABLE_NL )*
      while true # decision 36
        alt_36 = 2
        look_36_0 = @input.peek( 1 )

        if ( look_36_0.between?( 0x9, 0xa ) || look_36_0.between?( 0xc, 0xd ) || look_36_0 == 0x20 || look_36_0 == 0x2f || look_36_0 == 0xa0 )
          alt_36 = 1

        end
        case alt_36
        when 1
          # at line 934:5: IGNORABLE_NL
          ignorable_nl!

        else
          break # out of loop for decision 36
        end
      end # loop for decision 36
      # at line 935:5: ( '%' )?
      alt_37 = 2
      look_37_0 = @input.peek( 1 )

      if ( look_37_0 == 0x25 )
        alt_37 = 1
      end
      case alt_37
      when 1
        # at line 935:5: '%'
        match( 0x25 )

      end
      nested_braces!

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 104 )

    end

    # lexer rule ignorable! (IGNORABLE)
    # (in Jejune.g)
    def ignorable!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 105 )

      
      # - - - - main rule block - - - -
      # at line 941:3: ( '//' (~ ( '\\n' | '\\r' ) )* ( ( '\\r' )? '\\n' )? | '/*' ( . )* '*/' | ( '\\t' | '\\f' | ' ' | '\\u00A0' | '\\\\' ( '\\r' )? '\\n' )+ )
      alt_44 = 3
      look_44_0 = @input.peek( 1 )

      if ( look_44_0 == 0x2f )
        look_44_1 = @input.peek( 2 )

        if ( look_44_1 == 0x2f )
          alt_44 = 1
        elsif ( look_44_1 == 0x2a )
          alt_44 = 2
        else
          raise NoViableAlternative( "", 44, 1 )
        end
      elsif ( look_44_0 == 0x9 || look_44_0 == 0xc || look_44_0 == 0x20 || look_44_0 == 0x5c || look_44_0 == 0xa0 )
        alt_44 = 3
      else
        raise NoViableAlternative( "", 44, 0 )
      end
      case alt_44
      when 1
        # at line 941:5: '//' (~ ( '\\n' | '\\r' ) )* ( ( '\\r' )? '\\n' )?
        match( "//" )
        # at line 941:10: (~ ( '\\n' | '\\r' ) )*
        while true # decision 38
          alt_38 = 2
          look_38_0 = @input.peek( 1 )

          if ( look_38_0.between?( 0x0, 0x9 ) || look_38_0.between?( 0xb, 0xc ) || look_38_0.between?( 0xe, 0xffff ) )
            alt_38 = 1

          end
          case alt_38
          when 1
            # at line 941:10: ~ ( '\\n' | '\\r' )
            if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            break # out of loop for decision 38
          end
        end # loop for decision 38
        # at line 941:28: ( ( '\\r' )? '\\n' )?
        alt_40 = 2
        look_40_0 = @input.peek( 1 )

        if ( look_40_0 == 0xa || look_40_0 == 0xd )
          alt_40 = 1
        end
        case alt_40
        when 1
          # at line 941:30: ( '\\r' )? '\\n'
          # at line 941:30: ( '\\r' )?
          alt_39 = 2
          look_39_0 = @input.peek( 1 )

          if ( look_39_0 == 0xd )
            alt_39 = 1
          end
          case alt_39
          when 1
            # at line 941:30: '\\r'
            match( 0xd )

          end
          match( 0xa )

        end

      when 2
        # at line 942:5: '/*' ( . )* '*/'
        match( "/*" )
        # at line 942:10: ( . )*
        while true # decision 41
          alt_41 = 2
          look_41_0 = @input.peek( 1 )

          if ( look_41_0 == 0x2a )
            look_41_1 = @input.peek( 2 )

            if ( look_41_1 == 0x2f )
              alt_41 = 2
            elsif ( look_41_1.between?( 0x0, 0x2e ) || look_41_1.between?( 0x30, 0xffff ) )
              alt_41 = 1

            end
          elsif ( look_41_0.between?( 0x0, 0x29 ) || look_41_0.between?( 0x2b, 0xffff ) )
            alt_41 = 1

          end
          case alt_41
          when 1
            # at line 942:10: .
            match_any

          else
            break # out of loop for decision 41
          end
        end # loop for decision 41
        match( "*/" )

      when 3
        # at line 943:5: ( '\\t' | '\\f' | ' ' | '\\u00A0' | '\\\\' ( '\\r' )? '\\n' )+
        # at file 943:5: ( '\\t' | '\\f' | ' ' | '\\u00A0' | '\\\\' ( '\\r' )? '\\n' )+
        match_count_43 = 0
        while true
          alt_43 = 6
          case look_43 = @input.peek( 1 )
          when 0x9 then alt_43 = 1
          when 0xc then alt_43 = 2
          when 0x20 then alt_43 = 3
          when 0xa0 then alt_43 = 4
          when 0x5c then alt_43 = 5
          end
          case alt_43
          when 1
            # at line 943:7: '\\t'
            match( 0x9 )

          when 2
            # at line 943:14: '\\f'
            match( 0xc )

          when 3
            # at line 943:21: ' '
            match( 0x20 )

          when 4
            # at line 943:27: '\\u00A0'
            match( 0xa0 )

          when 5
            # at line 943:38: '\\\\' ( '\\r' )? '\\n'
            match( 0x5c )
            # at line 943:43: ( '\\r' )?
            alt_42 = 2
            look_42_0 = @input.peek( 1 )

            if ( look_42_0 == 0xd )
              alt_42 = 1
            end
            case alt_42
            when 1
              # at line 943:43: '\\r'
              match( 0xd )

            end
            match( 0xa )

          else
            match_count_43 > 0 and break
            eee = EarlyExit(43)


            raise eee
          end
          match_count_43 += 1
        end


      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 105 )

    end

    # lexer rule ignorable_nl! (IGNORABLE_NL)
    # (in Jejune.g)
    def ignorable_nl!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 106 )

      
      # - - - - main rule block - - - -
      # at line 948:3: ( '//' (~ ( '\\n' | '\\r' ) )* ( ( '\\r' )? '\\n' )? | '/*' ( . )* '*/' | ( '\\t' | '\\f' | ' ' | '\\u00A0' | '\\n' | '\\r' )+ )
      alt_50 = 3
      look_50_0 = @input.peek( 1 )

      if ( look_50_0 == 0x2f )
        look_50_1 = @input.peek( 2 )

        if ( look_50_1 == 0x2f )
          alt_50 = 1
        elsif ( look_50_1 == 0x2a )
          alt_50 = 2
        else
          raise NoViableAlternative( "", 50, 1 )
        end
      elsif ( look_50_0.between?( 0x9, 0xa ) || look_50_0.between?( 0xc, 0xd ) || look_50_0 == 0x20 || look_50_0 == 0xa0 )
        alt_50 = 3
      else
        raise NoViableAlternative( "", 50, 0 )
      end
      case alt_50
      when 1
        # at line 948:5: '//' (~ ( '\\n' | '\\r' ) )* ( ( '\\r' )? '\\n' )?
        match( "//" )
        # at line 948:10: (~ ( '\\n' | '\\r' ) )*
        while true # decision 45
          alt_45 = 2
          look_45_0 = @input.peek( 1 )

          if ( look_45_0.between?( 0x0, 0x9 ) || look_45_0.between?( 0xb, 0xc ) || look_45_0.between?( 0xe, 0xffff ) )
            alt_45 = 1

          end
          case alt_45
          when 1
            # at line 948:10: ~ ( '\\n' | '\\r' )
            if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            break # out of loop for decision 45
          end
        end # loop for decision 45
        # at line 948:28: ( ( '\\r' )? '\\n' )?
        alt_47 = 2
        look_47_0 = @input.peek( 1 )

        if ( look_47_0 == 0xa || look_47_0 == 0xd )
          alt_47 = 1
        end
        case alt_47
        when 1
          # at line 948:30: ( '\\r' )? '\\n'
          # at line 948:30: ( '\\r' )?
          alt_46 = 2
          look_46_0 = @input.peek( 1 )

          if ( look_46_0 == 0xd )
            alt_46 = 1
          end
          case alt_46
          when 1
            # at line 948:30: '\\r'
            match( 0xd )

          end
          match( 0xa )

        end

      when 2
        # at line 949:5: '/*' ( . )* '*/'
        match( "/*" )
        # at line 949:10: ( . )*
        while true # decision 48
          alt_48 = 2
          look_48_0 = @input.peek( 1 )

          if ( look_48_0 == 0x2a )
            look_48_1 = @input.peek( 2 )

            if ( look_48_1 == 0x2f )
              alt_48 = 2
            elsif ( look_48_1.between?( 0x0, 0x2e ) || look_48_1.between?( 0x30, 0xffff ) )
              alt_48 = 1

            end
          elsif ( look_48_0.between?( 0x0, 0x29 ) || look_48_0.between?( 0x2b, 0xffff ) )
            alt_48 = 1

          end
          case alt_48
          when 1
            # at line 949:10: .
            match_any

          else
            break # out of loop for decision 48
          end
        end # loop for decision 48
        match( "*/" )

      when 3
        # at line 950:5: ( '\\t' | '\\f' | ' ' | '\\u00A0' | '\\n' | '\\r' )+
        # at file 950:5: ( '\\t' | '\\f' | ' ' | '\\u00A0' | '\\n' | '\\r' )+
        match_count_49 = 0
        while true
          alt_49 = 2
          look_49_0 = @input.peek( 1 )

          if ( look_49_0.between?( 0x9, 0xa ) || look_49_0.between?( 0xc, 0xd ) || look_49_0 == 0x20 || look_49_0 == 0xa0 )
            alt_49 = 1

          end
          case alt_49
          when 1
            # at line 
            if @input.peek( 1 ).between?( 0x9, 0xa ) || @input.peek( 1 ).between?( 0xc, 0xd ) || @input.peek(1) == 0x20 || @input.peek(1) == 0xa0
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            match_count_49 > 0 and break
            eee = EarlyExit(49)


            raise eee
          end
          match_count_49 += 1
        end


      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 106 )

    end

    # lexer rule directive_line! (DIRECTIVE_LINE)
    # (in Jejune.g)
    def directive_line!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 107 )

      
      # - - - - main rule block - - - -
      # at line 956:5: ( IGNORABLE )* ( HIDE | REQUIRE ) ( IGNORABLE )* ( ( '\\r' )? '\\n' )?
      # at line 956:5: ( IGNORABLE )*
      while true # decision 51
        alt_51 = 2
        look_51_0 = @input.peek( 1 )

        if ( look_51_0 == 0x9 || look_51_0 == 0xc || look_51_0 == 0x20 || look_51_0 == 0x2f || look_51_0 == 0x5c || look_51_0 == 0xa0 )
          alt_51 = 1

        end
        case alt_51
        when 1
          # at line 956:5: IGNORABLE
          ignorable!

        else
          break # out of loop for decision 51
        end
      end # loop for decision 51
      # at line 957:5: ( HIDE | REQUIRE )
      alt_52 = 2
      look_52_0 = @input.peek( 1 )

      if ( look_52_0 == 0x68 )
        alt_52 = 1
      elsif ( look_52_0 == 0x69 || look_52_0 == 0x72 )
        alt_52 = 2
      else
        raise NoViableAlternative( "", 52, 0 )
      end
      case alt_52
      when 1
        # at line 957:7: HIDE
        hide!

      when 2
        # at line 958:7: REQUIRE
        require!

      end
      # at line 960:5: ( IGNORABLE )*
      while true # decision 53
        alt_53 = 2
        look_53_0 = @input.peek( 1 )

        if ( look_53_0 == 0x9 || look_53_0 == 0xc || look_53_0 == 0x20 || look_53_0 == 0x2f || look_53_0 == 0x5c || look_53_0 == 0xa0 )
          alt_53 = 1

        end
        case alt_53
        when 1
          # at line 960:5: IGNORABLE
          ignorable!

        else
          break # out of loop for decision 53
        end
      end # loop for decision 53
      # at line 961:5: ( ( '\\r' )? '\\n' )?
      alt_55 = 2
      look_55_0 = @input.peek( 1 )

      if ( look_55_0 == 0xa || look_55_0 == 0xd )
        alt_55 = 1
      end
      case alt_55
      when 1
        # at line 961:7: ( '\\r' )? '\\n'
        # at line 961:7: ( '\\r' )?
        alt_54 = 2
        look_54_0 = @input.peek( 1 )

        if ( look_54_0 == 0xd )
          alt_54 = 1
        end
        case alt_54
        when 1
          # at line 961:7: '\\r'
          match( 0xd )

        end
        match( 0xa )

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 107 )

    end

    # lexer rule hide! (HIDE)
    # (in Jejune.g)
    def hide!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 108 )

      
      # - - - - main rule block - - - -
      # at line 967:5: 'hide' ( IGNORABLE )* '{'
      match( "hide" )
      # at line 967:12: ( IGNORABLE )*
      while true # decision 56
        alt_56 = 2
        look_56_0 = @input.peek( 1 )

        if ( look_56_0 == 0x9 || look_56_0 == 0xc || look_56_0 == 0x20 || look_56_0 == 0x2f || look_56_0 == 0x5c || look_56_0 == 0xa0 )
          alt_56 = 1

        end
        case alt_56
        when 1
          # at line 967:12: IGNORABLE
          ignorable!

        else
          break # out of loop for decision 56
        end
      end # loop for decision 56
      match( 0x7b )
      # --> action
       quick_balance( LBRACE, RBRACE ) 
      # <-- action

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 108 )

    end

    # lexer rule require! (REQUIRE)
    # (in Jejune.g)
    def require!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 109 )

      
      # - - - - main rule block - - - -
      # at line 973:5: ( 'require' | 'include' ) ( IGNORABLE )* ( ( NESTED_PARENTHESES | NESTED_BRACKETS | NESTED_BRACES | NESTED_ANGLES | '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"' | '`' (~ ( '`' | '\\\\' ) | '\\\\' . )* '`' | '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' ) | ~ ( '\\r' | '\\n' | '(' | '[' | '{' | '<' | '\"' | '\\'' | '`' ) (~ ( '\\r' | '\\n' | ' ' | '\\t' | '\\f' | '\\\\' ) | '\\\\' . )* )
      # at line 973:5: ( 'require' | 'include' )
      alt_57 = 2
      look_57_0 = @input.peek( 1 )

      if ( look_57_0 == 0x72 )
        alt_57 = 1
      elsif ( look_57_0 == 0x69 )
        alt_57 = 2
      else
        raise NoViableAlternative( "", 57, 0 )
      end
      case alt_57
      when 1
        # at line 973:7: 'require'
        match( "require" )

      when 2
        # at line 973:19: 'include'
        match( "include" )

      end
      # at line 974:5: ( IGNORABLE )*
      while true # decision 58
        alt_58 = 2
        alt_58 = @dfa58.predict( @input )
        case alt_58
        when 1
          # at line 974:5: IGNORABLE
          ignorable!

        else
          break # out of loop for decision 58
        end
      end # loop for decision 58
      # at line 975:5: ( ( NESTED_PARENTHESES | NESTED_BRACKETS | NESTED_BRACES | NESTED_ANGLES | '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"' | '`' (~ ( '`' | '\\\\' ) | '\\\\' . )* '`' | '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' ) | ~ ( '\\r' | '\\n' | '(' | '[' | '{' | '<' | '\"' | '\\'' | '`' ) (~ ( '\\r' | '\\n' | ' ' | '\\t' | '\\f' | '\\\\' ) | '\\\\' . )* )
      alt_64 = 2
      look_64_0 = @input.peek( 1 )

      if ( look_64_0 == 0x22 || look_64_0.between?( 0x27, 0x28 ) || look_64_0 == 0x3c || look_64_0 == 0x5b || look_64_0 == 0x60 || look_64_0 == 0x7b )
        alt_64 = 1
      elsif ( look_64_0.between?( 0x0, 0x9 ) || look_64_0.between?( 0xb, 0xc ) || look_64_0.between?( 0xe, 0x21 ) || look_64_0.between?( 0x23, 0x26 ) || look_64_0.between?( 0x29, 0x3b ) || look_64_0.between?( 0x3d, 0x5a ) || look_64_0.between?( 0x5c, 0x5f ) || look_64_0.between?( 0x61, 0x7a ) || look_64_0.between?( 0x7c, 0xffff ) )
        alt_64 = 2
      else
        raise NoViableAlternative( "", 64, 0 )
      end
      case alt_64
      when 1
        # at line 976:7: ( NESTED_PARENTHESES | NESTED_BRACKETS | NESTED_BRACES | NESTED_ANGLES | '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"' | '`' (~ ( '`' | '\\\\' ) | '\\\\' . )* '`' | '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' )
        # at line 976:7: ( NESTED_PARENTHESES | NESTED_BRACKETS | NESTED_BRACES | NESTED_ANGLES | '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"' | '`' (~ ( '`' | '\\\\' ) | '\\\\' . )* '`' | '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' )
        alt_62 = 7
        case look_62 = @input.peek( 1 )
        when 0x28 then alt_62 = 1
        when 0x5b then alt_62 = 2
        when 0x7b then alt_62 = 3
        when 0x3c then alt_62 = 4
        when 0x22 then alt_62 = 5
        when 0x60 then alt_62 = 6
        when 0x27 then alt_62 = 7
        else
          raise NoViableAlternative( "", 62, 0 )
        end
        case alt_62
        when 1
          # at line 976:9: NESTED_PARENTHESES
          nested_parentheses!

        when 2
          # at line 977:9: NESTED_BRACKETS
          nested_brackets!

        when 3
          # at line 978:9: NESTED_BRACES
          nested_braces!

        when 4
          # at line 979:9: NESTED_ANGLES
          nested_angles!

        when 5
          # at line 980:9: '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"'
          match( 0x22 )
          # at line 980:14: (~ ( '\"' | '\\\\' ) | '\\\\' . )*
          while true # decision 59
            alt_59 = 3
            look_59_0 = @input.peek( 1 )

            if ( look_59_0.between?( 0x0, 0x21 ) || look_59_0.between?( 0x23, 0x5b ) || look_59_0.between?( 0x5d, 0xffff ) )
              alt_59 = 1
            elsif ( look_59_0 == 0x5c )
              alt_59 = 2

            end
            case alt_59
            when 1
              # at line 980:16: ~ ( '\"' | '\\\\' )
              if @input.peek( 1 ).between?( 0x0, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
                @input.consume
              else
                mse = MismatchedSet( nil )
                recover mse
                raise mse
              end



            when 2
              # at line 980:35: '\\\\' .
              match( 0x5c )
              match_any

            else
              break # out of loop for decision 59
            end
          end # loop for decision 59
          match( 0x22 )

        when 6
          # at line 981:9: '`' (~ ( '`' | '\\\\' ) | '\\\\' . )* '`'
          match( 0x60 )
          # at line 981:14: (~ ( '`' | '\\\\' ) | '\\\\' . )*
          while true # decision 60
            alt_60 = 3
            look_60_0 = @input.peek( 1 )

            if ( look_60_0.between?( 0x0, 0x5b ) || look_60_0.between?( 0x5d, 0x5f ) || look_60_0.between?( 0x61, 0xffff ) )
              alt_60 = 1
            elsif ( look_60_0 == 0x5c )
              alt_60 = 2

            end
            case alt_60
            when 1
              # at line 981:16: ~ ( '`' | '\\\\' )
              if @input.peek( 1 ).between?( 0x0, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0x5f ) || @input.peek( 1 ).between?( 0x61, 0xff )
                @input.consume
              else
                mse = MismatchedSet( nil )
                recover mse
                raise mse
              end



            when 2
              # at line 981:35: '\\\\' .
              match( 0x5c )
              match_any

            else
              break # out of loop for decision 60
            end
          end # loop for decision 60
          match( 0x60 )

        when 7
          # at line 982:9: '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\''
          match( 0x27 )
          # at line 982:14: (~ ( '\\'' | '\\\\' ) | '\\\\' . )*
          while true # decision 61
            alt_61 = 3
            look_61_0 = @input.peek( 1 )

            if ( look_61_0.between?( 0x0, 0x26 ) || look_61_0.between?( 0x28, 0x5b ) || look_61_0.between?( 0x5d, 0xffff ) )
              alt_61 = 1
            elsif ( look_61_0 == 0x5c )
              alt_61 = 2

            end
            case alt_61
            when 1
              # at line 982:16: ~ ( '\\'' | '\\\\' )
              if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
                @input.consume
              else
                mse = MismatchedSet( nil )
                recover mse
                raise mse
              end



            when 2
              # at line 982:35: '\\\\' .
              match( 0x5c )
              match_any

            else
              break # out of loop for decision 61
            end
          end # loop for decision 61
          match( 0x27 )

        end

      when 2
        # at line 984:7: ~ ( '\\r' | '\\n' | '(' | '[' | '{' | '<' | '\"' | '\\'' | '`' ) (~ ( '\\r' | '\\n' | ' ' | '\\t' | '\\f' | '\\\\' ) | '\\\\' . )*
        if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x26 ) || @input.peek( 1 ).between?( 0x29, 0x3b ) || @input.peek( 1 ).between?( 0x3d, 0x5a ) || @input.peek( 1 ).between?( 0x5c, 0x5f ) || @input.peek( 1 ).between?( 0x61, 0x7a ) || @input.peek( 1 ).between?( 0x7c, 0xff )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end


        # at line 985:7: (~ ( '\\r' | '\\n' | ' ' | '\\t' | '\\f' | '\\\\' ) | '\\\\' . )*
        while true # decision 63
          alt_63 = 3
          look_63_0 = @input.peek( 1 )

          if ( look_63_0.between?( 0x0, 0x8 ) || look_63_0 == 0xb || look_63_0.between?( 0xe, 0x1f ) || look_63_0.between?( 0x21, 0x5b ) || look_63_0.between?( 0x5d, 0xffff ) )
            alt_63 = 1
          elsif ( look_63_0 == 0x5c )
            alt_63 = 2

          end
          case alt_63
          when 1
            # at line 985:9: ~ ( '\\r' | '\\n' | ' ' | '\\t' | '\\f' | '\\\\' )
            if @input.peek( 1 ).between?( 0x0, 0x8 ) || @input.peek(1) == 0xb || @input.peek( 1 ).between?( 0xe, 0x1f ) || @input.peek( 1 ).between?( 0x21, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          when 2
            # at line 985:55: '\\\\' .
            match( 0x5c )
            match_any

          else
            break # out of loop for decision 63
          end
        end # loop for decision 63

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 109 )

    end

    # lexer rule generalized_delimiter! (GENERALIZED_DELIMITER)
    # (in Jejune.g)
    def generalized_delimiter!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 110 )

      
      # - - - - main rule block - - - -
      # at line 991:3: ( NESTED_PARENTHESES | NESTED_BRACKETS | NESTED_BRACES | NESTED_ANGLES | ( '!' | '@' | '~' | '`' | '^' | '&' | '*' | '-' | '+' | '=' | '|' | ':' | ';' | '.' | ',' | '?' | '/' | '\"' | '\\'' ) )
      alt_65 = 5
      case look_65 = @input.peek( 1 )
      when 0x28 then alt_65 = 1
      when 0x5b then alt_65 = 2
      when 0x7b then alt_65 = 3
      when 0x3c then alt_65 = 4
      when 0x21, 0x22, 0x26, 0x27, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x3a, 0x3b, 0x3d, 0x3f, 0x40, 0x5e, 0x60, 0x7c, 0x7e then alt_65 = 5
      else
        raise NoViableAlternative( "", 65, 0 )
      end
      case alt_65
      when 1
        # at line 991:5: NESTED_PARENTHESES
        nested_parentheses!

      when 2
        # at line 992:5: NESTED_BRACKETS
        nested_brackets!

      when 3
        # at line 993:5: NESTED_BRACES
        nested_braces!

      when 4
        # at line 994:5: NESTED_ANGLES
        nested_angles!

      when 5
        # at line 995:5: ( '!' | '@' | '~' | '`' | '^' | '&' | '*' | '-' | '+' | '=' | '|' | ':' | ';' | '.' | ',' | '?' | '/' | '\"' | '\\'' )
        if @input.peek( 1 ).between?( 0x21, 0x22 ) || @input.peek( 1 ).between?( 0x26, 0x27 ) || @input.peek( 1 ).between?( 0x2a, 0x2f ) || @input.peek( 1 ).between?( 0x3a, 0x3b ) || @input.peek(1) == 0x3d || @input.peek( 1 ).between?( 0x3f, 0x40 ) || @input.peek(1) == 0x5e || @input.peek(1) == 0x60 || @input.peek(1) == 0x7c || @input.peek(1) == 0x7e
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end


        # --> action
         scan_until_delimiter( @input.peek( -1 ) ) 
        # <-- action

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 110 )

    end

    # lexer rule nested_parentheses! (NESTED_PARENTHESES)
    # (in Jejune.g)
    def nested_parentheses!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 111 )

      
      # - - - - main rule block - - - -
      # at line 1004:5: '(' (~ ( '(' | ')' | '\\\\' ) | '\\\\' . | NESTED_PARENTHESES )* ')'
      match( 0x28 )
      # at line 1004:9: (~ ( '(' | ')' | '\\\\' ) | '\\\\' . | NESTED_PARENTHESES )*
      while true # decision 66
        alt_66 = 4
        look_66_0 = @input.peek( 1 )

        if ( look_66_0.between?( 0x0, 0x27 ) || look_66_0.between?( 0x2a, 0x5b ) || look_66_0.between?( 0x5d, 0xffff ) )
          alt_66 = 1
        elsif ( look_66_0 == 0x5c )
          alt_66 = 2
        elsif ( look_66_0 == 0x28 )
          alt_66 = 3

        end
        case alt_66
        when 1
          # at line 1004:11: ~ ( '(' | ')' | '\\\\' )
          if @input.peek( 1 ).between?( 0x0, 0x27 ) || @input.peek( 1 ).between?( 0x2a, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        when 2
          # at line 1004:35: '\\\\' .
          match( 0x5c )
          match_any

        when 3
          # at line 1004:44: NESTED_PARENTHESES
          nested_parentheses!

        else
          break # out of loop for decision 66
        end
      end # loop for decision 66
      match( 0x29 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 111 )

    end

    # lexer rule nested_brackets! (NESTED_BRACKETS)
    # (in Jejune.g)
    def nested_brackets!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 112 )

      
      # - - - - main rule block - - - -
      # at line 1009:5: '[' (~ ( '[' | ']' | '\\\\' ) | '\\\\' . | NESTED_BRACKETS )* ']'
      match( 0x5b )
      # at line 1009:9: (~ ( '[' | ']' | '\\\\' ) | '\\\\' . | NESTED_BRACKETS )*
      while true # decision 67
        alt_67 = 4
        look_67_0 = @input.peek( 1 )

        if ( look_67_0.between?( 0x0, 0x5a ) || look_67_0.between?( 0x5e, 0xffff ) )
          alt_67 = 1
        elsif ( look_67_0 == 0x5c )
          alt_67 = 2
        elsif ( look_67_0 == 0x5b )
          alt_67 = 3

        end
        case alt_67
        when 1
          # at line 1009:11: ~ ( '[' | ']' | '\\\\' )
          if @input.peek( 1 ).between?( 0x0, 0x5a ) || @input.peek( 1 ).between?( 0x5e, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        when 2
          # at line 1009:35: '\\\\' .
          match( 0x5c )
          match_any

        when 3
          # at line 1009:45: NESTED_BRACKETS
          nested_brackets!

        else
          break # out of loop for decision 67
        end
      end # loop for decision 67
      match( 0x5d )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 112 )

    end

    # lexer rule nested_braces! (NESTED_BRACES)
    # (in Jejune.g)
    def nested_braces!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 113 )

      
      # - - - - main rule block - - - -
      # at line 1014:5: '{' (~ ( '{' | '}' | '\\\\' ) | '\\\\' . | NESTED_BRACES )* '}'
      match( 0x7b )
      # at line 1014:9: (~ ( '{' | '}' | '\\\\' ) | '\\\\' . | NESTED_BRACES )*
      while true # decision 68
        alt_68 = 4
        look_68_0 = @input.peek( 1 )

        if ( look_68_0.between?( 0x0, 0x5b ) || look_68_0.between?( 0x5d, 0x7a ) || look_68_0 == 0x7c || look_68_0.between?( 0x7e, 0xffff ) )
          alt_68 = 1
        elsif ( look_68_0 == 0x5c )
          alt_68 = 2
        elsif ( look_68_0 == 0x7b )
          alt_68 = 3

        end
        case alt_68
        when 1
          # at line 1014:11: ~ ( '{' | '}' | '\\\\' )
          if @input.peek( 1 ).between?( 0x0, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0x7a ) || @input.peek(1) == 0x7c || @input.peek( 1 ).between?( 0x7e, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        when 2
          # at line 1014:35: '\\\\' .
          match( 0x5c )
          match_any

        when 3
          # at line 1014:44: NESTED_BRACES
          nested_braces!

        else
          break # out of loop for decision 68
        end
      end # loop for decision 68
      match( 0x7d )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 113 )

    end

    # lexer rule nested_angles! (NESTED_ANGLES)
    # (in Jejune.g)
    def nested_angles!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 114 )

      
      # - - - - main rule block - - - -
      # at line 1019:5: '<' (~ ( '<' | '>' | '\\\\' ) | '\\\\' . | NESTED_ANGLES )* '>'
      match( 0x3c )
      # at line 1019:9: (~ ( '<' | '>' | '\\\\' ) | '\\\\' . | NESTED_ANGLES )*
      while true # decision 69
        alt_69 = 4
        look_69_0 = @input.peek( 1 )

        if ( look_69_0.between?( 0x0, 0x3b ) || look_69_0 == 0x3d || look_69_0.between?( 0x3f, 0x5b ) || look_69_0.between?( 0x5d, 0xffff ) )
          alt_69 = 1
        elsif ( look_69_0 == 0x5c )
          alt_69 = 2
        elsif ( look_69_0 == 0x3c )
          alt_69 = 3

        end
        case alt_69
        when 1
          # at line 1019:11: ~ ( '<' | '>' | '\\\\' )
          if @input.peek( 1 ).between?( 0x0, 0x3b ) || @input.peek(1) == 0x3d || @input.peek( 1 ).between?( 0x3f, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        when 2
          # at line 1019:35: '\\\\' .
          match( 0x5c )
          match_any

        when 3
          # at line 1019:44: NESTED_ANGLES
          nested_angles!

        else
          break # out of loop for decision 69
        end
      end # loop for decision 69
      match( 0x3e )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 114 )

    end

    # lexer rule interpolation! (INTERPOLATION)
    # (in Jejune.g)
    def interpolation!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 115 )

      
      # - - - - main rule block - - - -
      # at line 1024:5: '#' ( '{' | ( '@' | '%' ) ID | '$' ( '$' | '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' )* )
      match( 0x23 )
      # at line 1025:5: ( '{' | ( '@' | '%' ) ID | '$' ( '$' | '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' )* )
      alt_71 = 3
      case look_71 = @input.peek( 1 )
      when 0x7b then alt_71 = 1
      when 0x25, 0x40 then alt_71 = 2
      when 0x24 then alt_71 = 3
      else
        raise NoViableAlternative( "", 71, 0 )
      end
      case alt_71
      when 1
        # at line 1025:7: '{'
        match( 0x7b )
        # --> action
         quick_balance( LBRACE, RBRACE ) 
        # <-- action

      when 2
        # at line 1026:7: ( '@' | '%' ) ID
        if @input.peek(1) == 0x25 || @input.peek(1) == 0x40
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end


        id!

      when 3
        # at line 1027:7: '$' ( '$' | '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' )*
        match( 0x24 )
        # at line 1027:11: ( '$' | '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' )*
        while true # decision 70
          alt_70 = 2
          look_70_0 = @input.peek( 1 )

          if ( look_70_0 == 0x24 || look_70_0.between?( 0x30, 0x39 ) || look_70_0.between?( 0x41, 0x5a ) || look_70_0 == 0x5f || look_70_0.between?( 0x61, 0x7a ) )
            alt_70 = 1

          end
          case alt_70
          when 1
            # at line 
            if @input.peek(1) == 0x24 || @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            break # out of loop for decision 70
          end
        end # loop for decision 70

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 115 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( AMP | AMP_ASGN | GEQ | AND | GET | GREATER | HAT | HAT_ASGN | QMARK | ARROW | RBRACE | ASGN | IF | RBRACK | IN | BL_END | INCR | BREAK | INSTANCEOF | RETURN | IS_DEFINED | RPAREN | CASE | RSHIFT | CATCH | RSHIFT3 | COLON | LBRACE | RSHIFT3_ASGN | COMMA | LBRACK | RSHIFT_ASGN | LEQ | SEMI | CONST | LESS | SET | CONTINUE | LET | DECR | LPAREN | DEFAULT | LSHIFT | STAR | DELETE | LSHIFT_ASGN | STAR_ASGN | MACRO | SWITCH | MINUS | THIS | DO | MINUS_ASGN | THROW | DOT | TILDE | TRUE | NEQ | TRY | NEQQ | TYPEOF | NEW | EACH | NOT | UNDEFINED | ELSE | NULL | UNLESS | EQ | UNTIL | EQQ | OR | FALSE | OR_ASGN | VAR | FINALLY | VOID | FOR | PIPE | WHILE | PIPE_ASGN | WITH | FUNCTION | PLUS | YIELD | PLUS_ASGN | IS_UNDEFINED | POUND | DEF | CLASS_DEF | OBJECT_DEF | T__148 | T__149 | T__150 | MOD | SLASH | DOC | STRING | NUMBER | NEWLINE | IVAR | ID | WS | EJS )
      alt_72 = 104
      alt_72 = @dfa72.predict( @input )
      case alt_72
      when 1
        # at line 1:10: AMP
        amp!

      when 2
        # at line 1:14: AMP_ASGN
        amp_asgn!

      when 3
        # at line 1:23: GEQ
        geq!

      when 4
        # at line 1:27: AND
        and!

      when 5
        # at line 1:31: GET
        get!

      when 6
        # at line 1:35: GREATER
        greater!

      when 7
        # at line 1:43: HAT
        hat!

      when 8
        # at line 1:47: HAT_ASGN
        hat_asgn!

      when 9
        # at line 1:56: QMARK
        qmark!

      when 10
        # at line 1:62: ARROW
        arrow!

      when 11
        # at line 1:68: RBRACE
        rbrace!

      when 12
        # at line 1:75: ASGN
        asgn!

      when 13
        # at line 1:80: IF
        if!

      when 14
        # at line 1:83: RBRACK
        rbrack!

      when 15
        # at line 1:90: IN
        in!

      when 16
        # at line 1:93: BL_END
        bl_end!

      when 17
        # at line 1:100: INCR
        incr!

      when 18
        # at line 1:105: BREAK
        break!

      when 19
        # at line 1:111: INSTANCEOF
        instanceof!

      when 20
        # at line 1:122: RETURN
        return!

      when 21
        # at line 1:129: IS_DEFINED
        is_defined!

      when 22
        # at line 1:140: RPAREN
        rparen!

      when 23
        # at line 1:147: CASE
        case!

      when 24
        # at line 1:152: RSHIFT
        rshift!

      when 25
        # at line 1:159: CATCH
        catch!

      when 26
        # at line 1:165: RSHIFT3
        rshift_3!

      when 27
        # at line 1:173: COLON
        colon!

      when 28
        # at line 1:179: LBRACE
        lbrace!

      when 29
        # at line 1:186: RSHIFT3_ASGN
        rshift_3_asgn!

      when 30
        # at line 1:199: COMMA
        comma!

      when 31
        # at line 1:205: LBRACK
        lbrack!

      when 32
        # at line 1:212: RSHIFT_ASGN
        rshift_asgn!

      when 33
        # at line 1:224: LEQ
        leq!

      when 34
        # at line 1:228: SEMI
        semi!

      when 35
        # at line 1:233: CONST
        const!

      when 36
        # at line 1:239: LESS
        less!

      when 37
        # at line 1:244: SET
        set!

      when 38
        # at line 1:248: CONTINUE
        continue!

      when 39
        # at line 1:257: LET
        let!

      when 40
        # at line 1:261: DECR
        decr!

      when 41
        # at line 1:266: LPAREN
        lparen!

      when 42
        # at line 1:273: DEFAULT
        default!

      when 43
        # at line 1:281: LSHIFT
        lshift!

      when 44
        # at line 1:288: STAR
        star!

      when 45
        # at line 1:293: DELETE
        delete!

      when 46
        # at line 1:300: LSHIFT_ASGN
        lshift_asgn!

      when 47
        # at line 1:312: STAR_ASGN
        star_asgn!

      when 48
        # at line 1:322: MACRO
        macro!

      when 49
        # at line 1:328: SWITCH
        switch!

      when 50
        # at line 1:335: MINUS
        minus!

      when 51
        # at line 1:341: THIS
        this!

      when 52
        # at line 1:346: DO
        do!

      when 53
        # at line 1:349: MINUS_ASGN
        minus_asgn!

      when 54
        # at line 1:360: THROW
        throw!

      when 55
        # at line 1:366: DOT
        dot!

      when 56
        # at line 1:370: TILDE
        tilde!

      when 57
        # at line 1:376: TRUE
        true!

      when 58
        # at line 1:381: NEQ
        neq!

      when 59
        # at line 1:385: TRY
        try!

      when 60
        # at line 1:389: NEQQ
        neqq!

      when 61
        # at line 1:394: TYPEOF
        typeof!

      when 62
        # at line 1:401: NEW
        new!

      when 63
        # at line 1:405: EACH
        each!

      when 64
        # at line 1:410: NOT
        not!

      when 65
        # at line 1:414: UNDEFINED
        undefined!

      when 66
        # at line 1:424: ELSE
        else!

      when 67
        # at line 1:429: NULL
        null!

      when 68
        # at line 1:434: UNLESS
        unless!

      when 69
        # at line 1:441: EQ
        eq!

      when 70
        # at line 1:444: UNTIL
        until!

      when 71
        # at line 1:450: EQQ
        eqq!

      when 72
        # at line 1:454: OR
        or!

      when 73
        # at line 1:457: FALSE
        false!

      when 74
        # at line 1:463: OR_ASGN
        or_asgn!

      when 75
        # at line 1:471: VAR
        var!

      when 76
        # at line 1:475: FINALLY
        finally!

      when 77
        # at line 1:483: VOID
        void!

      when 78
        # at line 1:488: FOR
        for!

      when 79
        # at line 1:492: PIPE
        pipe!

      when 80
        # at line 1:497: WHILE
        while!

      when 81
        # at line 1:503: PIPE_ASGN
        pipe_asgn!

      when 82
        # at line 1:513: WITH
        with!

      when 83
        # at line 1:518: FUNCTION
        function!

      when 84
        # at line 1:527: PLUS
        plus!

      when 85
        # at line 1:532: YIELD
        yield!

      when 86
        # at line 1:538: PLUS_ASGN
        plus_asgn!

      when 87
        # at line 1:548: IS_UNDEFINED
        is_undefined!

      when 88
        # at line 1:561: POUND
        pound!

      when 89
        # at line 1:567: DEF
        def!

      when 90
        # at line 1:571: CLASS_DEF
        class_def!

      when 91
        # at line 1:581: OBJECT_DEF
        object_def!

      when 92
        # at line 1:592: T__148
        t__148!

      when 93
        # at line 1:599: T__149
        t__149!

      when 94
        # at line 1:606: T__150
        t__150!

      when 95
        # at line 1:613: MOD
        mod!

      when 96
        # at line 1:617: SLASH
        slash!

      when 97
        # at line 1:623: DOC
        doc!

      when 98
        # at line 1:627: STRING
        string!

      when 99
        # at line 1:634: NUMBER
        number!

      when 100
        # at line 1:641: NEWLINE
        newline!

      when 101
        # at line 1:649: IVAR
        ivar!

      when 102
        # at line 1:654: ID
        id!

      when 103
        # at line 1:657: WS
        ws!

      when 104
        # at line 1:660: EJS
        ejs!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA8 < ANTLR3::DFA
      EOT = unpack( 10, -1 )
      EOF = unpack( 10, -1 )
      MIN = unpack( 1, 0, 2, -1, 2, 0, 1, -1, 2, 0, 1, -1, 1, 0 )
      MAX = unpack( 1, -1, 2, -1, 1, -1, 1, 0, 1, -1, 1, -1, 1, 0, 1, -1, 
                    1, 0 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 2, -1, 1, 4, 2, -1, 1, 3, 1, -1 )
      SPECIAL = unpack( 1, 5, 2, -1, 1, 1, 1, 3, 1, -1, 1, 4, 1, 0, 1, -1, 
                        1, 2 )
      TRANSITION = [
        unpack( 10, 1, 1, -1, 2, 1, 1, -1, 21, 1, 1, 3, 6, 1, 1, -1, 4, 
                1, 1, -1, 44, 1, 1, 2, 65443, 1 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 5, 1, -1, 2, 5, 1, -1, 22, 5, 1, 7, 1, 6, 26, 5, 1, 
                 6, 58, 5, 1, 4, 65412, 5 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack( 10, 5, 1, -1, 2, 5, 1, -1, 22, 5, 1, 9, 28, 5, 26, 9, 4, 
                 5, 1, 9, 1, 5, 26, 9, 65413, 5 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack( 1, -1 )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 8
      

      def description
        <<-'__dfa_description__'.strip!
          871:5: (~ ( '/' | '*' | '\\\\' | '\\r' | '\\n' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )
        __dfa_description__
      end
    end
    class DFA9 < ANTLR3::DFA
      EOT = unpack( 11, -1 )
      EOF = unpack( 11, -1 )
      MIN = unpack( 1, 0, 3, -1, 1, 0, 1, -1, 3, 0, 1, -1, 1, 0 )
      MAX = unpack( 1, -1, 3, -1, 1, -1, 1, -1, 1, 0, 1, -1, 1, 0, 1, -1, 
                    1, 0 )
      ACCEPT = unpack( 1, -1, 1, 5, 1, 1, 1, 2, 1, -1, 1, 4, 3, -1, 1, 3, 
                       1, -1 )
      SPECIAL = unpack( 1, 0, 3, -1, 1, 5, 1, -1, 1, 2, 1, 4, 1, 3, 1, -1, 
                        1, 1 )
      TRANSITION = [
        unpack( 10, 2, 1, -1, 2, 2, 1, -1, 21, 2, 1, 4, 11, 2, 1, 1, 44, 
                2, 1, 3, 65443, 2 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 5, 1, -1, 2, 5, 1, -1, 22, 5, 1, 8, 1, 7, 26, 5, 1, 
                 7, 58, 5, 1, 6, 65412, 5 ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 10, 5, 1, -1, 2, 5, 1, -1, 22, 5, 1, 10, 28, 5, 26, 10, 
                 4, 5, 1, 10, 1, 5, 26, 10, 65413, 5 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack( 1, -1 )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 9
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 876:5: (~ ( '/' | '\\\\' | '\\r' | '\\n' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )*
        __dfa_description__
      end
    end
    class DFA13 < ANTLR3::DFA
      EOT = unpack( 11, -1 )
      EOF = unpack( 11, -1 )
      MIN = unpack( 1, 0, 3, -1, 1, 0, 1, -1, 3, 0, 1, -1, 1, 0 )
      MAX = unpack( 1, -1, 3, -1, 1, -1, 1, -1, 1, 0, 1, -1, 1, 0, 1, -1, 
                    1, 0 )
      ACCEPT = unpack( 1, -1, 1, 5, 1, 1, 1, 2, 1, -1, 1, 4, 3, -1, 1, 3, 
                       1, -1 )
      SPECIAL = unpack( 1, 3, 3, -1, 1, 0, 1, -1, 1, 2, 1, 4, 1, 5, 1, -1, 
                        1, 1 )
      TRANSITION = [
        unpack( 35, 2, 1, 4, 56, 2, 1, 3, 3, 2, 1, 1, 65439, 2 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 36, 5, 1, 8, 1, 7, 26, 5, 1, 7, 58, 5, 1, 6, 65412, 5 ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 36, 5, 1, 10, 28, 5, 26, 10, 4, 5, 1, 10, 1, 5, 26, 10, 
                 65413, 5 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack( 1, -1 )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 13
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 888:5: (~ ( '`' | '\\\\' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )*
        __dfa_description__
      end
    end
    class DFA15 < ANTLR3::DFA
      EOT = unpack( 11, -1 )
      EOF = unpack( 11, -1 )
      MIN = unpack( 1, 0, 3, -1, 1, 0, 1, -1, 3, 0, 1, -1, 1, 0 )
      MAX = unpack( 1, -1, 3, -1, 1, -1, 1, -1, 1, 0, 1, -1, 1, 0, 1, -1, 
                    1, 0 )
      ACCEPT = unpack( 1, -1, 1, 5, 1, 1, 1, 2, 1, -1, 1, 4, 3, -1, 1, 3, 
                       1, -1 )
      SPECIAL = unpack( 1, 5, 3, -1, 1, 4, 1, -1, 1, 1, 1, 3, 1, 2, 1, -1, 
                        1, 0 )
      TRANSITION = [
        unpack( 34, 2, 1, 1, 1, 4, 56, 2, 1, 3, 65443, 2 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 36, 5, 1, 8, 1, 7, 26, 5, 1, 7, 58, 5, 1, 6, 65412, 5 ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack( 36, 5, 1, 10, 28, 5, 26, 10, 4, 5, 1, 10, 1, 5, 26, 10, 
                 65413, 5 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack( 1, -1 )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 15
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 899:5: (~ ( '\"' | '\\\\' | '#' ) | '\\\\' . | {...}? => INTERPOLATION | '#' )*
        __dfa_description__
      end
    end
    class DFA28 < ANTLR3::DFA
      EOT = unpack( 1, -1, 1, 2, 1, -1, 1, 2, 2, -1 )
      EOF = unpack( 6, -1 )
      MIN = unpack( 2, 46, 1, -1, 1, 46, 2, -1 )
      MAX = unpack( 1, 57, 1, 120, 1, -1, 1, 57, 2, -1 )
      ACCEPT = unpack( 2, -1, 1, 2, 1, -1, 1, 3, 1, 1 )
      SPECIAL = unpack( 6, -1 )
      TRANSITION = [
        unpack( 1, 2, 1, -1, 1, 1, 9, 3 ),
        unpack( 1, 5, 1, -1, 10, 3, 30, -1, 1, 4, 31, -1, 1, 4 ),
        unpack(  ),
        unpack( 1, 5, 1, -1, 10, 3 ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 28
      

      def description
        <<-'__dfa_description__'.strip!
          907:1: NUMBER : ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ )? | ( '.' )? ( '0' .. '9' )+ ( ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ )? | '0' ( 'x' | 'X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+ );
        __dfa_description__
      end
    end
    class DFA33 < ANTLR3::DFA
      EOT = unpack( 9, -1 )
      EOF = unpack( 9, -1 )
      MIN = unpack( 1, 9, 1, -1, 1, 42, 2, -1, 3, 0, 1, -1 )
      MAX = unpack( 1, 160, 1, -1, 1, 47, 2, -1, 3, -1, 1, -1 )
      ACCEPT = unpack( 1, -1, 1, 2, 1, -1, 2, 1, 3, -1, 1, 1 )
      SPECIAL = unpack( 5, -1, 1, 0, 1, 1, 1, 2, 1, -1 )
      TRANSITION = [
        unpack( 2, 3, 1, -1, 2, 3, 18, -1, 1, 3, 3, -1, 1, 1, 3, -1, 1, 
                1, 6, -1, 1, 2, 17, -1, 26, 1, 4, -1, 1, 1, 1, -1, 26, 1, 
                37, -1, 1, 3 ),
        unpack(  ),
        unpack( 1, 5, 4, -1, 1, 4 ),
        unpack(  ),
        unpack(  ),
        unpack( 42, 7, 1, 6, 65493, 7 ),
        unpack( 42, 7, 1, 6, 4, 7, 1, 8, 65488, 7 ),
        unpack( 42, 7, 1, 6, 65493, 7 ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 33
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 932:11: ( IGNORABLE_NL )*
        __dfa_description__
      end
    end
    class DFA58 < ANTLR3::DFA
      EOT = unpack( 15, -1 )
      EOF = unpack( 15, -1 )
      MIN = unpack( 1, 0, 14, -1 )
      MAX = unpack( 1, -1, 14, -1 )
      ACCEPT = unpack( 1, -1, 1, 2, 6, -1, 6, 1, 1, -1 )
      SPECIAL = unpack( 1, 0, 14, -1 )
      TRANSITION = [
        unpack( 9, 1, 1, 9, 1, -1, 1, 1, 1, 10, 1, -1, 18, 1, 1, 11, 14, 
                1, 1, 8, 44, 1, 1, 13, 67, 1, 1, 12, 65375, 1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
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
      
      @decision = 58
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 974:5: ( IGNORABLE )*
        __dfa_description__
      end
    end
    class DFA72 < ANTLR3::DFA
      EOT = unpack( 1, -1, 1, 53, 1, 56, 1, 49, 1, 59, 1, -1, 1, 63, 1, 
                    -1, 1, 65, 1, 49, 1, -1, 1, 49, 1, 74, 3, 49, 1, -1, 
                    1, 49, 4, -1, 1, 85, 1, -1, 2, 49, 1, -1, 1, 90, 2, 
                    49, 1, 95, 1, -1, 1, 97, 2, 49, 1, 103, 4, 49, 1, -1, 
                    1, 49, 13, -1, 1, 117, 1, -1, 1, 49, 6, -1, 1, 120, 
                    1, -1, 1, 121, 1, 123, 4, 49, 3, -1, 3, 49, 1, 132, 
                    4, 49, 1, -1, 1, 139, 1, -1, 3, 49, 2, -1, 4, 49, 1, 
                    -1, 1, 150, 1, -1, 3, 49, 1, 157, 2, -1, 11, 49, 1, 
                    171, 2, -1, 1, 172, 3, -1, 1, 49, 1, -1, 1, 174, 5, 
                    49, 1, 183, 1, 49, 1, -1, 5, 49, 2, -1, 1, 191, 1, 49, 
                    1, 193, 4, 49, 1, 198, 1, 49, 2, -1, 1, 200, 4, 49, 
                    2, -1, 3, 49, 1, 208, 1, 49, 1, 210, 6, 49, 3, -1, 1, 
                    49, 1, -1, 1, 218, 1, 219, 1, -1, 5, 49, 1, -1, 1, 49, 
                    1, 226, 5, 49, 1, -1, 1, 49, 1, -1, 1, 49, 1, 234, 1, 
                    49, 1, 236, 1, -1, 1, 49, 1, -1, 1, 238, 6, 49, 1, -1, 
                    1, 49, 1, -1, 1, 246, 1, 49, 1, 248, 4, 49, 2, -1, 1, 
                    49, 1, 253, 4, 49, 1, -1, 1, 258, 1, 259, 1, 49, 1, 
                    261, 2, 49, 1, 264, 1, -1, 1, 265, 1, -1, 1, 49, 1, 
                    -1, 2, 49, 1, 269, 1, 270, 3, 49, 1, -1, 1, 274, 1, 
                    -1, 1, 275, 1, 49, 1, 277, 1, 49, 1, -1, 1, 279, 2, 
                    49, 1, 282, 2, -1, 1, 49, 1, -1, 1, 284, 1, 285, 2, 
                    -1, 1, 286, 1, 49, 1, 288, 2, -1, 3, 49, 2, -1, 1, 292, 
                    1, -1, 1, 49, 1, -1, 1, 49, 1, 295, 1, -1, 1, 49, 3, 
                    -1, 1, 49, 1, -1, 1, 298, 1, 299, 1, 49, 1, -1, 1, 49, 
                    2, -1, 1, 302, 1, 49, 2, -1, 1, 304, 1, 49, 1, -1, 1, 
                    307, 1, -1, 1, 308, 3, -1 )
      EOF = unpack( 309, -1 )
      MIN = unpack( 1, 9, 1, 38, 1, 61, 1, 101, 1, 61, 1, -1, 1, 45, 1, 
                    -1, 1, 61, 1, 102, 1, -1, 1, 97, 1, 43, 1, 114, 2, 101, 
                    1, -1, 1, 97, 4, -1, 1, 60, 1, -1, 2, 101, 1, -1, 1, 
                    61, 1, 97, 1, 104, 1, 48, 1, -1, 1, 61, 1, 101, 1, 110, 
                    1, 61, 2, 97, 1, 104, 1, 105, 1, -1, 1, 98, 13, -1, 
                    1, 61, 1, -1, 1, 116, 6, -1, 1, 61, 1, -1, 2, 36, 1, 
                    100, 1, 99, 2, 115, 3, -1, 1, 101, 1, 116, 1, 102, 1, 
                    36, 1, 115, 1, 110, 1, 97, 1, 114, 1, -1, 1, 61, 1, 
                    -1, 1, 116, 1, 105, 1, 116, 2, -1, 1, 99, 1, 105, 1, 
                    117, 1, 112, 1, -1, 1, 61, 1, -1, 1, 119, 1, 108, 1, 
                    100, 1, 61, 2, -1, 1, 108, 1, 110, 1, 114, 1, 110, 1, 
                    114, 2, 105, 1, 116, 1, 101, 1, 106, 1, 101, 1, 61, 
                    2, -1, 1, 36, 3, -1, 1, 116, 1, -1, 1, 36, 1, 104, 1, 
                    101, 1, 9, 1, 97, 1, 117, 1, 36, 1, 101, 1, -1, 1, 101, 
                    1, 99, 2, 115, 1, 111, 2, -1, 1, 36, 1, 116, 1, 36, 
                    1, 114, 1, 115, 1, 111, 1, 101, 1, 36, 1, 101, 2, -1, 
                    1, 36, 1, 108, 2, 101, 1, 105, 2, -1, 1, 115, 1, 97, 
                    1, 101, 1, 36, 1, 99, 1, 36, 1, 100, 1, 108, 1, 104, 
                    1, 108, 1, 101, 1, 114, 3, -1, 1, 97, 1, -1, 2, 36, 
                    1, -1, 1, 9, 1, 107, 1, 114, 1, 110, 1, 117, 1, -1, 
                    1, 116, 1, 36, 1, 104, 1, 116, 1, 105, 1, 115, 1, 109, 
                    1, -1, 1, 99, 1, -1, 1, 111, 1, 36, 1, 119, 1, 36, 1, 
                    -1, 1, 111, 1, -1, 1, 36, 1, 102, 1, 115, 1, 108, 1, 
                    101, 1, 108, 1, 102, 1, -1, 1, 116, 1, -1, 1, 36, 1, 
                    101, 1, 36, 1, 100, 1, 99, 1, 97, 1, 110, 2, -1, 1, 
                    9, 1, 36, 1, 110, 1, 101, 1, 108, 1, 101, 1, -1, 2, 
                    36, 1, 110, 1, 36, 1, 101, 1, 104, 1, 36, 1, -1, 1, 
                    36, 1, -1, 1, 102, 1, -1, 1, 105, 1, 115, 2, 36, 1, 
                    108, 1, 111, 1, 105, 1, -1, 1, 36, 1, -1, 1, 36, 1, 
                    116, 1, 36, 1, 99, 1, -1, 1, 36, 1, 100, 1, 116, 1, 
                    36, 2, -1, 1, 117, 1, -1, 2, 36, 2, -1, 1, 36, 1, 110, 
                    1, 36, 2, -1, 1, 121, 1, 120, 1, 111, 2, -1, 1, 36, 
                    1, -1, 1, 101, 1, -1, 1, 63, 1, 36, 1, -1, 1, 101, 3, 
                    -1, 1, 101, 1, -1, 2, 36, 1, 110, 1, -1, 1, 111, 2, 
                    -1, 1, 36, 1, 100, 2, -1, 1, 36, 1, 102, 1, -1, 1, 36, 
                    1, -1, 1, 36, 3, -1 )
      MAX = unpack( 1, 160, 1, 61, 1, 62, 1, 101, 1, 61, 1, -1, 1, 62, 1, 
                    -1, 1, 61, 1, 110, 1, -1, 1, 110, 1, 61, 1, 114, 1, 
                    101, 1, 111, 1, -1, 1, 111, 4, -1, 1, 61, 1, -1, 1, 
                    119, 1, 101, 1, -1, 1, 61, 1, 97, 1, 121, 1, 57, 1, 
                    -1, 1, 61, 1, 117, 1, 110, 1, 124, 1, 117, 1, 111, 2, 
                    105, 1, -1, 1, 112, 13, -1, 1, 62, 1, -1, 1, 116, 6, 
                    -1, 1, 61, 1, -1, 2, 122, 1, 100, 1, 99, 2, 115, 3, 
                    -1, 1, 101, 1, 116, 1, 108, 1, 122, 1, 116, 1, 110, 
                    1, 97, 1, 114, 1, -1, 1, 61, 1, -1, 1, 116, 1, 105, 
                    1, 116, 2, -1, 1, 99, 1, 114, 1, 121, 1, 112, 1, -1, 
                    1, 61, 1, -1, 1, 119, 1, 108, 1, 116, 1, 61, 2, -1, 
                    1, 108, 2, 114, 1, 110, 1, 114, 2, 105, 1, 116, 1, 101, 
                    1, 106, 1, 101, 1, 61, 2, -1, 1, 122, 3, -1, 1, 116, 
                    1, -1, 1, 122, 1, 104, 1, 101, 1, 160, 1, 97, 1, 117, 
                    1, 122, 1, 101, 1, -1, 1, 101, 1, 99, 1, 116, 1, 115, 
                    1, 111, 2, -1, 1, 122, 1, 116, 1, 122, 1, 114, 1, 115, 
                    1, 111, 1, 101, 1, 122, 1, 101, 2, -1, 1, 122, 1, 108, 
                    2, 101, 1, 105, 2, -1, 1, 115, 1, 97, 1, 101, 1, 122, 
                    1, 99, 1, 122, 1, 100, 1, 108, 1, 104, 1, 108, 1, 101, 
                    1, 114, 3, -1, 1, 97, 1, -1, 2, 122, 1, -1, 1, 160, 
                    1, 107, 1, 114, 1, 110, 1, 117, 1, -1, 1, 116, 1, 122, 
                    1, 104, 1, 116, 1, 105, 1, 115, 1, 109, 1, -1, 1, 99, 
                    1, -1, 1, 111, 1, 122, 1, 119, 1, 122, 1, -1, 1, 111, 
                    1, -1, 1, 122, 1, 102, 1, 115, 1, 108, 1, 101, 1, 108, 
                    1, 102, 1, -1, 1, 116, 1, -1, 1, 122, 1, 101, 1, 122, 
                    1, 100, 1, 99, 1, 97, 1, 110, 2, -1, 1, 160, 1, 122, 
                    1, 110, 1, 101, 1, 108, 1, 101, 1, -1, 2, 122, 1, 110, 
                    1, 122, 1, 101, 1, 104, 1, 122, 1, -1, 1, 122, 1, -1, 
                    1, 102, 1, -1, 1, 105, 1, 115, 2, 122, 1, 108, 1, 111, 
                    1, 105, 1, -1, 1, 122, 1, -1, 1, 122, 1, 116, 1, 122, 
                    1, 99, 1, -1, 1, 122, 1, 100, 1, 116, 1, 122, 2, -1, 
                    1, 117, 1, -1, 2, 122, 2, -1, 1, 122, 1, 110, 1, 122, 
                    2, -1, 1, 121, 1, 120, 1, 111, 2, -1, 1, 122, 1, -1, 
                    1, 101, 1, -1, 1, 63, 1, 122, 1, -1, 1, 101, 3, -1, 
                    1, 101, 1, -1, 2, 122, 1, 110, 1, -1, 1, 111, 2, -1, 
                    1, 122, 1, 100, 2, -1, 1, 122, 1, 102, 1, -1, 1, 122, 
                    1, -1, 1, 122, 3, -1 )
      ACCEPT = unpack( 5, -1, 1, 9, 1, -1, 1, 11, 2, -1, 1, 14, 5, -1, 1, 
                       22, 1, -1, 1, 27, 1, 28, 1, 30, 1, 31, 1, -1, 1, 
                       34, 2, -1, 1, 41, 4, -1, 1, 56, 8, -1, 1, 88, 1, 
                       -1, 1, 95, 1, 96, 1, 97, 1, 98, 1, 99, 1, 100, 1, 
                       101, 1, 102, 1, 103, 1, 2, 1, 4, 1, 1, 1, 3, 1, -1, 
                       1, 6, 1, -1, 1, 8, 1, 7, 1, 10, 1, 40, 1, 53, 1, 
                       50, 1, -1, 1, 12, 6, -1, 1, 17, 1, 86, 1, 84, 8, 
                       -1, 1, 33, 1, -1, 1, 36, 3, -1, 1, 47, 1, 44, 4, 
                       -1, 1, 55, 1, -1, 1, 64, 4, -1, 1, 81, 1, 79, 12, 
                       -1, 1, 32, 1, 24, 1, -1, 1, 71, 1, 69, 1, 13, 1, 
                       -1, 1, 15, 8, -1, 1, 52, 5, -1, 1, 46, 1, 43, 9, 
                       -1, 1, 60, 1, 58, 5, -1, 1, 74, 1, 72, 12, -1, 1, 
                       29, 1, 26, 1, 5, 1, -1, 1, 16, 2, -1, 1, 104, 5, 
                       -1, 1, 89, 7, -1, 1, 37, 1, -1, 1, 39, 4, -1, 1, 
                       59, 1, -1, 1, 62, 7, -1, 1, 78, 1, -1, 1, 75, 7, 
                       -1, 1, 63, 1, 66, 6, -1, 1, 23, 7, -1, 1, 51, 1, 
                       -1, 1, 57, 1, -1, 1, 67, 7, -1, 1, 77, 1, -1, 1, 
                       82, 4, -1, 1, 18, 4, -1, 1, 25, 1, 35, 1, -1, 1, 
                       90, 2, -1, 1, 48, 1, 54, 3, -1, 1, 70, 1, 73, 3, 
                       -1, 1, 80, 1, 85, 1, -1, 1, 92, 1, -1, 1, 20, 2, 
                       -1, 1, 45, 1, -1, 1, 94, 1, 49, 1, 61, 1, -1, 1, 
                       68, 3, -1, 1, 91, 1, -1, 1, 21, 1, 42, 2, -1, 1, 
                       76, 1, 93, 2, -1, 1, 38, 1, -1, 1, 83, 1, -1, 1, 
                       87, 1, 65, 1, 19 )
      SPECIAL = unpack( 309, -1 )
      TRANSITION = [
        unpack( 1, 50, 1, 47, 1, -1, 1, 50, 1, 47, 18, -1, 1, 50, 1, 32, 
                1, 45, 1, 40, 1, 49, 1, 42, 1, 1, 1, 45, 1, 26, 1, 16, 1, 
                27, 1, 12, 1, 20, 1, 6, 1, 30, 1, 43, 10, 46, 1, 18, 1, 
                23, 1, 22, 1, 8, 1, 2, 1, 5, 1, 48, 26, 49, 1, 21, 1, -1, 
                1, 10, 1, 4, 1, 49, 1, 44, 1, 49, 1, 13, 1, 17, 1, 15, 1, 
                11, 1, 36, 1, 3, 1, 49, 1, 9, 2, 49, 1, 25, 1, 28, 1, 33, 
                1, 41, 2, 49, 1, 14, 1, 24, 1, 29, 1, 34, 1, 37, 1, 38, 
                1, 49, 1, 39, 1, 49, 1, 19, 1, 35, 1, 7, 1, 31, 33, -1, 
                1, 50 ),
        unpack( 1, 52, 22, -1, 1, 51 ),
        unpack( 1, 54, 1, 55 ),
        unpack( 1, 57 ),
        unpack( 1, 58 ),
        unpack(  ),
        unpack( 1, 61, 15, -1, 1, 62, 1, 60 ),
        unpack(  ),
        unpack( 1, 64 ),
        unpack( 1, 66, 7, -1, 1, 67 ),
        unpack(  ),
        unpack( 1, 69, 8, -1, 1, 71, 1, -1, 1, 70, 1, -1, 1, 68 ),
        unpack( 1, 72, 17, -1, 1, 73 ),
        unpack( 1, 75 ),
        unpack( 1, 76 ),
        unpack( 1, 77, 9, -1, 1, 78 ),
        unpack(  ),
        unpack( 1, 79, 6, -1, 1, 82, 3, -1, 1, 81, 2, -1, 1, 80 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 84, 1, 83 ),
        unpack(  ),
        unpack( 1, 86, 17, -1, 1, 87 ),
        unpack( 1, 88 ),
        unpack(  ),
        unpack( 1, 89 ),
        unpack( 1, 91 ),
        unpack( 1, 92, 9, -1, 1, 93, 6, -1, 1, 94 ),
        unpack( 10, 46 ),
        unpack(  ),
        unpack( 1, 96 ),
        unpack( 1, 98, 15, -1, 1, 99 ),
        unpack( 1, 100 ),
        unpack( 1, 102, 62, -1, 1, 101 ),
        unpack( 1, 104, 7, -1, 1, 105, 5, -1, 1, 106, 5, -1, 1, 107 ),
        unpack( 1, 108, 13, -1, 1, 109 ),
        unpack( 1, 110, 1, 111 ),
        unpack( 1, 112 ),
        unpack(  ),
        unpack( 1, 113, 13, -1, 1, 114 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 116, 1, 115 ),
        unpack(  ),
        unpack( 1, 118 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 119 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 18, 49, 1, 122, 7, 49 ),
        unpack( 1, 124 ),
        unpack( 1, 125 ),
        unpack( 1, 126 ),
        unpack( 1, 127 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 128 ),
        unpack( 1, 129 ),
        unpack( 1, 130, 5, -1, 1, 131 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 133, 1, 134 ),
        unpack( 1, 135 ),
        unpack( 1, 136 ),
        unpack( 1, 137 ),
        unpack(  ),
        unpack( 1, 138 ),
        unpack(  ),
        unpack( 1, 140 ),
        unpack( 1, 141 ),
        unpack( 1, 142 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 143 ),
        unpack( 1, 144, 8, -1, 1, 145 ),
        unpack( 1, 146, 3, -1, 1, 147 ),
        unpack( 1, 148 ),
        unpack(  ),
        unpack( 1, 149 ),
        unpack(  ),
        unpack( 1, 151 ),
        unpack( 1, 152 ),
        unpack( 1, 153, 7, -1, 1, 154, 7, -1, 1, 155 ),
        unpack( 1, 156 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 158 ),
        unpack( 1, 159, 3, -1, 1, 160 ),
        unpack( 1, 161 ),
        unpack( 1, 162 ),
        unpack( 1, 163 ),
        unpack( 1, 164 ),
        unpack( 1, 165 ),
        unpack( 1, 166 ),
        unpack( 1, 167 ),
        unpack( 1, 168 ),
        unpack( 1, 169 ),
        unpack( 1, 170 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 173 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 175 ),
        unpack( 1, 176 ),
        unpack( 2, 177, 1, -1, 2, 177, 18, -1, 1, 177, 3, -1, 1, 178, 3, 
                 -1, 1, 177, 6, -1, 1, 177, 17, -1, 26, 178, 4, -1, 1, 178, 
                 1, -1, 26, 178, 37, -1, 1, 177 ),
        unpack( 1, 179 ),
        unpack( 1, 180 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 1, 182, 7, 49, 1, 181, 17, 49 ),
        unpack( 1, 184 ),
        unpack(  ),
        unpack( 1, 185 ),
        unpack( 1, 186 ),
        unpack( 1, 187, 1, 188 ),
        unpack( 1, 189 ),
        unpack( 1, 190 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 192 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 194 ),
        unpack( 1, 195 ),
        unpack( 1, 196 ),
        unpack( 1, 197 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 199 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 201 ),
        unpack( 1, 202 ),
        unpack( 1, 203 ),
        unpack( 1, 204 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 205 ),
        unpack( 1, 206 ),
        unpack( 1, 207 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 209 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 211 ),
        unpack( 1, 212 ),
        unpack( 1, 213 ),
        unpack( 1, 214 ),
        unpack( 1, 215 ),
        unpack( 1, 216 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 217 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack( 2, 177, 1, -1, 2, 177, 18, -1, 1, 177, 3, -1, 1, 220, 3, 
                 -1, 1, 177, 6, -1, 1, 177, 10, 220, 7, -1, 26, 220, 4, 
                 -1, 1, 220, 1, -1, 26, 220, 37, -1, 1, 177 ),
        unpack( 1, 221 ),
        unpack( 1, 222 ),
        unpack( 1, 223 ),
        unpack( 1, 224 ),
        unpack(  ),
        unpack( 1, 225 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 227 ),
        unpack( 1, 228 ),
        unpack( 1, 229 ),
        unpack( 1, 230 ),
        unpack( 1, 231 ),
        unpack(  ),
        unpack( 1, 232 ),
        unpack(  ),
        unpack( 1, 233 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 235 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack( 1, 237 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 239 ),
        unpack( 1, 240 ),
        unpack( 1, 241 ),
        unpack( 1, 242 ),
        unpack( 1, 243 ),
        unpack( 1, 244 ),
        unpack(  ),
        unpack( 1, 245 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 247 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 249 ),
        unpack( 1, 250 ),
        unpack( 1, 251 ),
        unpack( 1, 252 ),
        unpack(  ),
        unpack(  ),
        unpack( 2, 177, 1, -1, 2, 177, 18, -1, 1, 177, 3, -1, 1, 220, 3, 
                 -1, 1, 177, 6, -1, 1, 177, 10, 220, 7, -1, 26, 220, 4, 
                 -1, 1, 220, 1, -1, 26, 220, 37, -1, 1, 177 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 254 ),
        unpack( 1, 255 ),
        unpack( 1, 256 ),
        unpack( 1, 257 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 260 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 262 ),
        unpack( 1, 263 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack( 1, 266 ),
        unpack(  ),
        unpack( 1, 267 ),
        unpack( 1, 268 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 271 ),
        unpack( 1, 272 ),
        unpack( 1, 273 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 276 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 278 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 280 ),
        unpack( 1, 281 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 283 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 287 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 289 ),
        unpack( 1, 290 ),
        unpack( 1, 291 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack( 1, 293 ),
        unpack(  ),
        unpack( 1, 294 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack( 1, 296 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 297 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 300 ),
        unpack(  ),
        unpack( 1, 301 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 303 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack( 1, 305 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 5, -1, 1, 306, 1, -1, 26, 49, 4, 
                 -1, 1, 49, 1, -1, 26, 49 ),
        unpack(  ),
        unpack( 1, 49, 11, -1, 10, 49, 7, -1, 26, 49, 4, -1, 1, 49, 1, 
                 -1, 26, 49 ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 72
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( AMP | AMP_ASGN | GEQ | AND | GET | GREATER | HAT | HAT_ASGN | QMARK | ARROW | RBRACE | ASGN | IF | RBRACK | IN | BL_END | INCR | BREAK | INSTANCEOF | RETURN | IS_DEFINED | RPAREN | CASE | RSHIFT | CATCH | RSHIFT3 | COLON | LBRACE | RSHIFT3_ASGN | COMMA | LBRACK | RSHIFT_ASGN | LEQ | SEMI | CONST | LESS | SET | CONTINUE | LET | DECR | LPAREN | DEFAULT | LSHIFT | STAR | DELETE | LSHIFT_ASGN | STAR_ASGN | MACRO | SWITCH | MINUS | THIS | DO | MINUS_ASGN | THROW | DOT | TILDE | TRUE | NEQ | TRY | NEQQ | TYPEOF | NEW | EACH | NOT | UNDEFINED | ELSE | NULL | UNLESS | EQ | UNTIL | EQQ | OR | FALSE | OR_ASGN | VAR | FINALLY | VOID | FOR | PIPE | WHILE | PIPE_ASGN | WITH | FUNCTION | PLUS | YIELD | PLUS_ASGN | IS_UNDEFINED | POUND | DEF | CLASS_DEF | OBJECT_DEF | T__148 | T__149 | T__150 | MOD | SLASH | DOC | STRING | NUMBER | NEWLINE | IVAR | ID | WS | EJS );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa8 = DFA8.new( self, 8 ) do |s|
        case s
        when 0
          look_8_7 = @input.peek
          index_8_7 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 8
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_8_7 )

        when 1
          look_8_3 = @input.peek
          s = -1
          if ( look_8_3 == 0x7b )
            s = 4
          elsif ( look_8_3.between?( 0x0, 0x9 ) || look_8_3.between?( 0xb, 0xc ) || look_8_3.between?( 0xe, 0x23 ) || look_8_3.between?( 0x26, 0x3f ) || look_8_3.between?( 0x41, 0x7a ) || look_8_3.between?( 0x7c, 0xffff ) )
            s = 5
          elsif ( look_8_3 == 0x25 || look_8_3 == 0x40 )
            s = 6
          elsif ( look_8_3 == 0x24 )
            s = 7
          end

        when 2
          look_8_9 = @input.peek
          index_8_9 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 8
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_8_9 )

        when 3
          look_8_4 = @input.peek
          index_8_4 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 8
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_8_4 )

        when 4
          look_8_6 = @input.peek
          s = -1
          if ( look_8_6.between?( 0x0, 0x9 ) || look_8_6.between?( 0xb, 0xc ) || look_8_6.between?( 0xe, 0x23 ) || look_8_6.between?( 0x25, 0x40 ) || look_8_6.between?( 0x5b, 0x5e ) || look_8_6 == 0x60 || look_8_6.between?( 0x7b, 0xffff ) )
            s = 5
          elsif ( look_8_6 == 0x24 || look_8_6.between?( 0x41, 0x5a ) || look_8_6 == 0x5f || look_8_6.between?( 0x61, 0x7a ) )
            s = 9
          end

        when 5
          look_8_0 = @input.peek
          s = -1
          if ( look_8_0.between?( 0x0, 0x9 ) || look_8_0.between?( 0xb, 0xc ) || look_8_0.between?( 0xe, 0x22 ) || look_8_0.between?( 0x24, 0x29 ) || look_8_0.between?( 0x2b, 0x2e ) || look_8_0.between?( 0x30, 0x5b ) || look_8_0.between?( 0x5d, 0xffff ) )
            s = 1
          elsif ( look_8_0 == 0x5c )
            s = 2
          elsif ( look_8_0 == 0x23 )
            s = 3
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa8.description, 8, s, input )
          @dfa8.error( nva )
          raise nva
        end
        
        s
      end
      @dfa9 = DFA9.new( self, 9 ) do |s|
        case s
        when 0
          look_9_0 = @input.peek
          s = -1
          if ( look_9_0 == 0x2f )
            s = 1
          elsif ( look_9_0.between?( 0x0, 0x9 ) || look_9_0.between?( 0xb, 0xc ) || look_9_0.between?( 0xe, 0x22 ) || look_9_0.between?( 0x24, 0x2e ) || look_9_0.between?( 0x30, 0x5b ) || look_9_0.between?( 0x5d, 0xffff ) )
            s = 2
          elsif ( look_9_0 == 0x5c )
            s = 3
          elsif ( look_9_0 == 0x23 )
            s = 4
          end

        when 1
          look_9_10 = @input.peek
          index_9_10 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 9
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_9_10 )

        when 2
          look_9_6 = @input.peek
          index_9_6 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 9
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_9_6 )

        when 3
          look_9_8 = @input.peek
          index_9_8 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 9
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_9_8 )

        when 4
          look_9_7 = @input.peek
          s = -1
          if ( look_9_7.between?( 0x0, 0x9 ) || look_9_7.between?( 0xb, 0xc ) || look_9_7.between?( 0xe, 0x23 ) || look_9_7.between?( 0x25, 0x40 ) || look_9_7.between?( 0x5b, 0x5e ) || look_9_7 == 0x60 || look_9_7.between?( 0x7b, 0xffff ) )
            s = 5
          elsif ( look_9_7 == 0x24 || look_9_7.between?( 0x41, 0x5a ) || look_9_7 == 0x5f || look_9_7.between?( 0x61, 0x7a ) )
            s = 10
          end

        when 5
          look_9_4 = @input.peek
          s = -1
          if ( look_9_4.between?( 0x0, 0x9 ) || look_9_4.between?( 0xb, 0xc ) || look_9_4.between?( 0xe, 0x23 ) || look_9_4.between?( 0x26, 0x3f ) || look_9_4.between?( 0x41, 0x7a ) || look_9_4.between?( 0x7c, 0xffff ) )
            s = 5
          elsif ( look_9_4 == 0x7b )
            s = 6
          elsif ( look_9_4 == 0x25 || look_9_4 == 0x40 )
            s = 7
          elsif ( look_9_4 == 0x24 )
            s = 8
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa9.description, 9, s, input )
          @dfa9.error( nva )
          raise nva
        end
        
        s
      end
      @dfa13 = DFA13.new( self, 13 ) do |s|
        case s
        when 0
          look_13_4 = @input.peek
          s = -1
          if ( look_13_4.between?( 0x0, 0x23 ) || look_13_4.between?( 0x26, 0x3f ) || look_13_4.between?( 0x41, 0x7a ) || look_13_4.between?( 0x7c, 0xffff ) )
            s = 5
          elsif ( look_13_4 == 0x7b )
            s = 6
          elsif ( look_13_4 == 0x25 || look_13_4 == 0x40 )
            s = 7
          elsif ( look_13_4 == 0x24 )
            s = 8
          end

        when 1
          look_13_10 = @input.peek
          index_13_10 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 9
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_13_10 )

        when 2
          look_13_6 = @input.peek
          index_13_6 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 9
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_13_6 )

        when 3
          look_13_0 = @input.peek
          s = -1
          if ( look_13_0 == 0x60 )
            s = 1
          elsif ( look_13_0.between?( 0x0, 0x22 ) || look_13_0.between?( 0x24, 0x5b ) || look_13_0.between?( 0x5d, 0x5f ) || look_13_0.between?( 0x61, 0xffff ) )
            s = 2
          elsif ( look_13_0 == 0x5c )
            s = 3
          elsif ( look_13_0 == 0x23 )
            s = 4
          end

        when 4
          look_13_7 = @input.peek
          s = -1
          if ( look_13_7 == 0x24 || look_13_7.between?( 0x41, 0x5a ) || look_13_7 == 0x5f || look_13_7.between?( 0x61, 0x7a ) )
            s = 10
          elsif ( look_13_7.between?( 0x0, 0x23 ) || look_13_7.between?( 0x25, 0x40 ) || look_13_7.between?( 0x5b, 0x5e ) || look_13_7 == 0x60 || look_13_7.between?( 0x7b, 0xffff ) )
            s = 5
          end

        when 5
          look_13_8 = @input.peek
          index_13_8 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 9
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_13_8 )

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa13.description, 13, s, input )
          @dfa13.error( nva )
          raise nva
        end
        
        s
      end
      @dfa15 = DFA15.new( self, 15 ) do |s|
        case s
        when 0
          look_15_10 = @input.peek
          index_15_10 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 9
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_15_10 )

        when 1
          look_15_6 = @input.peek
          index_15_6 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 9
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_15_6 )

        when 2
          look_15_8 = @input.peek
          index_15_8 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( (  at_interpolation?  ) )
            s = 9
          elsif ( true )
            s = 5
          end
           
          @input.seek( index_15_8 )

        when 3
          look_15_7 = @input.peek
          s = -1
          if ( look_15_7.between?( 0x0, 0x23 ) || look_15_7.between?( 0x25, 0x40 ) || look_15_7.between?( 0x5b, 0x5e ) || look_15_7 == 0x60 || look_15_7.between?( 0x7b, 0xffff ) )
            s = 5
          elsif ( look_15_7 == 0x24 || look_15_7.between?( 0x41, 0x5a ) || look_15_7 == 0x5f || look_15_7.between?( 0x61, 0x7a ) )
            s = 10
          end

        when 4
          look_15_4 = @input.peek
          s = -1
          if ( look_15_4.between?( 0x0, 0x23 ) || look_15_4.between?( 0x26, 0x3f ) || look_15_4.between?( 0x41, 0x7a ) || look_15_4.between?( 0x7c, 0xffff ) )
            s = 5
          elsif ( look_15_4 == 0x7b )
            s = 6
          elsif ( look_15_4 == 0x25 || look_15_4 == 0x40 )
            s = 7
          elsif ( look_15_4 == 0x24 )
            s = 8
          end

        when 5
          look_15_0 = @input.peek
          s = -1
          if ( look_15_0 == 0x22 )
            s = 1
          elsif ( look_15_0.between?( 0x0, 0x21 ) || look_15_0.between?( 0x24, 0x5b ) || look_15_0.between?( 0x5d, 0xffff ) )
            s = 2
          elsif ( look_15_0 == 0x5c )
            s = 3
          elsif ( look_15_0 == 0x23 )
            s = 4
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa15.description, 15, s, input )
          @dfa15.error( nva )
          raise nva
        end
        
        s
      end
      @dfa28 = DFA28.new( self, 28 )
      @dfa33 = DFA33.new( self, 33 ) do |s|
        case s
        when 0
          look_33_5 = @input.peek
          s = -1
          if ( look_33_5 == 0x2a )
            s = 6
          elsif ( look_33_5.between?( 0x0, 0x29 ) || look_33_5.between?( 0x2b, 0xffff ) )
            s = 7
          end

        when 1
          look_33_6 = @input.peek
          s = -1
          if ( look_33_6 == 0x2f )
            s = 8
          elsif ( look_33_6 == 0x2a )
            s = 6
          elsif ( look_33_6.between?( 0x0, 0x29 ) || look_33_6.between?( 0x2b, 0x2e ) || look_33_6.between?( 0x30, 0xffff ) )
            s = 7
          end

        when 2
          look_33_7 = @input.peek
          s = -1
          if ( look_33_7 == 0x2a )
            s = 6
          elsif ( look_33_7.between?( 0x0, 0x29 ) || look_33_7.between?( 0x2b, 0xffff ) )
            s = 7
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa33.description, 33, s, input )
          @dfa33.error( nva )
          raise nva
        end
        
        s
      end
      @dfa58 = DFA58.new( self, 58 ) do |s|
        case s
        when 0
          look_58_0 = @input.peek
          s = -1
          if ( look_58_0.between?( 0x0, 0x8 ) || look_58_0 == 0xb || look_58_0.between?( 0xe, 0x1f ) || look_58_0.between?( 0x21, 0x2e ) || look_58_0.between?( 0x30, 0x5b ) || look_58_0.between?( 0x5d, 0x9f ) || look_58_0.between?( 0xa1, 0xffff ) )
            s = 1
          elsif ( look_58_0 == 0x2f )
            s = 8
          elsif ( look_58_0 == 0x9 )
            s = 9
          elsif ( look_58_0 == 0xc )
            s = 10
          elsif ( look_58_0 == 0x20 )
            s = 11
          elsif ( look_58_0 == 0xa0 )
            s = 12
          elsif ( look_58_0 == 0x5c )
            s = 13
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa58.description, 58, s, input )
          @dfa58.error( nva )
          raise nva
        end
        
        s
      end
      @dfa72 = DFA72.new( self, 72 )

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end


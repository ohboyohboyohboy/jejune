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

require 'optparse'
require 'jejune'

module Jejune

module Options
  # the input encoding type; defaults to +nil+ (currently, not used)
  attr_accessor :encoding
  # the input stream used by the Main script; defaults to <tt>$stdin</tt>
  attr_accessor :input
  # a boolean flag indicating whether or not to run the Main
  # script in interactive mode; defaults to +false+
  attr_accessor :interactive
  attr_accessor :no_output
  attr_accessor :profile
  attr_accessor :debug_socket
  attr_accessor :ruby_prof
  
  def initialize( options = {} )
    @no_output    = options.fetch( :no_output, false )
    @profile      = options.fetch( :profile, false )
    @debug_socket = options.fetch( :debug_socket, false )
    @ruby_prof    = options.fetch( :ruby_prof, false )
    @encoding     = options.fetch( :encoding, nil )
    @interactive  = options.fetch( :interactive, false )
    @input        = options.fetch( :input, $stdin )
  end
  
  # constructs an OptionParser and parses the argument list provided by +argv+
  def parse_options( argv = ARGV )
    oparser = OptionParser.new do | o |
      o.separator 'Input Options:'
      
      o.on( '-i', '--input "text to process"', doc( <<-END ) ) { |val| @input = val }
      | a string to use as direct input to the recognizer
      END
      
      o.on( '-I', '--interactive', doc( <<-END ) ) { @interactive = true }
      | run an interactive session with the recognizer
      END
    end
    
    setup_options( oparser )
    return oparser.parse( argv )
  end
  
private
  
  def setup_options( oparser )
    # overridable hook to modify / append options
  end
  
  def doc( description_string )
    description_string.chomp!
    description_string.gsub!( /^ *\| ?/, '' )
    description_string.gsub!( /\s+/, ' ' )
    return description_string
  end
  
end

=begin rdoc ANTLR3::Main::Main

The base-class for the three primary Main script-runner classes.
It defines the skeletal structure shared by all main
scripts, but isn't particularly useful on its own.

=end

class Main
  include Options
  include Util
  attr_accessor :output, :error
  
  def initialize( options = {} )
    @input  = options.fetch( :input, $stdin )
    @output = options.fetch( :output, $stdout )
    @error  = options.fetch( :error, $stderr )
    @name   = options.fetch( :name, File.basename( $0, '.rb' ) )
    super
    block_given? and yield( self )
  end
  
  
  # runs the script
  def execute( argv = ARGV )
    args = parse_options( argv )
    setup
    
    @interactive and return execute_interactive
    
    in_stream = 
      case
      when @input.is_a?( ::String ) then StringStream.new( @input )
      when args.length == 1 && args.first != '-'
        ANTLR3::FileStream.new( args[ 0 ] )
      else ANTLR3::FileStream.new( @input )
      end
    case
    when @ruby_prof
      load_ruby_prof
      profile = RubyProf.profile do
        recognize( in_stream )
      end
      printer = RubyProf::FlatPrinter.new( profile )
      printer.print( @output )
    when @profile
      require 'profiler'
      Profiler__.start_profile
      recognize( in_stream )
      Profiler__.print_profile
    else
      recognize( in_stream )
    end
  end
  
private
  
  def recognize( *args )
    # overriden by subclasses
  end
  
  def execute_interactive
    @output.puts( tidy( <<-END ) )
    | ===================================================================
    | Ruby ANTLR Console for #{ $0 }
    | ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
    | * Enter source code lines 
    | * Enter EOF to finish up and exit
    |   (control+D on Mac/Linux/Unix or control+Z on Windows)
    | ===================================================================
    | 
    END
    
    read_method = 
      begin
        require 'readline'
        line_number = 0
        lambda do
          begin
            if line = Readline.readline( "#@name:#{ line_number += 1 }> ", true )
              line << $/
            else
              @output.print( "\n" ) # ensures result output is on a new line after EOF is entered
              nil
            end
          rescue Interrupt, EOFError
            retry
          end
          line << "\n" if line
        end
        
      rescue LoadError
        lambda do
          begin
            printf( "%s:%i> ", @name, @input.lineno )
            flush
            line = @input.gets or
              @output.print( "\n" ) # ensures result output is on a new line after EOF is entered
            line
          rescue Interrupt, EOFError
            retry
          end
          line
        end
      end
    
    stream = InteractiveStringStream.new( :name => @name, &read_method )
    recognize( stream )
  end
  
  def screen_width
    ( ENV[ 'COLUMNS' ] || 80 ).to_i
  end
  
  def attempt( lib, message = nil, exit_status = nil )
    yield
  rescue LoadError => error
    message or raise
    @error.puts( message )
    report_error( error )
    report_load_path
    exit( exit_status ) if exit_status
  rescue => error
    @error.puts( "received an error while attempting to load %p" % lib )
    report_error( error )
    exit( exit_status ) if exit_status
  end
  
  def report_error( error )
    puts!( "~ error details:" )
    puts!( '  [ %s ]' % error.class.name )
    message = error.to_s.gsub( /\n/, "\n     " )
    puts!( '  -> ' << message )
    for call in error.backtrace
      puts!( '     ' << call )
    end
  end
  
  def report_load_path
    puts!( "~ content of $LOAD_PATH: " )
    for dir in $LOAD_PATH
      puts!( "  - #{ dir }" )
    end
  end
  
  def setup
    # hook
  end
  
  def fetch_class( name )
    name.nil? || name.empty? and return( nil )
    unless constant_exists?( name )
      try_to_load( name )
      constant_exists?( name ) or return( nil )
    end
    
    name.split( /::/ ).inject( Object ) do |mod, name|
      # ::SomeModule splits to ['', 'SomeModule'] - so ignore empty strings
      name.empty? and next( mod ) 
      mod.const_get( name )
    end
  end
  
  def constant_exists?( name )
    eval( "defined?(#{ name })" ) == 'constant'
  end
  
  def try_to_load( name )
    if name =~ /(\w+)::(Lexer|Parser|TreeParser)$/
      retry_ok = true
      module_name, recognizer_type = $1, $2
      script = name.gsub( /::/, '' )
      begin
        return( require( script ) )
      rescue LoadError
        if retry_ok
          script, retry_ok = module_name, false
          retry
        else
          return( nil )
        end
      end
    end
  end
  
  %w(puts print printf flush).each do |method|
    class_eval( <<-END, __FILE__, __LINE__ )
      private
      
      def #{ method }(*args)
        @output.#{ method }(*args) unless @no_output
      end
      
      def #{ method }!( *args )
        @error.#{ method }(*args) unless @no_output
      end
    END
  end
end



end

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
class Manager
  include Constants
  include Utils
  include JString
  
  attr_reader   :load_path, :input, :translator, :data_directory, :macros, :dependency_map
  attr_accessor :browser, :location_markers, :verbose, :root_input
  
  alias location_markers? location_markers
  private :location_markers
  
  def initialize( *args )
    options = {}
    args.last.is_a?( Hash ) and options.update( args.pop )
    @root_input = args.shift
    
    @data_directory = File.expand_path( '~/.jejune' )
    test( ?d, @data_directory ) or Dir.mkdir( @data_directory )
    @cache_directory = File.join( @data_directory, 'cache' )
    test( ?d, @cache_directory ) or Dir.mkdir( @cache_directory )
    
    @input       = nil
    @input_stack = []
    
    @load_path  = options.fetch( :load_path, [] )
    @load_path  = [ @load_path ].flatten
    @load_path.compact!
    
    @loaded_files     = {}
    @translator       = Translator.new( self )
    @browser          = options[ :browser ]
    @location_markers = options.fetch( :location_markers, true )
    @macros           = options.fetch( :macros, {} )
    @verbose          = options.fetch( :verbose, false )
    @dependency_map   = {}
  end
  
  
  def define_macro( node )
    macro = Macro.new( self, node )
    @macros[ macro.name ] = macro
    @input and @input.macros[ macro.name ] = macro
    return macro
  end
  
  def add_to_path( *directories )
    directories = [ directories ].flatten!.map! { | i | i.to_s }
    @load_path.unshift( *directories )
  end
  
  def set_root_file( file, options = {} )
    options[ :manager ] = self
    @root_input         = JJSFile.new( file, options )
  end
  
  def set_root_source( source, options = {} )
    options[ :manager ] = self
    @root_input         = JJSSource.new( source, options )
  end
  
  def find_path( name, exts = DEFAULT_EXT )
    find_in_path_list( @load_path, name, exts )
  end
  
  def find_resource( name, ext, system = false )
    unless path = system ? find_path( name, ext ) : find_relative( name, ext )
      raise( "cannot locate file `#{ name }' (exts = #{ ext })" )
    end
    return path
  end
  
  def find_relative( name, exts = DEFAULT_EXT )
    find_in_directory( @input ? @input.directory : File.expand_path( '.' ), name, exts )
  end
  
  def find_library( name, system = false )
    unless path = system ? find_path( name ) : find_relative( name )
      raise( "cannot locate file `#{ name }'" )
    end
    return path
  end
  
  
  def cache_file( path )
    id = MD5.hexdigest( File.expand_path( path ) << "\0" << @browser.to_s )
    File.join( @cache_directory, id )
  end
  
  def loaded?( path )
    @loaded_files.has_key?( File.expand_path( path ) )
  end
  
  def load_file( path )
    #$stderr.puts( "- loading #{ path } #{ File.basename( cache_file( File.expand_path( path ) ) ) }" )
    log( "cache check - #{ path }", 34 )
    full_path = File.expand_path( path )
    add_dependency( full_path )
    
    @loaded_files.fetch( full_path ) do
      cache  = cache_file( full_path )
      output = nil
      
      begin
        if test( ?f, cache ) and test( ?>, cache, path )
          data = Marshal.load( File.read( cache ) )
          for depend in data[ :dependencies ]
            unless test( ?f, depend ) and test( ?>, cache, depend )
              #$stderr.puts( "  old   < #{ depend }" )
              raise "no cache"
            end
          end
          
          data[ :macros ].each_value { | macro | macro.manager = self }
          @macros.update( data[ :macros ] )
          
          return( @loaded_files[ full_path ] = data[ :output ] )
        end
      rescue => e
        #$stderr.puts( e.inspect )
        # ignore
      end
      
      @loaded_files[ full_path ] = JJSFile.new( path, :manager => self, :cache_file => cache )
    end
  end
  
  def require!( lib, system = lib !~ /^[\.\/\~]/ )
    path = find_library( lib, system )
    @input and @input.dependencies.add( File.expand_path( path ) )
    log( "require! #{ path.inspect }" )
    jejune_file?( path ) ? loaded?( path ) ? nil : load_file( path ) : File.read( path )
  end
  
  def include!( lib )
    require!( lib, false )
  end
  
  def load!( lib, system = false )
    path = find_library( lib, system )
    @input and @input.dependencies.add( File.expand_path( path ) )
    log( "load! #{ path.inspect }" )
    jejune_file?( path ) ? load_file( path ) : File.read( path )
  end
  
  def expand_macro( name, *parameters )
    macro = @macros[ name.to_s ] or raise MacroNotFound.new( name.to_s )
    macro.expand( *parameters )
  end
  
  def translate( input = @root_input, options = nil )
    case input
    when RewriteTree
      @translator.translate( input )
    when JJSInput
      log( "translating #{ input.path }" )
      with_input( input ) do
        @translator.translate( input.tree )
      end
    when IO, ARGF
      options ||= {}
      options[ :manager ] = self
      input = JJSFile.new( input, options )
      translate( input )
    when String
      options ||= {}
      options[ :manager ] = self
      input = JJSSource.new( input, options )
      translate( input )
    end
  end
  
  def compress( source, type = 'js' )
    command = %W( yui-compressor --type #{ type } ).join( ' ' )
    Open3.popen3( command ) do | inp, out, err |
      inp.write source
      inp.close
      return out.read
    end
  end
  
  def parse( tokens, *args )
    options = args.last.is_a?( Hash ) ? args.pop : {}
    rule = args.pop || options[ :rule ] || :program
    
    stream = RewriteStream.new( tokens, options )
    adaptor = RewriteAdaptor.new( stream )
    parser = Parser.new( stream, :adaptor => adaptor )
    parser.send( rule ).tree
  end
  
  def commit_dependencies( file, deps )
    @dependency_map[ file ] = deps.to_a
  end
  
  def with_input( input )
    @input_stack.push( @input ) if @input
    @input = input
    yield self
  ensure
    @input = @input_stack.pop
  end
  
  def add_dependency( path )
    full_path = File.expand_path( path )
    @input and @input.dependencies.add( full_path )
    @input_stack.each { | f | f.dependencies.add( full_path ) }
  end
  
  def interpolate( blob, outdent = false )
    segments = []
    
    s = SourceScanner.new(
      blob.data, :file => blob.file, :line => blob.line, :column => blob.data_column
    )
    indent = nil
    margin = true
    nlines = 0
    
    until s.eos?
      case
      when s.scan( /#(?:(\{)|([@%\$][\$\w]*))/ )
        if s[ 1 ]
          tks = s.lexer { | lx | lx.tokenize_until_balanced( LBRACE, RBRACE ) }
          tree = parse( tks, :source_name => blob.file )
          segments << [ ?c, translate( tree ) ]
        elsif variable = s[ 2 ]
          case variable[ 0 ]
          when ?$
            segments << [ ?c, variable ]
          when ?@
            variable.length > 1 or raise( "syntax error -- expected variable name: `#{ s.matched }'" )
            segments << [ ?c, 'this.' << variable[ 1, variable.length ] ]
          when ?%
            variable.length > 1 or raise( "syntax error -- expected variable name: `#{ s.matched }'" )
            segments << [ ?c, variable[ 1, variable.length ] ]
          else
            raise( "BUG: this shouldn't happen" )
          end
        else
          raise( "BUG: this shouldn't happen" )
        end
      when s.scan( /\r?\n(?:\s*\r?\n)* / )
        nl = s.matched
        nlines += nl.count( "\n" )
        
        if last = segments.last and last[ 0 ] == ?s
          last[ 1 ] << nl
        else
          segments << [ ?s, nl ]
        end
        
        if leading_space = s.check( /^\s*(?=(\S))/ )
          margin &&= ( s[ 1 ] == '|' )
          n = expand_tabs( leading_space ).length
          indent = indent ? n < indent ? n : indent : n
        end
      when s.scan( %r<(?: [^\\\r\n\#]+ | (?: \\ \\ )+ | \\ \r? \n | \\ . | \# (?! [\{\$@%] ))+>mx )
        if last = segments.last and last[ 0 ] == ?s
          last[ 1 ] << s.matched
        else
          segments << [ ?s, s.matched ]
        end
      else
        msg = "BUG: this shouldn't happen!\n"
        msg << ( '= ' * 30 ) << "\n"
        msg << blob.inspect << "\n"
        msg << ( '= ' * 30 ) << "\n"
        msg << s.inspect
        raise( msg )
      end
    end
    
    if outdent and nlines > 0
      if first = segments.first and first[ 0 ] == ?s
        first[ 1 ].sub!( /\A[ \t]*\r?\n/, '' )
        first.empty? and segments.shift
      end
      if last = segments.last and last[ 0 ] == ?s
        last[ 1 ].sub!( /\r?\n[ \t]*\z/, '' )
        last.empty? and segments.pop
      end
      
      for type, text in segments
        if type == ?s
          margin ? text.gsub!( /(\r?\n)[ \t]*\|[ \t]?/, '\1' ) :
            text.gsub!( /(\r?\n)([ \t]*)/ ) { $1 << $2[ indent, $2.length ].to_s }
        end
      end
    end
    
    case segments.length
    when 0 then %q("")
    when 1
      type, text = segments.first
      type == ?s ? jstring( text ) : "(#{ text }).toString()"
    else
      segments.map! { | type, text | type == ?s ? jstring( text ) : text.strip }
      %([#{ segments.join( ',' ) }].join(''))
    end
  end
  
  def log( message, color = 33 )
    @verbose and $stderr.puts( "\e[#{ color }m#{ message }\e[0m" )
  end
  
end
end
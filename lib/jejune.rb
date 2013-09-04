#!/usr/bin/ruby
# encoding: utf-8

require 'yaml'
require 'json'
require 'delegate'
require 'shellwords'
require 'open3'

module Jejune
  begin
    require 'digest/md5'
    MD5 = Digest::MD5
  rescue LoadError
    require 'md5'
    MD5 = ::MD5
  end
  
  autoload :EJJS, 'jejune/ejjs'
  
  # 
  # Returns the version string for the library.
  #
  def self.version
    VERSION
  end
  
  # 
  # Returns the library path for the module. If any arguments are given,
  # they will be joined to the end of the libray path using
  # <tt>File.join</tt>.
  # 
  def self.library_path( *args )
    directory = File.dirname( __FILE__ )
    File.expand_path( ::File.join( directory, *args ) )
  end
  
  # 
  # Returns the lpath for the module. If any arguments are given,
  # they will be joined to the end of the path using
  # <tt>File.join</tt>.
  # 
  def self.project_path( *args )
    library_path( '..', *args )
  end
  
  def self.translate( *args )
    JJSSource.new( *args ).translate
  end
  
  def self.translate_file( *args )
    JJSFile.new( *args ).translate
  end
  
end # module Jejune

$LOAD_PATH.include?( Jejune.library_path ) or
  $LOAD_PATH.unshift( Jejune.library_path )


require 'jejune/version'
require 'jejune/grammar'
require 'jejune/constants'
require 'jejune/errors'
require 'jejune/utils'
require 'jejune/scanner'
require 'jejune/rewrite'
require 'jejune/jstring'
require 'jejune/data-extension'
require 'jejune/manager'
require 'jejune/input'
require 'jejune/node-test'
require 'jejune/tree-walker'
require 'jejune/parameters'
require 'jejune/macro'
require 'jejune/translator'
require 'jejune/boot'
require 'jejune/dependency-scanner'

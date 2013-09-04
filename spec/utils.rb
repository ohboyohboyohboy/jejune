#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: February 05, 2011
purpose:    (program | library | utility script | ?)
summary:    
loads:      files required by this
autoloads:  autoload entries in this (e.g. YAML(yaml))
=end

require 'jejune'
require 'fileutils'

THIS_DIR = File.dirname( __FILE__ )
SAMPLE_DIR = File.join( THIS_DIR, "sample-dirs" )
SAMPLE_TREE = %w(
  a/x
  a/x.js
  z.jjs
  b/y.jjs
  b/x.jjs
)


describe Jejune::Utils do
  include FileUtils
  include FileTest
  include Jejune::Utils
  
  def path( *args ) File.join( SAMPLE_DIR, *args ) end
  def glob( *args ) Dir.glob( path( *args ) ) end
  
  before :all do
    @base = SAMPLE_DIR
    mkpath( @base )
    for pt in SAMPLE_TREE
      pt = path( pt )
      mkpath( File.dirname( pt ) )
      touch pt
    end
    
    @search = %w( a b ).map { | i | path( i ) }
    
  end
  
  after :all do
    directory?( SAMPLE_DIR ) and rm_r( SAMPLE_DIR )
  end
  
  example 'find_in_directory' do
    find_in_directory( @base, 'z' ).should be_nil
    find_in_directory( @base, 'z', 'jjs' ).should == path( 'z.jjs' )
  end
  
  example 'find_in_path_list' do
    find_in_path_list( @search, 'x.jjs' ).should == path( 'b/x.jjs' )
    find_in_path_list( @search, 'x' ).should == path( 'a/x' )
  end
  
end


#!/usr/bin/ruby
# encoding: utf-8
#

require "rubygems"
require "hoe"

begin
  require './lib/jejune.rb'
rescue
  warn( $! )
end

GRAMMAR_DIR = "lib/jejune/grammar"
RENAME = YAML.load( <<-END )
  JejuneParser.rb: parser.rb
  JejuneLexer.rb: lexer.rb
END
TIDY_SCRIPT = "scripts/pretty-antlr-tokens"


parser_lib = File.join( GRAMMAR_DIR, 'parser.rb' )
grammars   = %w( Jejune.g ).map { | i | File.join( GRAMMAR_DIR, i ) }

file( parser_lib => grammars ) do
  require 'antlr3/task'
  cd GRAMMAR_DIR do
    tasks = ANTLR3::CompileTask.define( 'Jejune.g' )
    tasks.compile!
    for src, dest in RENAME
      mv( src, dest )
    end
  end
end

desc( "Generate the grammar recognition libraries from the ANTLR grammars" )
task( :grammar => parser_lib )

namespace :grammar do
  desc "reformat the token listings in the grammar files"
  task :tidy do
    for grammar in grammars
      temp = File.basename( grammar ) + '.tmp'
      cmd = "ruby #{ TIDY_SCRIPT } #{ grammar } > #{ temp }"
      cp( grammar, grammar + '.backup' )
      
      sh( cmd ) do | ok, stat |
        if ok
          mv( temp, grammar )
        else
          test( ?f, temp ) and rm( temp )
          fail( "command `#{ cmd }' failed with exit status #{ stat.exitstatus }" )
        end
      end
    end
  end
end

# Hoe.plugin :compiler
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :inline
# Hoe.plugin :minitest
# Hoe.plugin :racc
# Hoe.plugin :rcov
# Hoe.plugin :rubyforge

Hoe.spec "jejune" do
  developer( "Kyle Yetter", "kyle@ohboyohboyohboy.org")
  license "MIT" # this should match the license in the README
  self.version = Jejune::VERSION
  
  extra_deps <<
    %w( antlr3 ~>\ 1.8 ) <<
    %W( sass ~>\ 3.2 )
end

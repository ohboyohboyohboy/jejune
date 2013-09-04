#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: February 11, 2011
purpose:    (program | library | utility script | ?)
summary:    
loads:      files required by this
autoloads:  autoload entries in this (e.g. YAML(yaml))
=end

require 'jejune'
establish 'irb'

pattern = %r(<=\[\s*(.*?)\s*\]=>\s*(.*?)\s*(?=(?:\n<=\[|\z)))m

specs = ARGF.read
specs.scan( pattern ) do | title, samples |
  puts( '-' * 80 )
  puts( title.magenta )
  puts( '-' * 80 )
  for sample in samples.split( /\s*---\s*/ )
    puts sample.yellow
    puts Jejune.translate( sample ).green
  end
end

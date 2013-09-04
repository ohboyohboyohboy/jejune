#!/usr/bin/ruby
# encoding: utf-8
#
# author: Kyle Yetter
#

require 'spec'
require 'jejune'

describe Jejune, 'translation' do
  def self.translation( source, expected_output )
    example( source ) do
      output = Jejune::JJSSource.new( source ).translate.strip
      expected_output.strip!
      output.should == expected_output
    end
  end
  
  translation "@run( 1, 2, 3 )", 'this.run( 1, 2, 3 )'
  
  translation "@prop.thing = [ 1, 2, 3 ]", 'this.prop.thing = [ 1, 2, 3 ]'
  
  translation "a[ 3 ] ||= x + 4", "a[ 3 ] = a[ 3 ] || x + 4"
  
  translation "@y ||= @name.trim()", "this.y = this.y || this.name.trim()"
  
  translation %(@y ||= "string" == typeof( x ) ? x : x.toString()),
              %(this.y = this.y || ( "string" == typeof( x ) ? x : x.toString() ))
  
  translation(
    %q(
      `
      | <body>
      |   <p>JavaScript wants your strings to sit on a single line.</p>
      | </body>
      `
    ),
    %q("<body>\n  <p>JavaScript wants your strings to sit on a single line.</p>\n</body>")
  )
  
  translation(
    %q(
      var x =
        " What's so damn terrible about
          multiple-line strings, JavaScript?\
        ".trim().replace( /\s+/, ' ' )
    ),
    %q(
      var x =
        " What's so damn terrible about\n          multiple-line strings, JavaScript?        ".trim().replace( /\s+/, ' ' )
    )
  )
  
  translation "[ 1, 2, 10 ].sort { | a, b | a < b ? -1 : a == b ? 0 : 1 }",
    "[ 1, 2, 10 ].sort( function( a, b ) { return( a < b ? -1 : a == b ? 0 : 1 ); } )"
  
  translation "-> { 4 + 5; }", "function() { return( 4 + 5 ); }"
  
  translation "$( 'button' ).insert( below: el )",
              "$( 'button' ).insert( { below: el } )"
  
  translation %q(%w( a bunch of words and one\ space )),
              %q([ "a", "bunch", "of", "words", "and", "one space" ])
  
  translation %q( "<p class=#{ cName.quote() }>#{ content }</p>" ),
              %q( [ "<p class=", cName.quote(), ">", content, "</p>" ].join( '' ) )
  
end


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
module DebugRewrite
  def debug_rewrite( tokens )
    rewrite = tokens.rewrite
    
    operations = rewrite.instance_variable_get( :@operations )
    for op in operations
      print_rewrite( op )
    end
  end
  
  def print_rewrite( operation )
    tokens = operation.stream
    
    case operation.name
    when 'insert-before'
      print(
        "\e[33minsert-before\e[0m : ",
        operation.stream[ operation.location ].inspect,
        ' -> ', operation.text.inspect
      )
    when 'replace'
      range = operation.location
      start, stop = range.begin, range.end
      content = '%p %s %p' % [ tokens[ start ], range.exclude_end? ? '...' : '..', tokens[ stop ] ]
      print( "\e[32mreplace\e[0m : ", content, ' -> ', operation.text.inspect )
    when 'delete'
      range = operation.location
      start, stop = range.begin, range.end
      content = '%p %s %p' % [ tokens[ start ], range.exclude_end? ? '...' : '..', tokens[ stop ] ]
      print( "\e[34mdelete\e[0m : ", content )
    end
    puts
  end
end
end

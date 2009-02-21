#!/usr/bin/env ruby
#
# Calculator that can do basic arithmetic.
#
# == Usage
#
# The calculator only supports the four basic arithmetic operators
# +, -, *, and /. Only integer and floating point numbers are allowed.
# No precedence rules or parenthesis are supported. Example:
#
# ruby calculator.rb 3 + 4 "*" 5 / 12
#

require 'rdoc/usage'

#################################################
#
# Methods
#
#################################################

def exit_with_usage(message)
  puts message
  puts
  RDoc::usage  
end

def to_number(arg)
  exit_with_usage("Invalid format of number '#{arg}'") if arg !~ /^\d+(\.\d+)?$/
  arg.to_f
end

def to_operator(operator)
  exit_with_usage("Invalid operator: '#{operator}") if operator !~ %r{^(\+|-|/|\*)$}
  opeator
end

#################################################
#
# Script
#
#################################################

if ARGV.size < 3 || (ARGV.size % 2 == 0)
  exit_with_usage("You must provide at least three arguments and the number of arguments must be odd.")
end

result = to_number(ARGV.shift)
while !ARGV.empty?
  operator = to_operator(ARGV.shift)
  operand = to_number(ARGV.shift)
  result = result.send(operator, operand)
end

puts sprintf("%.3f", result)

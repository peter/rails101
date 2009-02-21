#!/usr/bin/env ruby

# Note: collect is a synonym for map so you can use that as well
names = ARGV.map { |name| name.capitalize }.join(", ")
puts "Hello #{names}"

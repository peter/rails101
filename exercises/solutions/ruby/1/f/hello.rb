#!/usr/bin/env ruby

names = ARGV.map { |name| name.strip.downcase.capitalize }.reject { |name| name == "" }.sort.join(", ")
puts "Hello #{names}"

#!/usr/bin/env ruby

counts = {}
readlines.map { |word| word.strip }.reject { |word| word == ""}.each do |word|
  counts[word] ||= 0
  counts[word] += 1
end

puts "sorted with counts:"
counts.keys.sort.each do |word|
  puts "#{word}: #{counts[word]}"
end

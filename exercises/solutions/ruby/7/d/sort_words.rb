#!/usr/bin/env ruby

counts = {}
readlines.map { |word| word.strip }.reject { |word| word == ""}.each do |word|
  counts[word] ||= 0
  counts[word] += 1
end

puts "sorted with counts:"
counts.sort { |a, b| b[1] <=> a[1] }.each do |word|
  puts "#{word[0]}: #{word[1]}"
end

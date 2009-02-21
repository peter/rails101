#!/usr/bin/env ruby

array = []
(1..100).each { |i| array << i }

array2 = array.map { |n| n*n }
puts array2

array3 = array2.select { |n| n % 2 == 0 }
puts "There are #{array3.size} even numbers"

puts "The sum of the even numbers is: #{array3.inject { |sum, i| sum + i }}"

puts "The number of digits in the even numbers is: #{array3.inject(0) { |sum, i| sum += i.to_s.size; sum }}"

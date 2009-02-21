#!/usr/bin/env ruby

first_name = "peter"
last_name = "marklund"
full_name = first_name.capitalize + " " + last_name.capitalize

# You can also do:
# full_name = "#{first_name.capitalize} #{last_name.capitalize}"
# or...
# full_name = first_name.capitalize << " " << last_name.capitalize

puts full_name

full_name2 = full_name
full_name2.upcase!
puts full_name

puts "Length of name: #{(first_name + last_name).length} letters"

full_name.scan(/./).each { |char| puts char }

puts full_name.split.reverse.join(", ")

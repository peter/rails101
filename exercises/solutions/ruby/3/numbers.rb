#!/usr/bin/env ruby

number = 9
(1..7).each do
  number *= number
  puts "#{number.class} #{number}"
end

# Alternative solutions:

# 1.upto(7) do
#   number *= number
#   puts "#{number.class} #{number}"  
# end

# i = 1
# while i < 8
#   number *= number
#   puts "#{number.class} #{number}"
#   i += 1
# end

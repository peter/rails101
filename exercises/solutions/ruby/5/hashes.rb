#!/usr/bin/env ruby

class Array
  def to_s
    join(', ')
  end
end

hash = {
  :stockholm => 1.3,
  :gothenburg => 0.5,
  :malmo => 0.23
}

puts "Cities: #{hash.keys}"
puts "Populations: #{hash.values}"
puts "Population of Gothenburg: #{hash[:gothenburg]}"

limit = 0.3
hash2 = hash.reject { |k, v| v < limit }
puts "Cities with population greater than #{limit}: #{hash2.keys}"

avg = hash.values.inject { |sum, p| sum + p } / hash.values.size
puts sprintf("Average population: %.2f", avg)

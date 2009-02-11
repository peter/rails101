x = 11
case x
when 0
when 1, 2..5
  puts "Second branch"
when 6..10
  puts "Third branch"
when *[11, 12]
  puts "Fourth branch"
when String: puts "Fifth branch"
when /\d+\.\d+/
  puts "Sixth branch"
when x.to_s.downcase == "peter"
  puts "Seventh branch"
else
  puts "Eight branch"
end
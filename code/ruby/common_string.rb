"  ".empty? == true
IO.read(__FILE__).each_with_index { |line, i| puts "#{i}: #{line}" }
"abc".scan(/./).each { |char| char.upcase }
"we split words".split.join(", ")
"    strip space   ".strip
sprintf("value of %s is %.2f", "PI", 3.1416)
"I Go Ruby"[2, 2] == "I Go Ruby"[2..3] # => "Go"

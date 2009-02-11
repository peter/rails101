"Ruby" =~ /^(ruby|python)$/i
"Go\nRuby" =~ /Go\s+(\w+)/m; $1 == "Ruby"
"I Go Ruby" =~ /go/i; $& == "Go"; $` == "I "; $' == " Ruby"
pattern = "."; Regexp.new(Regexp.escape(pattern))
"I Go Ruby"[/(go)/i, 1] == "Go"
puts "I Go Ruby".gsub(%r{Ruby}, '\0 or I go bananas')
"I Go Ruby".gsub(/ruby/i) { |lang| lang.upcase }
line = "I Go Ruby"
m, who, verb, what = *line.match(/^(\w+)\s+(\w+)\s+(\w+)$/)
# \s, \d, [0-9], \w - space, digit, and word character classes
# ?, *, +, {m, n}, {m,}, {m} - repetition

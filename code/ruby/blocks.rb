# Iteration
[1, 2, 3].each { |item| puts item }

# Resource Management
File.open("file.txt", "w") do |file|
  file.puts "foobar"
end

# Callbacks
widget.on_button_press do
  puts "Got button press"
end

# Convention: one-line blocks use {...} and multiline
# blocks use do...end

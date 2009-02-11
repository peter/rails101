require 'person_class'

andreas = Person.new("Andreas")
puts andreas.inspect

puts "class: #{andreas.class}" # => Person
puts "superclass: #{andreas.class.superclass}" # => Object
puts "superclass of superclass: #{andreas.class.superclass.superclass}" # => nil

puts "ancestors: #{andreas.class.ancestors.join(", ")}" # lists Modules

puts "instance_methods: #{Person.instance_methods(false)}"
puts "kernel methods: #{Kernel.methods.sort.join("\n")}"

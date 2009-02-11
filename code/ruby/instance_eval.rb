require 'person_class'
andreas = Person.new("Andreas")
puts andreas.instance_eval { @name } # => Andreas

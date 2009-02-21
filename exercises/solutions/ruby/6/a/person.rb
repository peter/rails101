#!/usr/bin/env ruby

class Person
  attr_accessor :first_name, :last_name, :age
  
  def initialize(first_name, last_name, age)
    self.first_name = first_name
    self.last_name = last_name
    self.age = age
  end  
end

andreas = Person.new("Andreas", "Kviby", 15)
puts andreas.first_name

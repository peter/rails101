#!/usr/bin/env ruby

class Person
  attr_accessor :first_name, :last_name, :age
  
  def initialize(first_name, last_name, age)
    self.first_name = first_name
    self.last_name = last_name
    self.age = age
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def to_s
    "Person: #{full_name}, #{age} years old"
  end
end

andreas = Person.new("Andreas", "Kviby", 15)
puts andreas
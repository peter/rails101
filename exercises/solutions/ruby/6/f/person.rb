#!/usr/bin/env ruby

class Person
  attr_accessor :first_name, :last_name
  
  def initialize(first_name, last_name, age)
    self.first_name = first_name
    self.last_name = last_name
    self.age = age
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def to_s
    "Person: #{full_name}"
  end

  def self.related?(person1, person2)
    person1.last_name == person2.last_name
  end
  
  private
  attr_accessor :age
  
  def old?
    age > 60
  end
  
  def young?
    !old?
  end
end

andreas = Person.new("Andreas", "Kviby", 15)
puts andreas.send(:age)

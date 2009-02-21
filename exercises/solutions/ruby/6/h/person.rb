#!/usr/bin/env ruby

module Age
  def <=>(other)
    age <=> other.age
  end  

  protected
  attr_accessor :age
    
  private
  def old?
    age > 60
  end
  
  def young?
    !old?
  end  
end

class Person
  include Age
  include Comparable
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
end

andreas = Person.new("Andreas", "Kviby", 15)
peter = Person.new("Peter", "Marklund", 32)
david = Person.new("David", "Hanson", 28)

people = [andreas, peter, david]
puts people.sort.map { |person| person.send(:age) }

puts "Peter is " + (peter > david ? "older" : "younger") + " than David"

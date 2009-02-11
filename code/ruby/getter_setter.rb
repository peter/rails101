class Person
  def initialize(name)
    self.name = name
  end
    
  def name
    @name
  end
    
  def name=(name)
    @name = name
  end
end

person = Person.new("Andreas")
puts person.name
person.name = "David"
puts person.name

class Person
  attr_accessor :paid
  
  def initialize
    @paid = false
  end
  
  def make_payment
    puts "making payment..."
    paid = true
  end
end

person = Person.new
person.make_payment
puts "paid=#{person.paid}"

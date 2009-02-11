require 'person_class'
module HasAge
  attr_accessor :age
end
class Person
  include HasAge
end
peter = Person.new("Peter"); peter.age = 33; puts peter.age

module MyApp
  class Person
    attr_accessor :hometown
    def initialize(hometown)
      self.hometown = hometown
    end
  end
end
peter = MyApp::Person.new("Stockholm"); puts peter.hometown

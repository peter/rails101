require 'person'

# Every object has two classes: the class of which it is an instance, and a singleton class. Methods
# of the singleton class are called singleton methods and can only be invoked on that particular object.
andreas = Person.new("Andreas")
def andreas.andreas_says_hi
  "Andreas says hi"
end
andreas.andreas_says_hi

# Class methods are singleton methods on the class
# object and can be defined like this:
def Person.count
  @@count ||= 0
end
puts Person.count

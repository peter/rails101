class Person
  def self.class_method
    puts "class method invoked"
  end

  class << self
    def class_method2; puts "class_method2"; end
    def class_method3; puts "class_method3"; end
  end
end

class << Person
  def class_method4; puts "class_method4"; end
end

# Invocation of class method
Person.class_method

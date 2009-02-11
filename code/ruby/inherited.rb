class A
  @@subclasses = {}  
  # Invoked when a new class is created that extends this class
  def self.inherited(child)
    puts "inherited"
    @@subclasses[self] ||= []
    @@subclasses[self] << child
  end
  
  def self.subclasses
    @@subclasses[self]
  end
end

class B < A
end

puts A.subclasses

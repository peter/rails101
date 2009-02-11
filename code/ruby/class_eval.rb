class Person
  def self.add_method(method)
    class_eval %Q{
      def #{method}
        puts "method #{method} invoked"
      end
    }
  end    

  add_method(:say_hi)
end

Person.new.say_hi

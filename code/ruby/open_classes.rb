class Peter
  def say_hi
    puts "Hi"
  end
end

class Peter
  alias_method :say_hi_orig, :say_hi
  def say_hi
    puts "Before say hi"
    say_hi_orig
    puts "After say hi"
  end
end

Peter.new.say_hi

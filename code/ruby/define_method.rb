class Array
  {:second => 1, :third => 2}.each do |method,element|
    define_method(method) do
      self[element]
    end
  end
end

array = %w(A B C)
puts array.first # => A
puts array.second # => B
puts array.third # => C

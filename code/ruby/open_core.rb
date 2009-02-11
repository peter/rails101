class Integer
  def even?
    (self % 2) == 0
  end
end

p (1..10).select { |n| n.even? } # => [2, 4, 6, 8, 10]

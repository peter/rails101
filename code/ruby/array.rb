a = ["Ruby", 99, 3.14]
a[1] == 99
a << "Rails"
['C', 'Java', 'Ruby'] == %w{C Java Ruby}
[1, 2, 3].map { |x| x**2 }.join(", ")
[1, 2, 3].select { |x| x % 2 == 0 }
[1, 2, 3].reject { |x| x < 3 }
[1, 2, 3].inject { |sum, i| sum + i }

[1, [2, 3]].flatten! # => [1, 2, 3]

%w{C Java Ruby}.include?("C") # => true

fruits = ['apple', 'banana']
fruits += ['apple'] unless fruits.include?('apple')
fruits | ['apple', 'banana', 'pear'] # => ['apple', 'banana', 'pear']
fruits & ['apple', 'banana', 'pear'] # => ['apple', 'banana']

# Two dots is inclusive, i.e. 1 to 5
(1..5).each { |x| puts x**2 } 

# Three dots excludes the last item, i.e. 1 to 4
(1...5).each { |x| puts x }

(1..3).to_a == [1, 2, 3]

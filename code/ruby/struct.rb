Rating = Struct.new(:name, :ratings) 
rating = Rating.new("Rails", [ 10, 10, 9.5, 10 ]) 

puts rating.name
puts rating.ratings

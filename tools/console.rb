require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Artist.new("Bob", 10)
a2 = Artist.new("Jim", 7)
a3 = Artist.new("May", 2)

g1 = Gallery.new("Foo", "NY")
g2 = Gallery.new("Baz", "Paris")
g3 = Gallery.new("Bar", "Rome")

p1 = Painting.new("Flower", "Art Deco", a1, g1)
p2 = Painting.new("Dog", "Cubism", a2, g2)
p3 = Painting.new("Cheese", "Street Art", a3, g3)

binding.pry

puts "Hello you ;)"

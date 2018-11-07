require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Artists
raphael = Artist.new("Raphael", 20)
donatello = Artist.new("Donatello", 18)
michelangelo = Artist.new("Michelangelo", 50)
leonardo = Artist.new("Leonardo", 34)

#Galleries
louvre = Gallery.new("Louvre", "Paris")
tate = Gallery.new("Tate", "London")
moma = Gallery.new("Moma", "NY")
rijks= Gallery.new("Rijks", "Amsterdam")
saatchi = Gallery.new("Saatchi", "London")

#Paintings
mona = Painting.new("Mona", "old", leonardo, louvre)
dog = Painting.new("Dog", "new", donatello, moma)
house = Painting.new("House", "old", michelangelo, tate)
cat = Painting.new("Cat", "modern", raphael, rijks)
lighthouse = Painting.new("Lighthouse", "baroque", leonardo, louvre)
elephant = Painting.new("Elephant", "modern", raphael, tate)
rabbit = Painting.new("Rabbit in Headlights", "art nouveau", donatello, saatchi)

binding.pry
"Awesome"

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



#Artist
raphael = Artist.new("Raphael", 20)
donatello = Artist.new("Donatello", 18)
michelangelo = Artist.new("Michelangelo", 50)
leonardo = Artist.new("Leonardo", 34)

#Galleries
louvre = Gallery.new("Louvre", "Paris")
tate = Gallery.new("Tate", "London")
moma = Gallery.new("Moma", "New York")
rijks = Gallery.new("Rijks", "Amsterdam")

#Paintings
mona = Painting.new("Mona", "Old", leonardo, louvre)
dog = Painting.new("Dog", "New", donatello,  mona)
house = Painting.new("House", "Old", michelangelo,  tate)
cat = Painting.new("Cat", "Modern", raphael,  rijks)
lighthouse = Painting.new("Lighthouse", "Baroque", leonardo,  louvre)
elephant = Painting.new("Elephant", "Modern", raphael,  tate)

binding.pry
"Awesome"

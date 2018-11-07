require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

van_goh = Artist.new("Vincent", 10)
monet = Artist.new("Claude", 30)
rubens = Artist.new("Peter Paul", 40)

ng = Gallery.new("National Gallery", "London")
npg = Gallery.new("National Portrait Gallery", "London")
v_and_a = Gallery.new("Victoria and Albert", "London")
tate = Gallery.new("Tate Modern", "London")
mona = Gallery.new("Museum of Modern Art", "New York")
louvre = Gallery.new("Lourve", "Paris")

venus = Painting.new("Venus", "Impressionsist", rubens, npg)
ml = Painting.new("Mona Lisa", "Raphalite", rubens, ng)
umbrellas = Painting.new("Umbrellas", "Impressionsist", monet, mona)
samson = Painting.new("Samson", "Raphalite", van_goh, tate)
ambassodors = Painting.new("The Ambassadors", "Impressionsist", van_goh, v_and_a)
sonata = Painting.new("Sonata", "Abstract", van_goh, mona)
sunrise = Painting.new("Sunrise", "Impressionsist", rubens, npg)
sunflowers = Painting.new("Sunflowers", "Abstract", monet, ng)
scream = Painting.new("Scream", "Abstract", monet, louvre)





binding.pry

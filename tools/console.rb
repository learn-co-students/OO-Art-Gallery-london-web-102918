require_relative '../config/environment.rb'

picasso = Artist.new("Picasso", 23)
dali = Artist.new("Dali", 17)
rothko = Artist.new("Rothko", 40)
bosch = Artist.new("Bosch", 37)

met = Gallery.new("Met", "NY")
ra = Gallery.new("RA", "London")
ica = Gallery.new("ICA", "London")

scream = Painting.new("Scream", "Ugly", picasso, met)
ambassadors = Painting.new("Ambassadors", "Classical", picasso, ra)
squiggle = Painting.new("Squiggle", "Ugly", dali, ra)
guernica = Painting.new("Guernica", "Cubist", picasso, ra)
mambo = Painting.new("Mambo", "Modern", rothko, ica)
fartpants = Painting.new("Fartpants", "Classical", bosch, met)

binding.pry

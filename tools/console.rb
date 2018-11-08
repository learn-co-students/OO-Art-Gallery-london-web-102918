require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Artist.new("Van Gogh", 12)
a2 = Artist.new("Frida Kahlo", 32)
a3 = Artist.new("Georgia O\'Keefe", 28)
a4 = Artist.new("M. F. Hussein", 54)

g1 = Gallery.new("British Museum", "London")
g2 = Gallery.new("Jehangir Art Gallery", "Mumbai")
g3 = Gallery.new("SOMA", "Seattle")
g4 = Gallery.new("MOMA", "NYC")
g5 = Gallery.new("Tate Modern", "London")

p1 = Painting.new("Black Iris", "Modernist", a3, g1)
p2 = Painting.new("Ladder to the Moon", "Modernist", a3, g3)

p3 = Painting.new("The Two Fridas", "Magic Realism", a2, g3)
p4 = Painting.new("The Wounded Table", "Magic Realism", a2, g2)
p5 = Painting.new("The Love Embrace of the Universe, the Earth (Mexico), Myself, Diego, and Señor Xolotl", "Magic Realism", a2, g1)

p6 = Painting.new("The Starry Night", "Post-Impressionist", a1, g4)
p7 = Painting.new("Irises", "Post-Impressionist", a1, g4)
p8 = Painting.new("Sunflowers", "Post-Impressionist", a1, g2)

p9 = Painting.new("Horses", "Indian-Modernist", a4, g2)
p10 = Painting.new("Lady with Veena", "Indian-Modernist", a4, g3)

binding.pry

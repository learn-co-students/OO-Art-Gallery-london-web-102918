require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mayowa = Artist.new('mayowa', 10)
bigbro = Artist.new('bigbro', 25)
mymarge = Artist.new('mymarge', 2)
mypapa = Artist.new('mypapa', 6)

garage = Gallery.new('garage', 'new york city')
garden = Gallery.new('garden', 'barcelona')

p1 = Painting.new('my foot', 'abstract', mayowa, garage)
p2 = Painting.new('my ankle', 'professional', bigbro, garage)
p3 = Painting.new('my elbow', 'doodle', mymarge, garden)
p4 = Painting.new('my ear', 'casual', mypapa, garage)

binding.pry

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


dan = Artist.new("Dan", 23)
sam = Artist.new("Sam", 10)
ana = Artist.new("Ana", 12)
mic = Artist.new("Mic", 11)

moma = Gallery.new("Moma", "NewYork")
tate = Gallery.new("Tate", "London")
btw = Gallery.new("Btw", "Katowice")
art = Gallery.new("Art", "London")

love = Painting.new("Love", "impressionit", dan, btw )
hate = Painting.new("hate", "abstract",dan , moma)
love1 = Painting.new("Love111", "finger_paint", ana, art)
love2 = Painting.new("Love222", "abstract", sam, tate)
love3 = Painting.new("Love333", "impressionit", dan, tate)












binding.pry

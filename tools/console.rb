require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Artists
van_gogh=Artist.new("van gogh",40)
leonardo=Artist.new("leonardo",60)
#galleries
lauvre=Gallery.new("lauvre","paris")
national_g=Gallery.new("national_g","london")
van_gogh_gal=Gallery.new("van_gogh","amsterdam")
#Paintings
mona=Painting.new("Mona","renaissance",leonardo,lauvre)
sun_flower=Painting.new("Sunflower","modern",van_gogh,national_g)
starry_night=Painting.new("starry night","modern",van_gogh,van_gogh_gal)
binding.pry
"perfect"

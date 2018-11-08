class Gallery

  attr_reader :name, :city
  @@all = []

def initialize(name, city)
  @name = name
  @city = city
  @@all << self
end

def self.all
  @@all
end

#Get a list of all cities that have a gallery. A city should not appear more than once in the list.
  def self.city_gallery
    Gallery.all.map {|g| g.city}.uniq
  end

#Get a list of artists that have paintings at a specific gallery
  def artist_gallery
    p = Painting.all.select {|a| a.gallery == self}
    p.map {|a| a.artist}
  end

   #Get a list of the names of artists that have paintings at a specific gallery
   def artist_name_gallery
     artist_gallery.map { |a| a.name}
   end

   #Get the combined years of experience of all artists at a specific gallery

   def years
     sum = 0
     artist_gallery.each {|a| sum += a.years_active}
     sum
   end
end

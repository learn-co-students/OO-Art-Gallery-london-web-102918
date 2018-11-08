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

  def self.find_city
    Gallery.all.map {|gallery| gallery.city}.uniq
  end

  def gallery_artist
    cities = Painting.all.select {|x| x.gallery == self}
    cities.map {|a| a.artist}
  end

  def name_artist
    cities = Painting.all.select {|x| x.gallery == self}
    cities.map {|a| a.artist.name}
  end

  def total_exp
    cities = Painting.all.select {|x| x.gallery == self}
    cities_2 = cities.map {|a| a.artist}
    cities_3 = cities_2.map {|b| b.years_active}
    cities_3.inject() {|sum, exp| sum += exp} 
  end
end

class Gallery

  attr_reader :name, :city

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end


  def self.cities
    self.all.map {|gallery| gallery.city}.uniq
  end

  def artists_showing_here
    Painting.all.select {|painting| painting.gallery == self}.map {|painting| painting.artist}.uniq
  end

  def names_of_artists_showing_here
    self.artists_showing_here.map {|artist| artist.name}.uniq
  end

  def exp_of_artists_showing_here
    total_exp = 0
    self.artists_showing_here.map {|artist| total_exp += artist.years_active.to_f}
  end

end

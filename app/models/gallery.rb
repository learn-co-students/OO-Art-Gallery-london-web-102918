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

  def self.all_cities
    @@all.map {|gallery| gallery.city }.uniq
  end

  def artists
    Painting.all.select {|painting| painting.gallery == self}
    .map {|gallery| gallery.artist}
  end

  def name_of_artists
    Painting.all.select {|painting| painting.gallery == self}
    .map {|gallery| gallery.artist.name}
  end

  def combine_years
    self.artists.map do |years| years.years_active
    end.inject(:+)
  end


end

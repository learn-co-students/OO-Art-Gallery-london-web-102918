class Gallery

  attr_reader :gallery, :city

  @@all = []

  def initialize(gallery, city)
    @gallery = gallery
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.gallery_cities
    self.all.map {|g| g.city}.uniq
  end

  def artist_painting_list
    list = Painting.all.select {|p| p.gallery.gallery == self.gallery}
    list.map {|l| l.artist}
  end

  def artist_painting_names
    artist_painting_list.map {|l| l.name}
  end

  def combined_years_experience
    years = artist_painting_list.map {|l| l.years_active}
    years.inject(0){|sum, y| sum += y}
  end

  end

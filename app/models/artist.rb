class Artist

  attr_reader :name, :painting, :city, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_painting
    Painting.all.select {|p| p.artist == self}
  end

  def artist_gallery
    artist_painting.map {|g| g.gallery}
  end

  def artist_city
    artist_gallery.map {|c| c.city } 
  end

  def self.avg_years
    total_years = Artist.all.map {|a| a.years_active}
    total_years.inject() {|sum, years| sum += years} 
  end
end
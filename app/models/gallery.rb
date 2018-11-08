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

  def self.cities
    all.map do |p|
      p.city
    end.uniq
  end

  def artists_at_gallery
    Painting.all.select do |p|
      p.gallery == self
    end.map do |g|
      g.artist
    end.uniq
  end

  def artists_at_gallery_names
    artists_at_gallery.map do |a|
      a.name
    end
  end

  def total_artist_experience
    artists_at_gallery.inject(0) do |t, a|
      t + a.years_active
    end
  end

end

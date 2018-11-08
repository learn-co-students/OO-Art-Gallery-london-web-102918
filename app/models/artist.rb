class Artist

  attr_reader :name, :years_active, :painting

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |p|
      p.artist == self
    end
  end

  def artist_exhibited_at
    paintings.map do |a_p|
      a_p.gallery
    end.uniq
  end

  def artist_cities_exhibited
    artist_exhibited_at.map do |g|
      g.city
    end.uniq
  end

  def self.average_experience
    total_experience = all.map do |a|
      a.years_active
    end.inject do |t, y|
      t + y
    end
    total_experience.to_f / all.count
  end

end

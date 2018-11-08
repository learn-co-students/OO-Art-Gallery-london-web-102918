class Artist

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def paintings
    Painting.all.select {|painting| painting if painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.map {|gallery| gallery.city}.uniq
  end

  def years_active
    @years_active
  end

  def self.average_exp
    total_exp = 0
    self.all.map {|artist| total_exp += artist.years_active.to_f}
    average_exp = total_exp / self.all.length
  end

end

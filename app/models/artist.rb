class Artist

  attr_reader :name
  attr_accessor :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings_by
    Painting.all.select {|p| p.artist.name == self.name}
  end

  def galleries_list
    paintings_by.map {|p| p.gallery.gallery}
  end

  def cities_list
    paintings_by.map {|p| p.gallery.city}.uniq
  end

  def self.average_years
    total = self.all.map {|a| a.years_active}
    total.inject(0){|sum, x| sum += x}.to_f / total.length
  end

end

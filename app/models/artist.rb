class Artist

  attr_reader :name, :years_active

  @@all =[]

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def list_all_paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def self.average_years
    arr = @@all.map do |years| years.years_active
    end
    arr.inject(:+)/arr.length
  end

  def galleries
    self.list_all_paintings.map do |painting| painting.gallery.name
    end.uniq
  end

  def cities
    self.list_all_paintings.map do |painting| painting.gallery.city
    end.uniq
  end


end

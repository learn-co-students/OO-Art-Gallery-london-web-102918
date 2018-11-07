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
    paintings_by.map {|p| p.gallery.city}
  end

  def self.average_years
    total = Artist.all.map {|l| l.years_active}
     total.inject(0){|sum, el| sum + el}.to_f / total.size
  end

end

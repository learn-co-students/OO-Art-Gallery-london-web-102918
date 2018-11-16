class Artist

  attr_reader :name
@@all = []
  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end
def self.all
  @@all

  def paintings
      Painting.all.select{|p| p.artist.name == self.name}
    end

    def galleries
      paintings.select{|p| p.gallery.name}.map{|g|g.gallery}
    end

    def cities
      galleries.map{|g| g.city}
    end

    def self.average_experience
      artist_average_years = Artist.all.map{|a| a.years_active}
      artist_average_years.reduce(){|sum, years| sum += years}/artist_average_years.length
    end

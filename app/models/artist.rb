class Artist

  attr_reader :name, :years_active

@@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end


#Get a list of all the paintings by a specific artists

    def paintings
      Painting.all.select {|p| p.artist == self}
    end
#Get a list of all the galleries that a specific artist has paintings in
    def galleries
      paintings.map {|p| p.gallery}
    end
#Get a list of all cities that contain galleries that a specific artist has paintings in
      def cities
        galleries.map {|g| g.city}
      end

#Find the average years of experience of all artists
      def self.avr_years
        sum = 0
        Artist.all.each {|a| sum += a.years_active }
        sum.to_f/Artist.all.length
      end
end

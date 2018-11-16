class Gallery

  attr_reader :gallery, :city
@@all =[]
def initialize(gallery, city)
  @name = gallery
  @city = city
  @@all << self
end
def self.all
  @@all
end
def self.cities_with_gallery
    Gallery.all.map{|g| g.city}.uniq
  end

  def artists_at_gallery
    Painting.all.select{|p| p.gallery == self}.map{|p| p.artist}.uniq
  end

  def years_of_experience_at_gallery
    artists_at_gallery.map{|a| a.years_active}.reduce(){|sum, years| sum+=years}
  end


end

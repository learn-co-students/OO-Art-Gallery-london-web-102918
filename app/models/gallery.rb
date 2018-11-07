class Gallery

  attr_reader :gallery, :city
  @@all = []

  def initialize(gallery, city)
    @gallery = gallery
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.city_galleries
    self.all.map {|g| g.city}.uniq
  end


  def galleries_by
    Painting.all.select {|a| a.gallery.gallery ==  self.gallery}
  end

  def artist_list
    galleries_by.map { |a| a.artist }.uniq
  end

  def artist_name_list
    galleries_by.map {|a| a.artist.name }.uniq
  end


  def combined_yrs_active
    total = galleries_by.map {|a|  a.artist.years_active}.uniq
    total.inject(0){|sum, el| sum + el}.to_f
  end

end

class Painting

  attr_accessor :title, :style, :artist, :gallery
  # attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.painting_styles
    self.all.map {|p| p.style}.uniq
  end

end

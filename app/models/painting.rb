class Painting

  attr_reader :title, :style
  attr_accessor :artist, :gallery

  @@all = []

  def self.all
    @@all
  end

  def initialize(title, style, artist=nil, gallery=nil)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.artists
    self.all.map {|painting| painting.artist}.uniq
  end

  def self.galleries
    self.all.map {|painting| painting.gallery}.uniq
  end

  def self.styles
    self.all.map {|painting| painting.style}.uniq
  end

end

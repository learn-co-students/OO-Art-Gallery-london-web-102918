class Painting

  attr_reader :title, :style
@@all=[]
  def initialize(title, style,artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery =gallery
    @@all<< self
  end
  def self.all
    @@all
  end
  def self.styles
      Painting.all.map{|p| p.style}.uniq
    end

end

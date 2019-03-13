class Painting

 attr_accessor :title, :price, :gallery, :artist

  @@all = []

  def initialize(name, city, gallery, artist)
    @name = name
    @city = city
    @gallery = gallery
    @artist = artist
    @@all << self
  end 
  def self.all 
    @@all
  end

 
  

end

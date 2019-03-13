class Painting

 attr_accessor :title, :price, :gallery, :artist

  @@all = []

  def initialize(name, price, gallery, artist)
    @name = name
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end 
  def self.all 
    @@all
  end

  def self.total_price
    total = @@all.map {|painting| painting.price}
    total.inject(:+)
  end

 
  

end

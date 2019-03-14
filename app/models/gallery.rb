class Gallery

  attr_accessor :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end 
  def self.all 
    @@all
  end
  def paintings
    Painting.all.select {|paintings| paintings.gallery == self}
  end
  def artists
    paintings.map {|painting| painting.artist}
  end
  def artist_names
    paintings.map {|painting| painting.artist.name}
  end
  def most_expensive_painting
    paintings.max_by {|painting| painting.price}
  end
end

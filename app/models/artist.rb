class Artist


 attr_accessor :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
 def self.all
  @@all
 end
 def create_painting(title, price, gallery)
  Painting.new(title, price, gallery, self)
 end

 def paintings
   Painting.all.select {|x| x.artist == self}
 end
 def galleries
  paintings.map {|x| x.gallery}
 end
 def cities
  paitings.map {|x| x.city}
 end

 def self.total_experience
  years = @@all.map {|artist| artist.years_experience}
  years.inject(:+)
 end

 def painting_per_year
  paintings.count.to_f / @years_experience.to_f
 end

 def self.most_prolific
   most = @@all.max_by {|x| x.painting_per_year}
   puts "#{most.name} with #{most.painting_per_year} per year of experience"
 end


 

end

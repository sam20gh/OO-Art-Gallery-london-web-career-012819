require_relative '../config/environment.rb'


 a1 = Artist.new("Sam", 21)
 a2 = Artist.new("Byron", 32)
 a3 = Artist.new("Harry", 49)



 g1 = Gallery.new("Modern","Milan")
 g2 = Gallery.new("tate Modern","London")
 g3 = Gallery.new("Louvre","Paris")


painting1 = Painting.new("MonaLisa",2000,g1,a1)
painting2 = Painting.new("Dinner",3000,g1,a1)
painting3 = Painting.new("Spring",3500,g3,a2)
painting4 = Painting.new("winter",3700,g3,a2)
painting5 = Painting.new("summer",7500,g2,a3)


binding.pry

puts "Bob Ross rules."

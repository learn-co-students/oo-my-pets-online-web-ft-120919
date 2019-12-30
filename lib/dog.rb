

class Dog
 
 attr_accessor :owner, :dog, :mood
 attr_reader :name

  @@all = []
 def initialize(name, owner= "Timmy")
   @name = name
   @owner = owner
   @mood = "nervous"
   @@all << self
 end
 
 def self.all
   @@all
 end


end

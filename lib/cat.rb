

class Cat
 
 attr_accessor :owner, :cat, :mood
 attr_reader :name

  @@all = []
 def initialize(name, owner= "Hermione")
   @name = name
   @owner = owner
   @mood = "nervous"
   @@all << self
 end
 
 def self.all
   @@all
 end


end

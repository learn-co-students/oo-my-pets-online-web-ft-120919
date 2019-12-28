

class Dog
 
 attr_accessor :owner, :dog, :mood
 attr_reader :name

  @@dog_all = []
 def initialize(name, owner= "Timmy")
   @name = name
   @dog = dog
   @owner = owner
   @mood = mood = "nervous"
   @@dog_all << self
 end
 
 def self.all
   @@dog_all
 end


end

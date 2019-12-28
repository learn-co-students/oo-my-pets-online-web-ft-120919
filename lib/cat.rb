

class Cat
 
 attr_accessor :owner, :cat, :mood
 attr_reader :name

  @@cat_all = []
 def initialize(name, owner= "Hermione")
   @name = name
   @cat = cat
   @owner = owner
   @mood = mood = "nervous"
   @@cat_all << self
 end
 
 def self.all
   @@cat_all
 end


end

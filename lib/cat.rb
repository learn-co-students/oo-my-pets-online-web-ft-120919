class Cat
  @@all = []
  attr_accessor :owner, :mood
  attr_reader :name, :species
  def initialize (name,owner)
   @name = name 
    @owner = owner 
    @mood = "nervous"
    @species = "cat"
    @@all << self
  end 
  def self.all
    @@all
  end 
end
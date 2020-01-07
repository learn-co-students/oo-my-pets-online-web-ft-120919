class Dog
  attr_accessor :owner, :mood
  attr_reader :name 
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    owner.pets << self
    @@all << self
  end
  
  #class methods
  
  def self.all
    @@all
  end
end
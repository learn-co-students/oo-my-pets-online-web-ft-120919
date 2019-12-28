class Owner

  attr_accessor :pets, :cat, :dog  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name= "Victoria")
    @name = name 
    @species = species= "human"
    @@all << self
    @pets = {:cats => [], :dogs => []}
  end
  
  def say_species
    p "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length 
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
     
  end
end
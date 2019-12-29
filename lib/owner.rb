require 'pry'

class Owner

  attr_accessor :pets, :owner, :cat, :dog  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name= "Victoria")
    @name = name 
    @species = "human"
    @@all << self
    @pets = {:cats => [], :dogs => []}
    @new_pets = [exit]
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
    Cat.all.select {|cat| self == cat.owner}
  end
  
  def dogs
    Dog.all.select {|dog| self == dog.owner}
  end
  
  def buy_cat(name)
  
    # binding.pry 
    
  end
    

   
    

end

# @cat.all.detect {|@cats| @cats << Cat.new(@name, @owner)} 
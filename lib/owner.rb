require 'pry'
class Owner
    attr_accessor :pet, :owner
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @owner = self
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    
   "I am a #{@species}."

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
    Cat.all.select {|cat| cat.owner == self }
    
  end
  def dogs
    Dog.all.select {|dog| dog.owner == self }
  end 
    def buy_cat(name)
      Cat.new(name,self)
      
    end 
    def buy_dog(name)
      Dog.new(name,self)
    end
    def walk_dogs
      Dog.all.each do |dog| dog.mood = "happy"
    end
    end
    def feed_cats
      Cat.all.each {|cat| cat.mood = "happy"}
    end
    def sell_pets
      dogs.each {|dog|
        dog.mood = "nervous"
        dog.owner = nil
      }
      cats.each {|cat|
        cat.mood = "nervous" 
        cat.owner = nil
      }
       
       
    end 
    def list_pets
      "I have #{owner.dogs.count} dog(s), and #{owner.cats.count} cat(s)."
    end 
end
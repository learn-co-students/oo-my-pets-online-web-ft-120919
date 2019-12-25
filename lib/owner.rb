require "pry"
class Owner
  # code goes here
  attr_accessor :cat, :dog
  
  attr_reader :name , :species
  
  @@all = []
  def initialize(name) 
    @name = name
    @@all << self
    @new_cats = []
    @new_dogs = []
  end
  
  def species
    @species = "human"
  end
 
  def say_species
    "I am a #{species}."
  end
 
  def cats
    Cat.all.select{|cat|cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog|dog.owner == self}
  end
 
  def buy_cat(name)
    @new_cats << Cat.new(name,self)
  end
  
  def buy_dog(name)
    @new_dogs << Dog.new(name,self)
  end

  
  def walk_dogs
    Dog.all.select do |dog|
      if dog.owner == self
        dog.mood = "happy"
      end
    end
  end
  
  def feed_cats
    Cat.all.select do |cat|
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end
  
  def sell_pets
   Dog.all.each do |dog|
      #if pet.owner == self
        dog.mood = "nervous"
        dog.owner = nil
     # end
   end
   Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
   end
  end

  def list_pets
    dog_count = @new_dogs.size
    cat_count = @new_cats.size

    "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end
end
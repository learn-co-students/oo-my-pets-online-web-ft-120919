require 'pry'
class Owner
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def species
    return "human"
  end

  def say_species
    return "I am a human."
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
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    name = Cat.new(name,self)
  end

  def buy_dog(name)
    name = Dog.new(name,self)
  end

  def walk_dogs
    Dog.all.map {|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.map {|cat| cat.mood = "happy"}
  end

  def sell_pets
    Dog.all.map {|dog| dog.mood = "nervous"}
    Cat.all.map {|cat| cat.mood = "nervous"}
    Dog.all.map {|dog| dog.owner = nil}
    Cat.all.map {|cat| cat.owner = nil}
  end

  def list_pets 
    owners_dogs = dogs 
    owners_cats = cats 
    
    
    return "I have #{owners_dogs.length} dog(s), and #{owners_cats.length} cat(s)."
  end




  #binding.pry




end
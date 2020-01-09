# know about their pet, buy a pet, change a pet's mood through
  #walking or feeding it, and sell all of their pets 

require 'pry'

class Owner
  
  attr_accessor :say_species, :dog, :cat, :mood, :owner
  attr_reader :name, :species 

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@count += 1
    save
  end

  def say_species 
    "I am a #{@species}."
  end

  def self.all 
    @@all
  end

  def save
    @@all << self
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
   Dog.new(dog_name, self)
  end

  def walk_dogs
    dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    dogs.each {|dog| dog.mood = "nervous"} #does change their mood
    cats.each {|cat| cat.mood = "nervous"} #does change their mood
    # dogs.each {|dog| dog.owner.clear} #doesn't work
    # cats.each {|cat| cat.owner.clear} #doesn't work
    dogs.each {|dog| dog.owner = nil} #not sure if this is the right way to do it
    cats.each {|cat| cat.owner = nil}
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

end
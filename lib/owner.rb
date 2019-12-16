require 'pry'

class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs  
  @@all = []

  def initialize(name)
    @name = name 
    @species = "human"
    @cats = []
    @dogs = []
    save
  end #init

  def save
    @@all << self 
  end #save

  def say_species
    "I am a human."
  end #say_species

  def self.all
    @@all
  end #self.all

  def self.count
    self.all.length 
  end #self.count

  def self.reset_all
    @@all.clear
  end #reset_all

  def buy_cat(name)
    #binding.pry
    the_cat = Cat.new(name, self)
    @cats << the_cat unless Cat.all.any?{|cat| cat.owner == self}
    #binding.pry 
  end #buy_cat

  def buy_dog(name)
    #binding.pry
    the_dog = Dog.new(name, self)
    @dogs << the_dog unless Dog.all.any?{|dog| dog.owner == self}
    #binding.pry
  end #buy_dog 

  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end #each
  end #walk_dogs

  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end #each
  end #feed_cats

  def sell_pets
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end #each

    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end #each

    cats.clear
    dogs.clear
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end #list_pets

end #class
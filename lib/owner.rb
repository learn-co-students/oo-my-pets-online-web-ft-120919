require 'pry'
class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
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
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
  
  def cats
    #returns a a collection of all the cats that belong to the owner
    Cat.all.select {|cat| cat.owner == self}
    
    # Cat.all.select {|cat| cat.owner == self}s
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    # Make a new instance of the appropriate pet, initializing it with 
    # that name and the owner who is purchasing it.
    binding.pry

  end

end
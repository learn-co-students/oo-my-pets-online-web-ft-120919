class Owner
  attr_reader :name, :species
  @@all = []

  def initialize (n)
    @name = n
    @species = "human"
    @@all << self
  end

  def self.all
    return @@all
  end

  def say_species
    "I am a #{@species}."
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def buy_cat (name)
    Cat.new(name, self)
  end

  def buy_dog (name)
    Dog.new(name, self)
  end

  def  walk_dogs
    self.dogs.each do |d|
      d.mood="happy"
    end
  end

  def feed_cats
    self.cats.each do |d|
      d.mood="happy"
    end
  end

  def sell_pets
    sell_species(self.cats)
    sell_species(self.dogs)
  end

  def sell_species (pets)
    pets.each do |p|
      p.mood = "nervous"
      p.owner=nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  end
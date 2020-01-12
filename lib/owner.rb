class Owner
  attr_accessor :owner
  attr_reader :species
  @@all = []
  def initialize(owner)
    @owner = owner
    @species = "human"
    @@all << self
  end
  # can have a name, cannot change name
  def name
    @owner
  end
  # initializes set to human, cannot change
  def species
    @species
  end
  # can say its species
  def say_species
    return "I am a #{@species}."
  end
  # class method, returns all owner instances
  def self.all
    @@all
  end
  # class method, returns number of owners
  def self.count
    @@all.length
  end
  # can reset owners
  def self.reset_all
    @@all.clear
  end
  # returns all cats of owner
  def cats
    Cat.all.select { |cats| cats.owner == self }
  end
  # returns all dogs of owner
  def dogs
    Dog.doggies.select { |dogs| dogs.owner == self }
  end
  # can buy a cat that is an instance of the cat class
  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy" }
  end

  def feed_cats
    self.cats.each { |cat| cat.mood = "happy" }
  end

  def sell_pets
    pets = self.dogs + self.cats

    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
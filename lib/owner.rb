class Owner
  attr_accessor :owner, :pets
  attr_reader :species
  @@all = []
  @@pets = {:dogs => [], :cats => [] }
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
    owner = self
    cat = Cat.new(name, owner)
    @@pets[:cats] << cat
  end

  def buy_dog(name)
    owner = self
    dog = Dog.new(name, owner)
    @@pets[:dogs] << dog
  end

  def walk_dogs
    @@pets[:dogs].map { |dog| dog.mood = "happy" }
  end

  def feed_cats
    @@pets[:cats].map { |cat| cat.mood = "happy" }
  end

  def sell_pets
    @@pets.collect do |pet, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end

  def list_pets
    num_dogs = @@pets[:dogs].size
    num_cats = @@pets[:cats].size
    return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
end
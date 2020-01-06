class Owner
  attr_reader :name, :species
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@count 
  end

  def self.reset_all
    @@count = 0
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    all_pets = self.cats.zip(self.dogs)
    all_pets.each do |cat, dog|
      cat.mood = "nervous"
      cat.owner = nil
      dog.mood = "nervous"
      dog.owner = nil
    end
  end

  def list_pets
    dog_array = self.dogs
    cat_array = self.cats
    "I have #{dog_array.length} dog(s), and #{cat_array.length} cat(s)."
  end
end
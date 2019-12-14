class Owner
  # code goes here
  @@all = []
  attr_reader :name, :species
  def initialize(name)
    @name = name
    @species = "human"
    save
  end

  def save
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select{|c| c.owner == self}
  end

  def dogs
    Dog.all.select{|c| c.owner == self}
  end

  def buy_cat(name)
    c = Cat.new(name, self)
  end

  def buy_dog(name)
    c = Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each{ |dog|
            dog.mood = "happy"
    }
  end

  def feed_cats
    self.cats.each{ |cat|
            cat.mood = "happy"
    }
  end

  def sell_pets
    self.cats.each{|pet|
      pet.mood = "nervous"
      pet.owner = nil
    }
    self.dogs.each{|pet|
      pet.owner = nil
      pet.mood = "nervous"
    }
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{
    self.cats.length} cat(s)."
  end

end

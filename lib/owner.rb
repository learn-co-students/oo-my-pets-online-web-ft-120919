class Owner

  attr_reader :owner, :name, :species
  @@all = []
  def initialize(name)
    @owner = self
    @@all << @owner
    @name = name
    @species = "human"
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
    @@all = []
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    Dog.all.each.collect{|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.each.collect{|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.dogs.each.collect{|pet| pet.mood = "nervous" 
                                pet.owner = nil}
    self.cats.each.collect{|pet| pet.mood = "nervous" 
                                pet.owner = nil}
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end






end
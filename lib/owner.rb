class Owner
  attr_accessor :pets
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = []
    @@all << self
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def cats
    @pets.select {|pet| pet.class == Cat}
  end
  
  def dogs 
    @pets.select {|pet| pet.class == Dog}
  end
  
  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def list_pets 
    "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
  end
  
  def sell_pets
    @pets.each do |pet| 
      pet.mood = "nervous"
      pet.owner = nil
    end
    @pets = []
  end
  
  # class methods
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
end
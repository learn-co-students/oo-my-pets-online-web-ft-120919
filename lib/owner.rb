class Owner
  # code goes here
  attr_reader :name, :species, :owner


    @@all = []

    def initialize(name)
      @name = name 
      @species = "human" 
      @@all << self

    end 

    def say_species
      @species = "I am a human."
    end 

    def self.all
      @@all 
    end

    def self.count
      @@all.length
    end 
      
    def self.reset_all
      @@all.clear
    end

    def cats
      Cat.all.select {|cat| cat.owner == self}
    end 

    def dogs 
      Dog.all.select {|dog| dog.owner == self}
    end 

    def buy_cat(name)
      Cat.new(name, self)
    end 

    def buy_dog(name)
      Dog.new(name, self)
    end 

    def walk_dogs
      Dog.all.collect {|dog| dog.mood = "happy"}
    end 

    def feed_cats
      Cat.all.collect {|cat| cat.mood = "happy"}
    end 

    def sell_pets
      self.dogs.each.collect {|dog| dog.mood = "nervous" 
      dog.owner = nil}
      self.cats.each.collect {|cat| cat.mood = "nervous" 
      cat.owner = nil}
    end 

    def list_pets
       "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end 

    

  end 










# it ".reset_all can reset the owners that have been created" do
#   Owner.reset_all
#   expect(Owner.count).to eq(0)

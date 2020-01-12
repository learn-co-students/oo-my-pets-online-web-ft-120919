class Dog
  # initializes with changable owner and mood, nonchangeable name
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []
  @@dog_names = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    @@dog_names << name
  end
  # keeps track of all dog names
  def self.all
    @@dog_names
  end
  # keeps track of dogs and owners
  def self.doggies
    @@all
  end
end
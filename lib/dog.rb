class Dog

  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def initialize(cat, owner)
    @name = cat
    @owner = owner
    @mood = "nervous"
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
  # code goes here
end
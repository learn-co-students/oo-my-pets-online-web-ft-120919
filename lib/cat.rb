class Cat
  # code goes here
  @@all = []
  attr_reader :name
  attr_accessor :owner, :mood
  def initialize(name, owner)
    @owner = owner
    @name = name
    @mood = "nervous"
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end

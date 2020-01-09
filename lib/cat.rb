class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  attr_writer

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end

  def self.all #class method
    @@all
  end

  def save #class method
    @@all << self
  end



end
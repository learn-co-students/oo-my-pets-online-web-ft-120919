class Cat
  # initializes with name,an Owner, and mood. can change owner not name
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  # class method, knows all cats
  def self.all
    @@all
  end

end
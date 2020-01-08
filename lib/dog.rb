class Dog
  attr_accessor  :owner , :mood
  @@all = []
  attr_reader :name

  def initialize(n, o)
    save
    @name = n
    @owner = o
    @mood="nervous"
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end
end
require 'pry'
class Cat
  attr_accessor  :owner , :mood
  @@all = []
  attr_reader :name

  def initialize(n, o)
    save
    @name = n
    @owner = o
    @mood="nervous"
    #binding.pry
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end
end
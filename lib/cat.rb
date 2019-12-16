class Cat
  attr_reader :name
  attr_accessor :owner, :mood  
  @@all = [] 

  def initialize(name, owner)
    @name = name
    @owner = owner 
    @mood = "nervous"
    save
  end #init
  
  def save
    @@all << self 
    self.owner.cats << self
  end #save

  def self.all
    @@all 
  end #self.all

end #class 
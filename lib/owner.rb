class Owner
  attr_accessor :owner, :pets
end 	      attr_reader :name, :species

      @@owners = [ ]

      def initialize(name)
           @name = name
           @species = "human"
           @owner = self
           @@owners << self
           @pets = [ ]
      end

      def say_species
          "I am a #{@species}."
      end

      def self.all
          @@owners
      end

      def self.count
          self.all.count
      end

      def self.reset_all
          self.all.clear
      end

      def pets=(pet)
          @pets << pet
      end

      def cats
          @pets.each {|pet| pet.class == Cat}
      end


      def dogs
          @pets.each {|pet| pet.class == Dog}
      end

      def buy_cat(name)
          Cat.new(name, self)
      end

      def buy_dog(name)
          Dog.new(name, self)
      end

      def walk_dogs
          self.dogs.each {|dog| dog.mood = "happy"}
      end

      def feed_cats
          self.cats.each {|cat| cat.mood = "happy"}
      end

      def sell_pets
          @pets.each {|pet| pet.mood = "nervous"}
          @pets.each {|pet| pet.owner = nil}
          @pets.clear
      end

      def list_pets
          "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
      end

    end 
end
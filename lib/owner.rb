require 'pry'
class Owner

  attr_reader :species, :name, :say_species
  attr_accessor :pets
  @@all = []
#  @@count = 0
  def initialize(name)
 @species = "human"
    @name = name
    @@all << self
   # @@count += 1
   @pets = { :dogs => [], :cats => []}
  end
  
  def say_species
    # binding.pry
   "I am a #{@species}."
  
  end

 def self.all
   @@all
 end
 
 def self.count
   @@all.count
 end
 
def cats
  Cat.all.select {|cat| cat.owner == self }
end
def dogs
  Dog.all.select {|dog| dog.owner == self }
end
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name,self)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name,self)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

   def sell_pets
    @pets.each do |ignore_this, name|
      name.each do |pet|
        pet.mood = "nervous"
       pet.owner = nil
      # binding.pry
      end 
    end
   
  end
    
   

  def list_pets
    "I have #{@pets[:dogs].length/2} dog(s), and #{@pets[:cats].length/2} cat(s)."
  end

def feed_cats
   @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
end

  def self.reset_all
    self.all.clear
  end

 
 
 
end
class Owner
  attr_accessor :pets, :name, :mood
  attr_reader :species
  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    self.all.clear
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end
  
  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end
  
  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end
  
  def sell_pets
    @pets.each{|pet_type, pet| @pets[pet_type].each { |pet| pet.mood = "nervous" }}
    @pets.clear
  end
  
  def list_pets
    return "I have #{} dog(s), #{} cat(s)"
  end
end
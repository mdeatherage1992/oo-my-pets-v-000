require "pry"
class Owner
  attr_accessor :name, :pets,:fishes,:dogs,:cats,:owner
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human".freeze
    @pets = {:fishes => [],:dogs => [],:cats => []}
    save
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |type|
      binding.pry
      pets[type].each do |pet|
        pet.mood = "nervous"
      end
    end
  end













  def buy_fish(fish)
    fish = Fish.new(fish)
    pets[:fishes] << fish
    save
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    pets[:dogs] << dog
    save
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    pets[:cats] << cat
    save
  end

  def say_species
  "I am a #{@species}."
  end

  def species
    @species
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.reset_all
    @@all.clear
  end
  def self.count
    @@all.size
  end

end

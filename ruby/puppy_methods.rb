class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    "Woof!" * integer
  end

  def roll_over
    "*rolls over*"
  end

  def dog_years(integer)
    dog_age = integer * 7
    dog_age
  end

  def swim
    "*splash*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end
end

mango = Puppy.new

p mango.fetch("ball")
p mango.speak(4)
p mango.roll_over
p mango.dog_years(3)
p mango.swim

class Pokemon
  def initialize
    puts "Initializing new Pokemon..."
  end

  def evolve
    "Evolved!"
  end

  def heal(integer)
    "Healed by #{integer} points!"
  end
end

squirtle = Pokemon.new
p squirtle.heal(15)
p squirtle.evolve

count = 0
pokedex = []

while count < 50
  pokemon = Pokemon.new
  pokedex << pokemon
  count += 1
end

pokedex.each do |pokemon|
  p pokemon.evolve
  p pokemon.heal(5)
end

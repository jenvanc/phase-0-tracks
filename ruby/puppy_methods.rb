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

end

Mango = Puppy.new

p Mango.fetch("ball")
p Mango.speak(4)
p Mango.roll_over
p Mango.dog_years(3)
p Mango.swim

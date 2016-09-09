class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "Woof!" * int
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(int)
  	dog_years = int * 7
  	puts dog_years
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end
end

luna = Puppy.new

luna.fetch("ball")
luna.speak(2)
luna.roll_over
luna.dog_years(5)

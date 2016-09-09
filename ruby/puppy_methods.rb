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


class Cat
	def initialize
		puts "People like to look at cats online"
	end

	def purr
		puts "purr" + "!!!"
	end

	def uses_sandbox
		puts "uses sandbox" *5
	end
end

crazy_cat_lady = []
count = 0

while count < 50
  cat = Cat.new
  crazy_cat_lady << cat
  count += 1
end

crazy_cat_lady.each do |cat|
  cat.uses_sandbox
  cat.purr
end

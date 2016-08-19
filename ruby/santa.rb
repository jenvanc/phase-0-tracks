class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}."
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = [
      "Rudolph", "Dasher", "Dancer",
      "Prancer", "Vixen", "Comet",
      "Cupid", "Donner", "Blitzen"
    ]
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    placement = @reindeer_ranking.index(reindeer)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(placement))
  end
end

genders = [
  "agender", "female", "bigender",
  "male", "female", "gender fluid",
  "genderless", "intergender", "nonbinary",
  "polygender", "transgender", "butch",
    ]

ethnicities = [
  "black", "Latino", "white",
  "Japanese-African", "Mystical Creature (unicorn)", "N/A",
  "Bengali", "Dutch", "French",
  "Korean", "Arabic", "Portugese"
  ]

# kringle = Santa.new("male", "white")
#
# kringle.speak
# kringle.eat_milk_and_cookies("lemon crinkle")
# kringle.get_mad_at("Dasher")
# kringle.gender = "agender"
# kringle.celebrate_birthday
#
# p kringle
# p kringle.age
# p kringle.ethnicity
santas = []

100.times do
  santas << Santa.new(genders[rand(10)], ethnicities[rand(12)])
end

santas.each do |santa|
  santa.age = rand(200)
  puts "This santa is #{santa.age} years old."
  puts "This santa is #{santa.gender} and #{santa.ethnicity}"
end

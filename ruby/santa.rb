class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

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

santas = []

genders = [
  "agender", "female", "bigender",
  "male", "female", "gender fluid",
  ]

ethnicities = [
  "black", "Latino", "white",
  "Japanese-African", "Mystical Creature (unicorn)", "N/A",
  ]

8.times do
  santas << Santa.new(genders[rand(3)], ethnicities[rand(2)])
end

p santas

kringle = Santa.new("male", "white")

kringle.speak
kringle.eat_milk_and_cookies("lemon crinkle")
kringle.get_mad_at("Dasher")
kringle.gender = "agender"
kringle.celebrate_birthday

p kringle
p kringle.age
p kringle.ethnicity

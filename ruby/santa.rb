class Santa
  attr_accessor :age, :gender
  attr_reader :ethnicity

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

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}."
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end

end

nick = Santa.new("female", "Arabic")
p nick
nick.speak
nick.celebrate_birthday
nick.eat_milk_and_cookies("sugar cookie")
nick.get_mad_at("Dancer")
nick.gender = "male"

p nick.age
p nick

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

santas = []

100.times do
  santas << Santa.new(genders[rand(11)], ethnicities[rand(13)])
end

santas.each do |santa|
  santa.age = rand(141)
  puts "This santa is #{santa.age} years old."
  puts "This santa is #{santa.gender} and #{santa.ethnicity}"
end

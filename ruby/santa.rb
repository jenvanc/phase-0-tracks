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

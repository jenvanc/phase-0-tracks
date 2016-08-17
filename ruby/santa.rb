class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}."
  end

  def initialize
    puts "Initializing Santa instance..."
  end

end

kringle = Santa.new

kringle.speak
kringle.eat_milk_and_cookies("lemon crinkle")

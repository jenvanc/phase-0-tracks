module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + ". Yay!" + " :)"
  end
end

p Shout.yell_angrily("Unbelievable")
p Shout.yelling_happily("Unbelievable")

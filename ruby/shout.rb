# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#     words + ". Yay!" + " :)"
#   end
# end
#
# p Shout.yell_angrily("Unbelievable")
# p Shout.yelling_happily("Unbelievable")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + ". Yay!" + " :)"
  end
end

class Parent
  include Shout
end

class Child
  include Shout
end

mom = Parent.new
p mom.yell_angrily("Clean up your room")
p mom.yelling_happily("You got an 'A'")

daughter = Child.new
p daughter.yell_angrily("I can't believe you grounded me")
p daughter.yelling_happily("I got a date to Prom")

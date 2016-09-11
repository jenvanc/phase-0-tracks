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

class Republican
  include Shout
end

class Democrat
  include Shout
end

clinton = Democrat.new
p clinton.yell_angrily("Temper, temper, temper")
p clinton.yelling_happily("I won the nomination")

trump = Republican.new
p trump.yell_angrily("There’s nobody bigger or better at the military than I am")
p trump.yelling_happily("Make America great again")

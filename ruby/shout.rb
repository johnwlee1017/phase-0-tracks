
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!" + " :)"
#   end
# end

# p Shout.yell_angrily("grrr")
# p Shout.yelling_happily("yay")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!" + " :)"
  end
end

class Audience
  include Shout
end

class Instructor
  include Shout
end

audience = Audience.new
p audience.yell_angrily("ahhh")
p audience.yelling_happily("wow")

instructor = Instructor.new
p instructor.yell_angrily("nooo")
p instructor.yelling_happily("great")





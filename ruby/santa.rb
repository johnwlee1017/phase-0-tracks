class Santa
  attr_reader :reindeer_ranking, :age
  attr_accessor :gender, :ethnicity

  def initialize(gender,ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(1..140)
  end

  def speak
    puts "Ho, ho, ho! Happy Holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    p @age + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.insert(-1,reindeer_name)
    p @reindeer_ranking
  end

end

santa = Santa.new("male", "korean")

santa.speak
santa.eat_milk_and_cookies("oreo")
santa.get_mad_at("Vixen")
santa.gender = "random gender"
santa.celebrate_birthday
p santa.ethnicity


santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
genders.length.times do
  santas << Santa.new(genders.sample, ethnicities.sample)
end

p santas[0].ethnicity
p santas[0].age
p santas[0].gender
p santas[0].gender = "test gender"
p santas[0]
santas[0].get_mad_at("Rudolph")










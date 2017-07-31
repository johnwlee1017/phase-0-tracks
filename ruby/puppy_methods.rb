class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times { puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years_to_human_years(human_years)
    dog_years = human_years * 7
    puts dog_years
  end

  def shake
    puts "*shakes hand*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end
end

fido = Puppy.new

fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years_to_human_years(4)
fido.shake

class Cat

  def initialize
    puts "Initializing.."
  end

  def meow
    puts "*meow*"
  end

  def play(toy)
    puts "Playing with #{toy}"
  end

end

cat_array =[]
50.times { cat_array << Cat.new }
p cat_array

cat_array.each do |instance|
  instance.play("mice")
  instance.meow
end






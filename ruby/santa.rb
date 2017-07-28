class Santa

  def speak
    puts "Ho, ho, ho! Happy Holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize
    puts "Initializing Santa instance ..."
  end

end

john = Santa.new

john.speak
john.eat_milk_and_cookies("oreo")

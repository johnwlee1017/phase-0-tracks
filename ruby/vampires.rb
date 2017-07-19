
puts "How many employees will be processed?"
employee_count = gets.chomp.to_i

until employee_count == 0

  puts "What is your name?"
  employee_name = gets.chomp

  # determine if employee name is known vampire name
  if employee_name == "Drake Cula"
    vampire_name = true
  elsif employee_name == "Tu Fang"
    vampire_name = true
  else
    vampire_name = false
  end

  puts "How old are you?"
  employee_age = gets.chomp.to_i

  puts "What year were you born?"
  employee_bornyear = gets.chomp.to_i

  # determine right_age
  if employee_age == 2017 - employee_bornyear
    right_age = true
  else
    right_age = false
  end

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic_bread = gets.chomp
  if garlic_bread == "y"
    garlic_bread = true
  else
    garlic_bread = false
  end

  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  insurance = gets.chomp
  if insurance == "y"
    insurance = true
  else
    insurance = false
  end

  allergies = false
  until allergies
    puts "Any allergies? (name one at a time)"
    allergies = gets.chomp

    if allergies == "done"
      allergies = true
    elsif allergies == "sunshine"
      puts "Probably a vampire"
      allergies = true
    else
      allergies = false
    end
  end

  if vampire_name
    puts "Defintely a vampire"
  elsif right_age && (garlic_bread || insurance)
    puts "Probably not a vampire"
  elsif !right_age && (!garlic_bread || !insurance) && (  garlic_bread || insurance)
    puts "Probably a vampire"
  elsif !right_age && !garlic_bread && !insurance
    puts "Almost certainly a vampire"
  else
    puts "Results inconclusive"
  end
  employee_count -= 1
end

puts "Actually never mind! What do these questions have to do with anything? Let's all be friends."



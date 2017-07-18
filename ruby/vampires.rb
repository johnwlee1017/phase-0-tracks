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

if vampire_name
  puts "Defintely a vampire"
elsif right_age && (garlic_bread || insurance)
  puts "Probably not a vampire"
elsif !right_age && (!garlic_bread || !insurance) && (garlic_bread || insurance)
  puts "Probably a vampire"
elsif !right_age && !garlic_bread && !insurance
  puts "Almost certainly a vampire"
else
  puts "Results inconclusive"
end




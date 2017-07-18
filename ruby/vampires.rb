puts "What is your name?"
employee_name = gets.chomp

puts "How old are you?"
employee_age = gets.chomp.to_i

puts "What year were you born?"
employee_bornyear = gets.chomp.to_i

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




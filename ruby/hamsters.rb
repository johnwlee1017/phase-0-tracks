puts "Name?"
name = gets.chomp

puts "Volume level from 1 to 10?"
volume = gets.chomp.to_i

puts "Fur color?"
fur_color = gets.chomp

puts "Good candidate for adoption? (y/n)"
good_candidate = gets.chomp

if good_candidate == "y"
  good_candidate = true
  good_candidate = "YES"
else good_candidate
  good_candidate = false
  good_candidate = "NO"
end

puts "Estimated age?"
age = gets.chomp

if age == ""
  age = nil
else
  age = age.to_i
end

puts "Name: #{name}"
puts "Volume Level: #{volume}"
puts "Fur color: #{fur_color}"
puts "Good candidate for adoption: #{good_candidate}"
puts "Estimate age: #{age}"

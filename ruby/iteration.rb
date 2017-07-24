cartoon_dogs = {
  snoopy: "peanuts",
  scrappy: "scoobydoo",
  pluto: "disney",
  brian: "family guy"
}

letters = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6
}

numbers = [1, 2, 3, 4, 5, 6]
new_numbers = []

# Release 1

cartoon_dogs.each do |name, show|
  puts "#{name} is from #{show}"
end

numbers.each do |x|
  p x + 3
end

numbers.map do |x|
  new_numbers << x + 1
end

p new_numbers

numbers.map! do |x|
  x + 1
end

p numbers

# Release 2

# 1.)
# Array
numbers.delete_if { |x| x < 4 }
p numbers
# Hash
letters.delete_if { |letter, number| letter >= "e" }
p letters

# 2.)
# Array
numbers.keep_if { |x| x < 7 }
p numbers

# Hash
letters.keep_if { |letter, number| letter > "b"}
p letters

# 3.)
# Array
numbers.select! { |x| x.even? }
p numbers

# Hash
letters.select! { |letter, number| letter > "c"}
p letters

# 4.)
num = [1, 2, 3, 4, 5, 6, 7, 0]
new_num = []

new_num = num.drop_while { |x| x < 4 }
p new_num





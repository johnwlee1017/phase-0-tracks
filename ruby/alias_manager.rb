# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
####
# Take the string (name) and downcase, and split the string into two separate words and then reverse/swap the words.
# Split the full string into individual characters in array.
# Write statement for each vowel to become the next vowel(ex. a = e) and also to have consonant to skip vowel. Then change all characters to next letter in the alphabet.
# Combine/join all the characters to form one string (full name). Capitalize only first letter of first and last name.


def fake_name(full_name)
  last_first_name = full_name.split(' ').reverse

  split_name = last_first_name.join(' ').split('')

  next_letter = split_name.map! do |letter|
    if letter == "a"
      "e"
    elsif letter == "e"
      "i"
    elsif letter == "i"
      "o"
    elsif letter == "o"
      "u"
    elsif letter == "u"
      "a"
    elsif letter == "z"
      "b"
    elsif letter == "d"
      "f"
    elsif letter == "h"
      "j"
    elsif letter == "n"
      "p"
    elsif letter == "t"
      "v"
    elsif letter == "E"
      "I"
    elsif letter == "I"
      "O"
    elsif letter == "O"
      "U"
    elsif letter == "U"
      "A"
    elsif letter == "Z"
      "B"
    elsif letter == "D"
      "F"
    elsif letter == "H"
      "J"
    elsif letter == "N"
      "P"
    elsif letter == "T"
      "V"
    elsif letter == " "
      " "
    else
      letter.next
    end
  end

  final_name = next_letter.join('')

  p final_name
end

# User Interface:

user_input = ""
full_name_array = []
fake_name_array = []
until user_input == "quit"
  puts "what is your full name?"
  user_input = gets.chomp

  full_name_array << user_input
  fake_name_array << fake_name(user_input)
end

p full_name_array
p fake_name_array

hash = full_name_array.zip(fake_name_array).to_h
hash.delete("quit")

p hash

hash.each { |name, fake| puts "#{name} is also known as #{fake}"}















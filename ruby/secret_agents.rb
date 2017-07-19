#Encrypt
# 1. Create a method with a string variable
# 2. Open a loop active until reaching the lenght of the string
# 3. Set .next method to each index value of the string
# 4. Call method

def encrypt(str)
  str_count = 0
  str_actual = ""
  until str_count == str.length
    if str[str_count] == "z"
      str_actual += "a"
    else
      str_actual += str[str_count].next
    end
  str_count += 1
  end
  encrypt = str_actual
end

#Decrypt
#1. Create method with a string variable
#2. Open loop activ euntil reaching the length of a string
#3. Create a variable with all the letters of the alphabet
#4. Look for the index -1 in the alphabet variable
#5. Add up letters until creating string
#6. Call method

def decrypt(str)
  str_count = 0
  str_actual = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  until str_count ==str.length
    str_actual += alphabet[alphabet.index(str[str_count])-1]
    str_count += 1
  end
  encrypt = str_actual
end

# This nested method works because the output of the nested method is a string, which is valid input for the parent method.

# OUR DRIVER CODE:

# Ask agent if s/he wants to decrypt or encrypt
puts "Do you want to encrypt or decrypt a password?"
user_operation = gets.chomp

# Ask agent for the password to encrypt/decrypt
puts "What is your password?"
user_password = gets.chomp

# Print decrypted/encrypte password
if user_operation == "decrypt"
  puts decrypt(user_password)
elsif user_operation == "encrypt"
  puts encrypt(user_password)
else
  puts "Didn't understand"
end






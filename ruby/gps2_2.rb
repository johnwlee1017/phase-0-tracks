# GPS 2.2 - 8/1/2017
# PAIRING WITH: Jamie Degnan
# GUIDE: Davina Pasiewicz

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Convert input into an array and separate into their own index points by using #split
  # use default quantity of one
  # print the list to the console using a print_list() method
# output: Output should come from a hash using item => number as key => value pairs

def create_list(string_list)
  hash_list = {}
  array_list = string_list.split(' ')
  array_list.each do |item|
    hash_list[item] = 1
  end
  hash_list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Define method that takes 3 parameters, one for the list name, one for the item name, and an optional for quantity otherwise quantity is 1
# output: pushing the hash name, key and value (item and quantity) to the hash that's holding that named list.

def add_item(hash_list , item_name , item_quantity)
  hash_list[item_name] = item_quantity
  hash_list
end

# Method to remove an item from the list
# input: a string of which item should be removed, and also the list(hash) of where to access it from
# steps: locate that item in the hash where it sits, and delete that item from that list
# output: new hash with the item removed

def remove_item(hash_list, item_name)
  hash_list.delete(item_name)
  hash_list
end


# Method to update the quantity of an item
# input: hash list, item, updated quantity
# steps: locate the item in the hash list, and then set that item = to the new quantity
# output: new hash with updated quantity
def update_item_quantity(hash_list , item_name , item_quantity)
  hash_list[item_name] = item_quantity
  hash_list
end



# Method to print a list and make it look pretty
# input: hash we want to print
# steps: iterate through the hash with key value pairs so that we can print everything out nicely.
# output: Formatted list to the console

def print_list(hash_list)
  puts "Grocery List".center(27)
  hash_list.each do |key, value|
    puts "#{key.capitalize.ljust(10)} ........... #{value.to_s.rjust(5)}"
  end
end


###########################
###### Driver Code #######
###########################

new_list = create_list("lemonade tomatoes onions")
add_item(new_list, "Ice Cream", 2)
remove_item(new_list, "tomatoes")
update_item_quantity(new_list, "onions", 3)
print_list(new_list)


###########################
###### Reflection #######
###########################

# What did you learn about pseudocode from working on this challenge?
# Pseudocoding helps break down the problem into words to help write your code for each step.
# What are the tradeoffs of using arrays and hashes for this challenge?
# Using an array helped with converting strings into separate items/elements which we can use to make a hash.
# What does a method return?
# A method returns the last line of code in the method.
# What kind of things can you pass into methods as arguments?
# You can pass in pretty much anything (strings, integers, arrays, hashses) and also other methods.
# How can you pass information between methods?
# You need to have a variable that has equal to the return value of a method, so you can use the variable in other methods.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# Manipulating arrays and hashes were solidified in this challenge and also iterating through them. I can't think of a concept in this challenege that is still confusing.

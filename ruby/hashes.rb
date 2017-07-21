# Ask user/designer questions to store details of the client in a hash.
# Set each detail/question as key (symbol) and user input as value for the key (symbol).
# Convert user input to appropriate data type.
# Print (p) hash back to the screen when user is finished
# Ask user if want to update key (symbol) with different value. If user types "done" then skip, but if user enters key (input will be string) then ask user for new value and then update the key (symbol) - convert string into symbol.
# Print the latest version of the hash.

puts "Client's name:"
client_name = gets.chomp

puts "Client's age:"
client_age = gets.chomp

puts "Number of children:"
children_number = gets.chomp

puts "Decor theme:"
decor_theme = gets.chomp

puts "Is client local (y/n):"
local_client = gets.chomp
if local_client == "y"
  local_client = true
else
  local_client = false
end

client_profile = {}
client_profile[:name] = client_name
client_profile[:age] = client_age.to_i
client_profile[:children_count] = children_number.to_i
client_profile[:theme] = decor_theme
client_profile[:local] = local_client

p client_profile

puts "Update client information - enter key:"
  key = gets.chomp

if key != "done"
  puts "Update client information - enter value:"
    value = gets.chomp
    client_profile[key.to_sym] = value
end

p client_profile












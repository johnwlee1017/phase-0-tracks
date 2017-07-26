#1. Create a method with arguments array and integer
#2. Build in the method that searchs for the integer entered and gives its position
#3. Add interface for user to enter array and integer to look for
#4. Print results

def search_array(arr, x)
  index_count = 0
  index_result = 0
  until index_count == arr.length
    if arr[index_count] == x
      index_result = index_count
    end
    index_count += 1
  end
  search_array = index_result
end

#Ask user for array

puts "Give me a set of numbers. (#,#...)"
 arr_input= gets.chomp
 arr = arr_input.split(',')
  arr.map! do |integer|
  integer.to_i
  end

#Ask user for number to look in the array

puts "What number are you looking for?"
  x= gets.chomp.to_i

#Print position of the number in the array if the number exists in the array

if arr.include?(x) == true
  puts "your number is in position #{search_array(arr,x)}"
else
  puts "your number is not in the array"
end
# Release 0:

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

##############

# Release 1:

# 1. Create a Fibonacci array
# 2. Create a method with one argument
# 3. Within the method, create a loop that runs until the array equals to the sum of the previous 2 elements to the array.
# 4. Add user interface to give x.

def fib(x)
  fib = [0,1]
  index_count = 0
  until index_count == x - 2
    fib << (fib[index_count] + fib[index_count + 1])
    index_count += 1
  end
 p fib
end

# Add user interface:

puts "What Fibonacci number do you want?"
user_fib = gets.chomp.to_i

fib(user_fib)

##############

# Release 2:

# Create a method for bubble sort.
# Create a variable for the array length.
# Create a condition until it's no longer changes (list is sorted).
# Swap letter/numbers when not in order.
# Print sorted array.

def bubble_sort(array)
  n = array.length
  swap_count = 0
  swap = 1
    until swap_count == swap
    swap_count = swap
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swap += 1
      end
    end
  end
  array
end

test_array=["a","e","d","b","c","f"]

p bubble_sort(test_array)




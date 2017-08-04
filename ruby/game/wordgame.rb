# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# Pseudocode:
# In initialize, set @guess_amount, @correct_word(as array), @user_input

# Method to convert correct_word to dashes
# input: correct_word(array)
# steps: get length of array. create new dash array with "_" as elements in the array, and same length as correct_word array.
# output: new array(dashes)

# Method to display correct letter from user input
# input: correct_word(array), dashes(array), user_input(single string)
# steps: if user_input is inside(.include?) the correct_word, then find the position(index) of the letter in the correct_word array. (if multiple positions of same letter, then iterate through correct_word to get positions(array)). with the position(index) of the letter, change the letter in the same position in the dashes array. then display the dashes array as a string (change array to string using join).
# output: dashes (as string)

# Method to complete match
# input: dashes_array,
# steps: if dashes_array has no more dashes ("_") then display congrats message.
# output: string (display congrats message)


class WordGame
  attr_accessor :guess_amount, :correct_word, :user_input, :dashes_array, :dashes_updated

  def initialize # you dont the below since it is in attr_accessor(read and write)
    # @guess_amount = guess_amount
    # @correct_word = correct_word
    # @user_input = user_input
    # @dashes_array = dashes_array
    # @dashes_updated = dashes_updated
  end

  def correct_word_to_dashes
    dashes_count = @correct_word.length
    dashes = []
    dashes_count.times { dashes << "_" }
    dashes
  end

  def display_correct_letter
    if @correct_word.include?(@user_input)
      position = @correct_word.each_index.select { |i| @correct_word[i] == @user_input }

      position.each { |i| @dashes_array[i] = @user_input }
      @dashes_array.join
    else
      @dashes_array.join
    end
  end

  def complete_match
    if @dashes_array.include?("_") == false
      puts "Congrats you win!"
      complete = true
    end
  end
end

wordgame = WordGame.new

puts "Provide word: "
correct_word = gets.chomp
wordgame.correct_word = correct_word.split("")
wordgame.guess_amount = correct_word.length
wordgame.dashes_array = wordgame.correct_word_to_dashes

guess_count = 0
complete = false
user_input = []
until (guess_count == wordgame.guess_amount) || wordgame.complete_match
  puts "Guess letter: "
  wordgame.user_input = gets.chomp

  if user_input.include?(wordgame.user_input)
    guess_count -= 1
  end

  user_input << wordgame.user_input

  p wordgame.display_correct_letter
  guess_count += 1

  if guess_count == wordgame.guess_amount
    puts "You lose, game over!"
  end
end













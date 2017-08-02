# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# Pseudocode:
# Create method for guesses allowed. Test method with rspec (fail first). Add code in guesses allowed method: find length of the word.
# Create method for display current state. Test method with rspec (fail first). Add code in display current state method: convert correct word to "-" and display to user. if a letter in the position (from user) matches letter in the correct word, then display letter in the correct position.
# Create method for complete match. Test method with rspec(fail first). Add code in complete match method: if no "-" then complete match is true, then display to user a congrats message. If guesses allowed become 0 and match is false, then display to user a losing message.


class WordGame
  def initialize
    @correct_word = "word" #gets.chomp
  end

  def guesses_allowed(correct_word)
    correct_word.length
  end

  def display_current_state(user_word)
  end


end
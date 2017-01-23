#define a class that creates a word guessing game. Instance variables 
#of word, word length, guessed letters and correct letters.
class WordGame
  attr_reader :word, :word_length, :guessed_letters, :correct_letters

  @guess_counter = 0

#Initalize method to set # of guesses as the same # of letters in the #word. A guessed letter array, and the original word split into an #array.
  
  def initialize(word)
    @word = word
    @word_length = @word.length
    @correct_letters = @word.split(//)
    @guessed_letters = [""]
    @guessed_letters = @guessed_letters.cycle.take @word.length
  end
  
  #A method that iterates through word and if the user selects a correct #letter, then correct letter returns to guessed letters array.
  
  def letter_match(letter)
    @correct_letters.each_with_index do |correct_letter, index|
      if @correct_letter == letter
        @guessed_letters << letter
      end
    end
end 

#A winner method that sees if correct letters is the same as guessed letters and returns a message.
  
  def winner
    if @correct_letters.join == @guessed_letters.join
      p "that's great!"
    elsif @guess_counter > 5
      p "sorry you lost, but it'll be ok."
    else
      "try again!"
    end
  end
end

# Driver code that sees if any of this works, and it doesnt.

puts "User 1, type in a word:"
input = gets.chomp
game = Game.new("#{input}")
puts "User 2, your word is #{input.length} letters long and you have #{input.length} guesses"
puts "guess a letter:"
letter_input = gets.chomp
game.letter_match(letter_input)
#define a class that creates a word guessing game. Instance variables 
#of word, displayed string, guesses count and if over.
class WordGame
  attr_reader :word, :display_string, :is_over
  attr_accessor :guess_count
  def initialize(word)
    @word = word
    @guess_count = 0
    @is_over = false
  end
  
  ##Method that prints off dashes for characters.
  def dashes
    '_ ' * @word.length
  end
  # Method that sets total guesses as word length.
  def total_guesses
    total_guesses = @word.length
    @total_guesses = total_guesses
  end
# Method that puts in guessed letters and iterates through original word
# to see if letter is in string. If in string, sends letter to array of
# displayed letters. If not, puts in a dash
  def show_progress(guessed_letters)
    display_string = ''
    @word.chars.each do |x|
      if guessed_letters.include?(x)
        display_string << x
      else 
        display_string << '_'
      end
    end
    @display_string = display_string
  end
    
end

  


# user interface

puts "Please type in a word!"
word = gets.chomp.downcase
newgame = WordGame.new(word)
p newgame.dashes
letters = []
while !newgame.is_over
  puts "Player 1, guess a letter!"
  letter = gets.chomp.downcase
  letters << letter
  newgame.show_progress(letters.join(''))
  p newgame.display_string
  if !newgame.display_string.include?(letter)
    newgame.guess_count += 1
  end
  if newgame.display_string == newgame.word
    puts "You win! Game's over!"
    break
  elsif newgame.guess_count == newgame.total_guesses
    puts "You fail!"
    puts "The secret word was #{newgame.word}."
    break
end
    


end
puts "That's it!"
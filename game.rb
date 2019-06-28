puts 'Guess a letter'
class Game 
  @@letter = 'C'
  @@guesses = 9
  @@user_guess = gets.chomp.upcase
  def letterGuess
    puts "You have #{@@guesses} guesses left"
    if @@guesses != 0 
      if @@user_guess == @@letter
        puts 'You Win'
      else
        @@guesses = @@guesses - 1
        @@user_guess = gets.chomp.upcase
        letterGuess
      end 
    else
      puts 'Game Over'
    end
  end

end

guessGame = Game.new
guessGame.letterGuess
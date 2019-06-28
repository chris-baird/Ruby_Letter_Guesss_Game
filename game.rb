puts 'Guess a letter'
class Game 
  @@letters = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T', 'U', 'V','W','X','Y','Z']
  @@letter = @@letters[rand 26]
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
      puts "Game Over the letter was #{@@letter}"
    end
  end

end

guessGame = Game.new
guessGame.letterGuess



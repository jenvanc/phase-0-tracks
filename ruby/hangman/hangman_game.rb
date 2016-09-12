class Hangman
  attr_reader :guess_count, :secret_word, :guessed_letters, :total_guesses, :is_over

  def initialize(word)
    @guess_count = 0
    @guessed_letters = []
    @is_over = false
    @secret_word = word
    @total_guesses = (@secret_word.length * 1.5).floor
  end

  def progress
    progress = ""
    @secret_word.each_char do |letter|
      if @guessed_letters.include?(letter)
        progress += letter
      else
        progress += "_ "
      end
    end
    progress
  end

  def guess_letter(letter)
    if !@guessed_letters.include? letter
      @guess_count += 1
      @guessed_letters << letter
    else
      puts "Oops! You already guessed that letter. Please guess again."
    end
  end

  def print_progress(progress)
    puts progress
    if @guess_count < @total_guesses  && progress == @secret_word
      puts "Congratulations! You won!"
      @is_over = true
    elsif @total_guesses == @guess_count
      puts "Off with your head! You lose!"
      @is_over = true
    end
  end

end

puts "Let's play hangman!"
puts "Player 1, please input a word for Player 2 to guess."
word = gets.chomp.downcase
game = Hangman.new(word)
game.print_progress(game.progress)

while !game.is_over
  puts "Player 2, guess a letter!"
  letter = gets.chomp.downcase
  game.guess_letter(letter)
  game.print_progress(game.progress)
end

class Hangman
  attr_reader :guess_count, :secret_word, :guessed_letters, :total_guesses

  def initialize
    @guess_count = 0
    @guessed_letters = []
  end

  def show_progress
    progress = ""
    @secret_word.each_char do |letter|
      if guessed_letter.include? letter
        progress += letter
      else
        progress += "_"
      end
    end
    progress
  end

  def set_secret_word(word)
    @secret_word = word
    @total_guesses = @secret_word.length
  end

  def guess_letter(letter)
    if !@guessed_letters.include? letter
      @guess_count += 1
      @guessed_letters << letter
    else
      puts "Oops! You already guessed that letter. Please guess again."
    end
  end

  def

end

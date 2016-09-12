require_relative 'hangman_game'

describe Hangman do
  let(:hangman) { Hangman.new }

  it "sets secret word" do
    hangman.set_secret_word("hello")
    expect(hangman.secret_word).to eq "hello"
  end

  it "sets total guesses" do
    hangman.set_secret_word("hello")
    expect(hangman.total_guesses).to eq 7
  end

  it "shows the progress(empty)" do
    hangman.set_secret_word("hello")
    expect(hangman.show_progress).to eq "_ _ _ _ _ "
  end

  it "shows the progress(mid-way)" do
    hangman.set_secret_word("hello")
    hangman.guess_letter("h")
    hangman.guess_letter("o")
    expect(hangman.show_progress).to eq "h_ _ _ o"
  end

  it "shows the progress (complete)" do
    hangman.set_secret_word("too")
    hangman.guess_letter("t")
    hangman.guess_letter("o")
    expect(hangman.show_progress).to eq "too"
  end

end

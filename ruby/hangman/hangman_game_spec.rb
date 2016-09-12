require_relative 'hangman_game'

describe Hangman do
  let(:hangman) { Hangman.new("hello") }

  it "sets secret word" do
    expect(hangman.secret_word).to eq "hello"
  end

  it "sets total guesses" do
    expect(hangman.total_guesses).to eq 7
  end

  it "shows the progress(empty)" do
    expect(hangman.progress).to eq "_ _ _ _ _ "
  end

  it "shows the progress(mid-way)" do
    hangman.guess_letter("h")
    hangman.guess_letter("o")
    expect(hangman.progress).to eq "h_ _ _ o"
  end

  it "shows the progress (complete)" do
    hangman.guess_letter("h")
    hangman.guess_letter("e")
    hangman.guess_letter("l")
    hangman.guess_letter("o")
    expect(hangman.progress).to eq "hello"
  end

end

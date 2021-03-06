require_relative 'alias_manager'

describe "alias_manager" do

  context 'next letter' do

    context 'vowels' do
      it "moves vowel down one vowel in alphabet" do
        expect(next_vowel("a")).to eq "e"
      end

      it "moves u to a" do
        expect(next_vowel("u")).to eq "a"
      end
    end

    context 'consonants' do

      it "moves consonant down one consonant in alphabet" do
        expect(next_consonant("b")).to eq "c"
      end

      it "moves z to b" do
        expect(next_consonant("z")).to eq "b"
      end
    end

    it "maps to next consonant" do
      expect(next_letter("z")).to eq "b"
    end

    it "maps to next vowel" do
      expect(next_letter("a")).to eq "e"
    end
  end

  it "capitalizes user input" do
    expect(style_user_input("john doe")).to eq "John Doe"
  end

  it "encodes a name" do
    expect(encode_name("john doe")).to eq "Fui Kujp"
  end

  it "reverses a name" do
    expect(reverse_name("Felicia Torres")).to eq ["Torres", "Felicia"]
  end
end

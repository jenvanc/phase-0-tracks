require_relative 'alias_manager'

describe "alias_manager" do

  it "moves vowel down one vowel in alphabet" do
    expect(next_vowel("a")).to eq "e"
  end

  it "moves u to a" do
    expect(next_vowel("u")).to eq "a"
  end

  it "moves consonant down one consonant in alphabet" do
    expect(next_consonant("b")).to eq "c"
  end

  it "moves z to b" do
    expect(next_consonant("z")).to eq "b"
  end

  it "reverses a name" do
    expect(reverse_name("Felicia Torres")).to eq "Torres Felicia"
  end
end

# - Downcase name #downcase
# - Split fist and last names into different strings #split
# - Swap first and last name using #reverse
# - Split letters into array
# - Variable for vowels "aeioua"
# - Variable for consanants "bcdfghjklmnpqrstvwxyzb"
# - Move vowels down one down vowels variable
# - Move consanants down one on consanant variable
# - Leave spaces as-is
# - Caplitalize name #capitalize
# - Join letters back together and save as new variable

def reverse_name name
  name_array = name.split(' ')
  name_array.reverse!
end

def next_vowel vowel
  vowels = {
    'a' => 'e',
    'e' => 'i',
    'i' => 'o',
    'o' => 'u',
    'u' => 'a'
  }
  vowels[vowel]
end

def is_vowel letter
  vowels = ['a', 'e', 'i', 'o', 'u']
  vowels.include? letter
end

def next_consonant consonant
  consonants = {
    'b' => 'c',
    'd' => 'f',
    'f' => 'g',
    'g' => 'h',
    'h' => 'j',
    'j' => 'k',
    'k' => 'l',
    'l' => 'm',
    'm' => 'n',
    'n' => 'p',
    'p' => 'q',
    'q' => 'r',
    'r' => 's',
    's' => 't',
    't' => 'v',
    'v' => 'w',
    'w' => 'x',
    'x' => 'y',
    'y' => 'z',
    'z' => 'b'
  }
  consonants[consonant]
end

name = 'tommy'
name.chars.each do |char|
  if is_vowel char
    p next_vowel char
  else
    p next_consonant char
  end
end

def reverse_name(string)
  array = string.split()
  array.reverse!
end

def next_letter(letter)
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include? letter
    next_vowel(letter)
  else
    next_consonant(letter)
  end
end

def next_vowel(vowel)
  vowels = ["a", "e", "i", "o", "u"]
  index = vowels.index(vowel) + 1
  if index == vowels.length
    index = 0
  end
  vowels[index]
end

def next_consonant(consonant)
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q",
                "r", "s", "t", "v", "w", "x", "y", "z"]
  index = consonants.index(consonant) + 1
  if index == consonants.length
    index = 0
  end
  consonants[index]
end

puts "Please enter a name you would like to encrypt. Type 'quit' when finished."
user_input = gets.chomp.downcase

until user_input == 'quit'
  backwards_name = reverse_name(user_input)
  backwards_name.map! do |name|
    name = name.chars.map! do |letter|
      letter = next_letter(letter)
    end
    name.join('')
  end
  p backwards_name.join(' ').capitalize
  user_input = gets.chomp.downcase
end

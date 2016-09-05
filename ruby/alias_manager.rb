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

def style_user_input(user_input)
  name = user_input.split(' ')
  name.map! do |name|
    name.capitalize
  end
  name.join(' ')
end

encrypted_names = {}

puts "Please enter a name you would like to encrypt. Type 'quit' when finished."
user_input = gets.chomp.downcase

until user_input == 'quit'
  backwards_name = reverse_name(user_input)
  backwards_name.map! do |name|
    name = name.chars.map! do |letter|
      letter = next_letter(letter)
    end
    name.join('').capitalize
  end
  backwards_name = backwards_name.join(' ')
  user_input = style_user_input(user_input)
  encrypted_names[user_input] = backwards_name
  p backwards_name
  user_input = gets.chomp.downcase
end

encrypted_names.each do |real_name, encoded_name|
  puts "#{encoded_name} is actually #{real_name}."
end

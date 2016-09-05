def reverse_name(string)
  array = string.split()
  array.reverse!.join(' ')
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

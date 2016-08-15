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

def prompt_user
  p 'Please enter a name. Type quit when finished.'
  username = gets.chomp.downcase
end

def style_username username
  username = username.split(' ')
  username = username.map do |name|
    name.capitalize
  end
  username.join(' ')
end

usernames = {}

username = prompt_user
until username == 'quit'
  reversed = reverse_name username
  reversed = reversed.map do |name|
    name = name.chars.map do |char|
      if is_vowel char
        next_vowel char
      else
        next_consonant char
      end
    end
    name.join.capitalize
  end
  usernames[reversed.join(' ')] = username
  username = prompt_user
end

usernames.keys.each do |encrypted|
  unencrypted = style_username usernames[encrypted]
  puts "#{encrypted} is actually #{unencrypted}"
end

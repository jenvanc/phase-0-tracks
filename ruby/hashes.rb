# We need to write a program that will allow an interiror designer
# to keep track of a client

# Name, Age, # Of Children, Decor Theme, Etc
# to_sym

def is_true response
  if response == "yes"
    true
  else
    false
  end
end

client_info = {}

puts "What is your client's name?"
client_info[:name] = gets.chomp

puts "What is your age?"
client_info[:age] = gets.chomp.to_i

puts "How many children do you have?"
client_info[:children] = gets.chomp.to_i

puts "What is your decor theme?"
client_info[:theme] = gets.chomp

puts "Do you have wood trim?"
client_info[:wood_trim] = is_true gets.chomp

puts "do you have glass walls?"
client_info[:glass_walls] = is_true gets.chomp

puts client_info

puts "Would you like to update some of this information?"
client_info.keys.each { |info| puts info.to_s  }
puts "none"

user_input = gets.chomp

unless user_input == "none"
  puts "enter new value"
  client_info[user_input.to_sym] = gets.chomp
  puts client_info
end

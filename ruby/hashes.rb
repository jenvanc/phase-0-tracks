# Ask designer for the client's name, age, number of childern, decor theme and
# if they have red carpet
#  - save name, address, age, number of children, decor theme and red carpet
#     as keys to a hash, user input saves as value
# Print user input
# Ask user if they would like to update any of the info
#   - if yes, change appropriate value in hash
# Print updated information

def is_true(user_input)
  if user_input == "yes"
    true
  else
    false
  end
end

client_info = {}

puts "What is the client's name?"
client_info[:name] = gets.chomp

puts "What is the client's age?"
client_info[:age] = gets.chomp

puts "How many children does your client have?"
client_info[:children] = gets.chomp.to_i

puts "What is your decor theme?"
client_info[:theme] = gets.chomp

puts "Do you have red carpet? Please respond yes or no."
client_info[:red_carpet] = is_true(gets.chomp)

puts "Here is your client's information"
  client_info.each do |prompt, response|
    puts "#{prompt}: #{response}"
  end

puts "Would you like to update any of this information?
Please type the name of the category you wish to update.
If not, please type 'none'."
input = gets.chomp

unless input == "none"
  puts "Please type in the new information."
  client_info[input.to_sym] = gets.chomp
end

puts "Here is your client's information"
  client_info.each do |prompt, response|
    puts "#{prompt}: #{response}"
  end

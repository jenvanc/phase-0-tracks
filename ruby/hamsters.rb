puts "What's the hamsters name?"
name = gets.chomp
puts "How loud is the hamster? (1-10)"
volume = gets.to_i

puts "What's the hamster's fur color?"
fur_color = gets.chomp

puts "Is the hamster a good canditate for adoption?"
adoption = gets.chomp

if adoption == "yes"
	adoption = true
elsif adoption == "no"
	adoption = false
end

puts "What is the hamster's estimated age?"
age = gets.chomp

if age.empty?
	age = nil
end

puts "This hamster's name is #{name}."
puts "On a scale of 1-10 this hamster is this loud: #{volume}."
puts "This hamster's fur color is #{fur_color}."
puts "This hamster is a good canditate for adoption: #{adoption}"
if age == nil
	puts "The age of this hamster is unknown."
else
	puts "This hamster's estimated age is #{age}"
end

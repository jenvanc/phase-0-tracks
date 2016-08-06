puts "What is your name?"
name = gets.chomp

puts "How old are you? What year were you born?"
age = gets.to_i
year_born = gets.to_i
current_year = 2016

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp
if garlic == "yes"
  garlic = true
else
  garlic = false
end

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
if insurance == "yes"
  insurance = true
else
  insurance = false
end

if name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
elsif   (age == (current_year - year_born)) && (garlic || insurance)
  puts "Probably not a vampire."
elsif (age != (current_year - year_born)) && (garlic || insurance)
  puts "Probably a vampire."
elsif (age != (current_year - year_born)) && !(garlic && insurance)
  puts "Almost certainly a vampire."
else
  puts "Results inconclusive."
end

def convo
	puts "how are you?"
	yield("Chillin", "Kickin it")
	puts "thats good."
end
convo { |activity1, activity2| puts "Im good! #{activity1}! #{activity2}!"}

movie_stars = {
	"Harrison Ford" => "Indiana Jones" ,
	"Sean Connery" => "James Bond" ,
	"Daniel Radcliffe" => "Harry Potter" ,
	"Emma Watson" => "Hermione Granger" ,
	"Tom Hanks" => "Woody"
}
furniture = ["table", "chair", "wardrobe", "dresser"]

movie_stars.each do |actor, character|
	puts "#{actor} is best known for playing #{character}."
end

furniture.each do |item|
	puts "I want a #{item}."
end

p furniture

furniture.map! do |item|
	p item.upcase
end

p furniture

numbers = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5
}
other_numbers = [6,7,8,9]



numbers.delete_if {|word, integer| integer < 2 }
p numbers

other_numbers.delete_if {|integer| integer < 7 }
p other_numbers

numbers.keep_if {|word, integer| integer > 2 }
p numbers

other_numbers.keep_if {|integer| integer < 9 }
p other_numbers

numbers.select! {|word, integer| integer != 4}
p numbers

other_numbers.select! {|integer| integer.even? }
p other_numbers

numbers.reject! {|word, integer| integer == 3 }
p numbers

other_numbers.reject! {|integer| integer.even? }
p other_numbers

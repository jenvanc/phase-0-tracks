# cat class
#   attributes:
#    age: age of cat
#    favorite_toy: favorite toy of cat
#    fur_color: fur color of cat
#   methods:
#     method for updating fixed status(boolean_argument)
#       if fixed status is true
#          cat is ready for adoption
#       else
#          cat gets fixed
#     method for changing name(new name)
#       old name to new name
#     method for purr
#       print purr
#

class Cat
  attr_reader :name, :fur_color
  attr_accessor :age, :favorite_toy

  def initialize(name, age, fur_color)
    @name = name
    @age = age
    @fur_color = fur_color
  end

  def is_fixed(fixed_status)
    if fixed_status == false
      puts "#{@name} was sent to the vet to be fixed"
      adoption_status = true
    else
      puts "#{@name} is already fixed"
    end
    adoption_status
  end

  def play(favorite_toy)
    puts "#{@name} plays with #{favorite_toy}"
  end

  def purr
    puts "#{@name} purrs loudly"
  end
end

cats = []
user_response = nil

until user_response == "done"
  puts "Would you like to input the cat's data? Hit enter to start. Type 'done' to exit"
  user_response = gets.chomp
    if user_response == "done"
      break
    else
      puts "What is the cat's name?"
      name = gets.chomp.capitalize

      puts "What is #{name}'s age?"
      age = gets.chomp.to_i

      puts "What is #{name}'s fur color?"
      fur_color = gets.chomp

      puts "What is #{name}'s favorite toy?"
      favorite_toy= gets.chomp

      cats << Cat.new(name, age, fur_color)
    end
end

puts "Here is the information about the cats you entered:"
cats.each do |cat|
  puts "#{cat.name} is #{cat.age}, their fur color is #{cat.fur_color} and their
  favorite toy is #{cat.favorite_toy}"
end

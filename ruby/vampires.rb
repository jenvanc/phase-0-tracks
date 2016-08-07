puts "How many employees will be processed today?"
employees = gets.to_i
count = 1

while count <= employees
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you? What year were you born? Please hit enter after each entry."
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

      allergy = nil
      until allergy == "done"
            puts "Please list any allergies you have, one at a time. You can type 'done' when you are finished."
            allergy = gets.chomp
            break if allergy == "sunshine"
      end

    case
      when name == "Drake Cula" || name == "Tu Fang"
        puts "Definitely a vampire."
      when (age == (current_year - year_born)) && (garlic || insurance)
        puts "Probably not a vampire."
      when allergy == "sunshine" || (age != (current_year - year_born)) && (garlic || insurance)
        puts "Probably a vampire."
      when (age != (current_year - year_born)) && !(garlic && insurance)
        puts "Almost certainly a vampire."
      else
        puts "Results inconclusive."
    end

count += 1
end

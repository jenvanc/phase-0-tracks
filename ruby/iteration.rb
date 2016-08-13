fruits = ["banana", "apple", "pear", "grapes"]
vegetables = {
  potato: 2,
  carrot: 3,
  asparagus: 1,
  cucumber: 5,
}

p fruits
p vegetables

fruits.each { |fruit| p fruit.upcase }
fruits.map! { |fruit| p fruit.upcase }

p fruits

vegetables.each do |vegetable, count|
  puts "There are #{count + 1} #{vegetable}"
end

p vegetables

numbers_array = [1, 2, 3, 4, 5, 6]

numbers_hash = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
}

p numbers_array.delete_if { |integer| integer < 2 }
p numbers_hash.delete_if { |word, integer| integer > 5}

p numbers_array.select { |integer| integer.even? }
p numbers_hash.select { |word, integer| integer.even? }

p numbers_array.keep_if { |integer| integer.odd?}
p numbers_hash.keep_if { |word, integer| word == :four }

p numbers_array.reject { |integer| integer < 5 }
p numbers_hash.reject { |word, integer| word == :four }

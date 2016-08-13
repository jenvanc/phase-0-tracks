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

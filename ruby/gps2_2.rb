# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # use .split to seperate string items,
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(shopping_cart)
	shopping_cart = shopping_cart.split
	grocery_list = {}
	shopping_cart.each do |item|
		add_or_update_item(grocery_list, item)
	end
	pretty_list(grocery_list)
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: (list, item, quantity)
# output: the hash with new items added

def add_or_update_item(list, item, quantity=1)
	list[item] = quantity
end

# Method to remove an item from the list
# input: list, item
# steps: take item as argument for deleting item
# output: new hash

def remove_item(list, item)
	list.delete(item)
end

# Method to print a list and make it look pretty
# input: list
# steps: print item and quantity by iterating through hash
# output: hash of list items in sentence

def pretty_list(list)
	list.each do |item, quantity|
		puts "There are #{quantity} #{item} on the grocery list."
	end
end

list = create_list("lemonade tomatoes onions icecream")
add_or_update_item(list, 'lemonade', 2)
add_or_update_item(list, 'tomatoes', 3)
add_or_update_item(list, 'icecream', 4)
pretty_list(list)
remove_item(list, 'lemonade')
add_or_update_item(list, 'icecream', 1)
pretty_list(list)

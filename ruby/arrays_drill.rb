def build_array(value1, value2, value3)
	Array[value1, value2, value3]
end

def add_to_array(arr, value)
	arr.push(value)
end

first_array = []

p first_array

first_array << "1" << "2" << "3" << "4" << "5"

p first_array

first_array.delete_at(2)

p first_array

first_array.insert(2, "cat")

p first_array

first_array.delete("1")

p first_array

puts "This array includes cat."

result = first_array.include?("cat")

p result

second_array = [1, "two", 3]

combined_array = first_array + second_array

p combined_array

p build_array(1, "two", nil)

p build_array("paper", "pencil", "safety scissors")

p add_to_array([], "a")

p add_to_array(["a", "b", "c", 1, 2], 3)

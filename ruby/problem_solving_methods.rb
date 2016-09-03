def search_array(arr, int)
  index = 0
  arr.each do |number|
    if number == int
      number[index]
    end
  end
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)

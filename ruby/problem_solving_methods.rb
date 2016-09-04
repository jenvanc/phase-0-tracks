require 'pry'

def search_array(arr, int)
  index = 0
  arr.each do |number|
    if number == int
      return index
    end
    index +=1
  end
  nil
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)


def fib(int)
  fibonacci = [0, 1]
  while fibonacci.length < int
    fibonacci << fibonacci[-2] + fibonacci[-1]  #Adds last two items of array together and pushes that value to array
  end
  fibonacci
end

p fib(6)
p fib(100)[-1] == 218922995834555169026

# Let's get adventurous.
# 1. Bubble Sort
# 2. Insertion Sort
# 3. Selection Sort

def bubble_sort(array)
  count = array.length
  loop do
    swapped = false
    (count - 1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i] #reassigns values of numbers in array
        swapped = true
      end
    end
    break unless swapped
  end
end

array = [2, 7, 4, 8, 1]
bubble_sort(array)
p array

def insertion_sort(array)
    for i in 1..(array.length - 1)
      j = i
      while j > 0 and array[j-1] > array[j]
        array[j], array[j-1] = array[j-1], array[j]
        j -= 1
      end
    end
end


array = [2, 6, 4, 8, 1]
insertion_sort(array)
p array

def selection_sort(array)
  array.each_index do |index|
    smallest_index = index
    for i in (index + 1)..(array.length - 1)
      if array[i] < array[smallest_index]
        smallest_index = i
      end
    end
    if smallest_index != index
      array[index], array[smallest_index] = array[smallest_index], array[index]
    end
  end
end

array = [2, 5, 7, 1, 3, 9]
selection_sort(array)
p array

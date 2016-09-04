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


# Let's do da pseudo

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

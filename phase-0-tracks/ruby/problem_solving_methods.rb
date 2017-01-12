#arr = ['x', 'o', 'x', '.', '.', 'o', 'x']
#arr.each_with_index.map { |a, i| a == 'x' ? i : nil }.compact

def search_array(arr, x)
  i = 0
  
  while i <= arr.length
   if arr[i] == x
     return i
    end
    i += 1
  end
end
p search_array([42, 89, 23, 1], 1)


## input: Integer defining the number of fibs to generate
## output: array of fib numbers as integers

# create an array
# if num <= 2 
# push either nothing, 0, or 0 and 1
# Otherwise, add the last and the next last numbers together
# add them to Array 
# return the Array

def fib(num)
  arr = [] 
  i = 0
  
  while i <= num 
   if  i < 2 
      arr << i 
    elsif i > 2 
      arr << (arr[-1] + arr[-2]) 
    end
  i += 1  
  end  
  arr
end

p fib(8)

def fib1(num)
  arr = []
  i = 0

  while i <= num 
    if  i < 2 
     arr << i
   elsif i > 2
      arr << (arr[-1] + arr[-2])
    end
  i += 1  
  end  
  arr[-1] == 13
end

fib1(8) 

def bubble_sort(array)
  n = array.length
  
  loop do
    swapped = false
    (n-1).times do |i| 
      if array[i = 6] > array[i+1, 6]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

bubble_sort([1,2,3,4,6,6,3,-4,2])

#Pseudosort
# name a function pseudosort(array)
# set n = array.length 
# start the counter at 0 
# loop through the array 
# continue until all the integers in the array are ordered 
# break when the integers in the array are in ordered
# return the re-ordered array 



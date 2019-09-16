# Problem

# Write a method called each_cons that takes an Array as an argument, and a block. It should yeld each consecutive pair of elements to the block, and return nil.

# Algorithm

# Define a method that take an array
# Initialize a first_element local variable to 0 and a second_element to 1
# loop through each element
# Pass in the first and second element to the block
# increment both first_element and second_element
# break if the second element is equal to the array's size
# return nil

def each_cons(arr)
  first = 0
  second = 1
  loop do
    break if second >= arr.size
    yield(arr[first], arr[second])
    first += 1
    second += 1
  end
  nil
end


hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil













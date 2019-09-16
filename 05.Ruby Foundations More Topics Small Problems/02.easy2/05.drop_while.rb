# Problem

# Write a method called drop_while that takes an array as an argument, and a block. It should return all the elements of the Array, except those elements at the beginning of the Array that produce a truthy value when passed to the block.

# Algorithm

# Define a method which takes an array
# initialize an empty result array
# Initialize a local variable called `new_array?` set to false
# Iterate through the array, passing each element to the block
# If `new_array` is true, pass the rest of array to the result array
# If the element returns true, do nothing
# If the element returns false, set `new_array?` to true
# pass that element and the rest of the array to the result array.
# Return the result array.


#my answer
# def drop_while(arr)
#   result = []
#   new_array = false
#   arr.each do |element|
#     new_array = true if !yield(element)
#     result << element if !yield(element) || new_array == true
#   end
#   result
# end

# Book Answer
def drop_while(array)
  index = 0
  while index < array.size && yield(array[index])
    index += 1
  end

  array[index..-1]
end


# p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
# p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
# p drop_while([1, 3, 5, 6]) { |value| true } == []
# p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
# p drop_while([]) { |value| true } == []
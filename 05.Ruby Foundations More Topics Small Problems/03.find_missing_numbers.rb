# Problem

# Given an array of integers, return an array with all of the 
# missing integers in order between the first and last
# elements of the arguments.

# The returned array is just the missing elements, not the 
# full set.

#Examples:

# missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# missing([1, 2, 3, 4]) == []
# missing([1, 5]) == [2, 3, 4]
# missing([6]) == []


# Data Structures
# Arrays

# Algorithm

# define a `missing` method
# Create a new array using `upto` and `to_a` to get the full set
# of numbers between the first and last elements.
# delete the elements of the array if they are already in the original array
# return the new array

# def missing(arr)
#   (arr[0]).upto(arr[-1]).to_a.delete_if{|item| arr.include?(item)}
# end

def missing(arr)
  result = []
  full_set = (arr[0]..arr[-1]).to_a
  counter = 0
  loop do
    break if counter >= (full_set.size - 1)
    current = full_set[counter]
    result << current if !arr.include?(current)
    counter += 1
  end
  result
end


# def missing(array)
#   result = []
#   array.each_cons(2) do |first, second|
#     result.concat(((first + 1)..(second - 1)).to_a)
#   end
#   result
# end

# Best Answer, by Lewis Reynolds:
# def missing(arr)
#   range = (arr.min..arr.max).to_a
#   range - arr
# end


p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []



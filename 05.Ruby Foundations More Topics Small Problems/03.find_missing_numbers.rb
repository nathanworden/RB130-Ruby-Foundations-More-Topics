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

def missing(arr)
  (arr[0]).upto(arr[-1]).to_a.delete_if{|item| arr.include?(item)}
end


p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
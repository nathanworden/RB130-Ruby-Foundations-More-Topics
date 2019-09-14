# Problem:
# Write an 'any' method for Array.


# Algorithm
# define a method that accepts an array as a parameter
# return false if the array is empty
# For each element of the array, pass the element to a block
# if the return value of the yield statement is true, return true and break

require 'pry'


def any?(arr)
  arr.each {|element| return true if yield(element)}
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false
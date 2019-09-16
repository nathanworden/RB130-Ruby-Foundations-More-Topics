# Problem

# Write a method called map that takes an array and a block. It should return a new Array that contains th return values produced by the block for each element of the original Array.

# If the Array is empty, map should return an empty Array, regardless of how the block is defined.

# Algorithm
# define a method that accepts an array
# initialize an empty result array
# For each element pass that element to the block and then push the result to the result array
# return the reslut array.


def map(arr)
  result = []
  arr.each {|element| result << yield(element)}
  result
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
p map({'a' => 1, 'b' => 2, 'c' => 3}) {|key, value| key + value.to_s} == ["a1", "b2", "c3"]
p map({'a' => 1, 'b' => 2, 'c' => 3}) {|key, value| puts "#{key}, #{value}"} == [nil, nil, nil]
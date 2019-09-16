# What will the following code return?


require 'prime'

def mystery_method(arr)
  copy = arr.dup
  arr.each do |elem|
    break unless yield(elem)
    copy.shift
  end
  copy
end



nums = [2, 3, 7, 67, 77, 89, 97]

p mystery_method(nums) {|num| num.prime?}




















# Answer:








# This is an implementation of the 'drop_while' method. all the elements of the Array, except those elements at the beginning of the Array that produce a truthy value when passed to the block. 
# It will return:

# [77, 89, 97]









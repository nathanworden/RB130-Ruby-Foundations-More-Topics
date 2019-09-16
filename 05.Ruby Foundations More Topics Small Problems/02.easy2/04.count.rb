# Problem

# Write a method called count that takes 0 or more arguments and a block and then returns the total number of arguments for which the block returns true.

# Algorithm

# define a method that takes an arbitary number of arguments.
# Initialize a count varibale to 0
# iterate through all the elements in the array, passing each to a block and incrementing the count variable every time the block returns true
# return the count varibale


def count(*args)
  count = 0
  args.each {|element| yield(element) ? count += 1 : count}
  count
end


p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3
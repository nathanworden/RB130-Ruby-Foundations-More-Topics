# (1..10).step(2) {|x| puts x}


# p (42..70).step(5).to_a


# problem
# Write a method that takes a starting value, ending value, and a step value. Your method should return an array from the starting value to the ending value and each step in between.


# algorithm
# initialize a `result` array
# intialize a counter to zero
# loop until the value trying to be pushed into the result array is not modulo step == 0
# take the array[counter] element and add the step value and push that to the array
# yield to the block, passing in the current value
# increment counter
# return the array


# def step(start, finish, step)
#   result = [start]
#   counter = 0
#   yield(start)
#   loop do
#     current = result[counter] + step
#     break if current > finish
#     result << current
#     yield(current)
#     counter += 1
#   end
#   result
# end

def step(start, finish, step)
  result = []
  counter = 0
  current = start
  loop do
    break if current > finish
    yield(current)
    result << current
    current = result[counter] + step
    counter += 1
  end
  result
end


p step(1, 10, 3) {|value| puts "value = #{value}"}






# Book Answer:

# def step(start_piont, end_point, increment)
#   current_value = start_point
#   loop do
#     yield(current_value)
#     break if current_value + increment > end_point
#     current_value += increment
#   end
#   current_value
# end














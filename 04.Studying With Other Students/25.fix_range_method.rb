
# Refactor the `step` method below so that it yields to the block only once instead of twice, but still outputs and returns the same values.

def step(start, finish, step)
  result = [start]
  counter = 0
  yield(start)
  loop do
    current = result[counter] + step
    break if current > finish
    result << current
    yield(current)
    counter += 1
  end
  result
end

p step(1, 10, 3) {|value| puts "value = #{value}"}

# Output:

# value = 1
# value = 4
# value = 7
# value = 10

# => [1, 4, 7, 10]














# Answer:








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
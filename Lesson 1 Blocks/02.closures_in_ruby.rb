arr = [1, 2, 3]

arr.each do |num|
  puts num
end

puts

arr.each {|num| puts num}

# There are three parts to this code:

# Part 1: The Array Object:
# [1, 2, 3]

# Part 2: The method Array#each : 
# .each

# Part 3: The block:
  #         do |num|
  #   puts num
  # end

# *****************************************************

# The block is an argument to the method call. In other words, our familiar
# method, [1, 2, 3].each {|num| puts num}, is actually passing in the
# block of code to the Array#each method.

# *****************************************************

# Examples of where blocks are commonly used:

puts

3.times do |num|
  puts num
end

puts

[1, 2, 3].map do |num|
  num + 1
end

{ a: 1, b: 2, c: 3, d: 4, e: 5 }.select do |_, value|
  value > 2
end






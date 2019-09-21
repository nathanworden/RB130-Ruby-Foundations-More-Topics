# Problem:
# Write a program that will take a string of digits and give you all
# The possible consecutive number series of length n in that string.

# Example:
# "01234" with n being 3, would have the following 3 digit series:

# "012"
# "123"
# "234"

# With n being 4:

# "0123"
# "1234"

# With n being 6:
# Argument Error


# Data Structures
# input: string
# output: Array of arrays

# Algorithm
# Create a class called 'Series' which accepts a string of digits.
# Series should have a method called `slices` which accepts a `consecutive number serises length` called n
# take the string and turn it into an array of single digit strings (chars)
# Mutate those strings into integers (map(&:to_i))
# Iterate the given array of consecutive <n> elements. (each_cons)
# Convert enumerator to array
# Return array


class Series
  attr_accessor :digit_string

  def initialize(digit_string)
    @digit_string = digit_string
  end

  def slices(n)
    raise ArgumentError.new("n is greater than characters in input string") if n > digit_string.size
    digit_string.chars.map(&:to_i).each_cons(n).to_a
  end
end

# series = Series.new('01234')
# p series.digit_string
# p series.slices(6)



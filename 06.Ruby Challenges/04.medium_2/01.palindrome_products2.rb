class Palindromes
  def initialize(hsh)
    @limits = hsh
    @limits[:min_factor] ||= 0
    @all_palindromes = generate
  end

  attr_reader :largest, :smallest, :value

  def generate
    range = (@limits[:min_factor]..@limits[:max_factor]).to_a
    sets = range.product(range)
    sets.select do |sub_arr|
      product = (sub_arr[0] * sub_arr[1]).to_s
      flip_product = product.reverse
      product == flip_product
    end
  end

  def largest
    @value = generate.map {|sub_arr| sub_arr[0] * sub_arr[1]}.max
    self
  end

  def smallest
    @value = generate.map {|sub_arr| sub_arr[0] * sub_arr[1]}.min
    self
  end

  def factors
    @all_palindromes.select do |sub_arr|
      sub_arr.reduce(:*) == value
    end.map {|sub_arr| sub_arr.sort}.uniq
  end
end

# Problem:
# Write a program that can dectect palindrome products in a given range.
# input: hash, with a max_factor, and sometimes a min_factor
# output: The ability to:
       # generate palindromes
       # grab the largest palindrome
       # grab the smallest palindrome
       # Output the factors of the largest or smallest palindrom while adhereing to the max and min factor rules

# Calling largest on a Palindromes object should alter its state and then return itself.


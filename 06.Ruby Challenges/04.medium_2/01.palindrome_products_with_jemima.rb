# Write a program that can 
# detect palindrome products in a given range.

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers (range 10 ~ 99) is 9009 = 91 x 99.

# Problem
# Palindromic number reads the same both ways. e.g. 1, 22, 121, 9009.



# Example
# Product is the result of two numbers multiplied together
# 1 x 11 => 11

# Data
# Input: range?
# Outputs: multiple


# Alg

# Code
class Palindromes
  def initialize(values)
    # puts 'testo'
    @min_factor = 0
    @max_factor = values[:max_factor]
    # puts values[:max_factor]
    @palindromes = []
  end

  def generate
    # generate all palindromes using the given range
    array = (@min_factor..@max_factor).to_a
    # loop through all combinations of factors
    combinations = array.product(array)

    uniq_combos = combinations.map { |combo| combo.sort }.uniq

    palindromes = []
    # Generate the factor
    uniq_combos.each do |combo|
      product = combo[0] * combo[1]

      if product.to_s == product.to_s.reverse
        palindromes << product
      end
    end
    # Test if it is a palindrome

    # Save it if it it is

    # Return the palindromes as an array
    @palindromes = palindromes
  end

  def largest
    @palindromes.max
  end

  
end
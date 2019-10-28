# Write a program that can detect palindrome products in a given range

# Find palindromic numbers in a give range
    # If the number has an odd number of digits, take out the middle digit
    # Then if the number has an even number of digits see if the second half reversed matches the front half.
require 'prime'


class Palindromes

  attr_reader :value

  def initialize(input_hsh)
    @input_hsh = input_hsh
    @input_hsh[:min_factor] ||= 0
    @value = "nothing yet"
    @max_factor = input_hsh[:max_factor]
    @min_factor = input_hsh[:min_factor]
  end

  def generate
    first_arr = (@input_hsh[:min_factor]..@input_hsh[:max_factor]).to_a
    second_arr = first_arr.clone
    @product_sub_arrs = first_arr.product(second_arr)
    @palindromes = find_palindromes
  end

  def largest 
    @value = @palindromes.max
    self
  end

  def smallest
    @value = @palindromes.min
    self
  end

  def factors
    all_factors = (1..value).select {|num| value % num == 0 && num >= @min_factor && num <= @max_factor}
    all_factors.map! {|num| [@value / num, num]}
    result = all_factors.select {|arr| arr.all? {|ele| ele >= @min_factor && ele <= @max_factor}}
    result.map! {|arr| arr.sort}.uniq
  end

  private
  
  def find_palindromes
    products = @product_sub_arrs.map {|sub_arr| sub_arr[0] * sub_arr[1]}
    
    winners = products.select do |num|
      number = if num.to_s.size.odd?
        arr_num = num.to_s.chars
        middle = arr_num.size / 2
        arr_num.delete_at(middle)
        arr_num.join
      else
        num.to_s
      end

      middle = number.size / 2
      number[0...middle] == number[middle..-1].reverse
    end

    winners.uniq
  end
end








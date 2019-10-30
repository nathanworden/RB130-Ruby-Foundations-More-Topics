#  - Find palindrome numbers
#      - A Palindromic number reads the same both ways
#  - Report the largest or smallest palindrome numbers
#     - value
#     - factors

# data structure?

# naive algorithm
#  - Find all combinations of numbers between the min / max
   # - multiply the numbers
   # - Is it a palindrome?
   #     - number.to_s == number.to_s.reverse
   #     - if it is, store it away
   # - for each palindrome, I need to report value and factors

require 'pry'

class Palindromes
  def initialize(range)
    @range = range
    @range[:min_factor] ||= 1
    @largest = { }
    @smallest = { }
  end

  attr_reader :largest, :smallest

  def generate
    range = [*@range[:min_factor]..@range[:max_factor]]

    range = range.repeated_combination(2).to_a
    range.map! {|sub_arr| {value: sub_arr.reduce(:*), factors: sub_arr}}
    # range.each do |sub_arr| 
    #   if @largest[:value].nil?
    #     @largest[:value] = sub_arr[:value]
    #     @largest[:factors] = sub_arr[:factors]
    #   else 
    #     check(sub_arr)
    #   end
    # end
    # @largest
  end

  def check(sub_arr)
    if @largest[:value] < sub_arr[:value] && palindrome?(sub_arr[:value])
      @largest[:value] = sub_arr[:value]
      @largest[:factors] = sub_arr[:factors]
    end
  end

  def palindrome?(num)
    num.to_s == num.to_s.reverse
  end
end

palindromes = Palindromes.new(max_factor: 9)
# binding.pry
p palindromes.generate





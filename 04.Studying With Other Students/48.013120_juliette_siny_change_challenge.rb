# Given an amount of cash and a currency, return a combination of coins so that it's (one of) the smallest array

def change(total, arr)
  possibilities = []
  
  total.times do |num|
    combos = arr.repeated_combination(num).to_a
    combos.each do |sub_arr|
      possibilities << sub_arr if sub_arr.reduce(:+) == total
    end
  end

  possibilities.min_by(&:size)

end

# PEDAC

# Given an integer and an array of integers, find the smallest numer of change coins that add up to the first integer.

# Example

# change(51, [1, 2, 5, 10]) == [10, 1, 10, 10, 10, 10]

# Algorithm
# Find all the combinations of the change coins that add up to the first integer.
    # Use the combinations method
    # For each array, call reduce and add the elements together and if they equal the first integer, then save that set
# Pick the combination that has the fewest change coins.


### JULIET ANSWER
# The problem with this one is that it finds a combination of coins that add up to the amount, but it is not the fewest coins

def change(amount, arr)
  arr.reverse.each_with_object([]) do |coin, change|
    until coin > amount
      amount -= coin
      change << coin
    end
  end
end

### This one is better:

# 0    1   2       3          4    5    6       7           8
# [] [1]  [1, 1]  [1, 1, 1]  [4]  [5]  [5, 1]  [5, 1, 1]  [4, 4]

def change(amount, arr)
  changes = [[]] + Array.new(amount, Array.new(amount))

  1.upto(amount) do |i|
    arr.each do |coin|
      next if coin > i

      changes[i] = changes[i - coin] + [coin] if changes[i].size > (changes[i - coin] + [coin]).size
    end
  end

  changes[amount]
end
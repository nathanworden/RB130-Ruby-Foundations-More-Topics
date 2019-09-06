# def reduce(arr, acc_start=0)
#   counter = 0
#   accumulator = acc_start
#   while arr.size > counter
#     accumulator = yield(accumulator, arr[counter])
#     counter += 1
#   end

#   accumulator
# end


# array = [1, 2, 3, 4, 5]

# p (reduce(array) { |acc, num| acc + num }             )       # => 15
# p (reduce(array, 10) { |acc, num| acc + num }         )       # => 25
# p (reduce(array) { |acc, num| acc + num if num.odd? } )       # => NoMethodError:


def reduce(arr)
  counter = 0
  kind = arr[0].class
  accumulator = case 
                when kind == String then ""
                when kind == Array then []
                when kind == Integer then 0
                end
  while arr.size > counter
    accumulator = yield(accumulator, arr[counter])
    counter += 1
  end

  accumulator
end

p (reduce(['a', 'b', 'c']) { |acc, value| acc + value }    ) # => 'abc'
p (reduce([[1, 2], ['a', 'b']]) { |acc, value| acc += value }) # => [1, 2, 'a', 'b']
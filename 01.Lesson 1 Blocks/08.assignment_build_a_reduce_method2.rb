def reduce(array, acc=array[0])
  acc == array[0] ? counter = 1 : counter = 0
  while counter < array.size
    acc = yield(acc, array[counter])
    counter += 1
  end
  acc
end

# reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
# reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']


array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMe
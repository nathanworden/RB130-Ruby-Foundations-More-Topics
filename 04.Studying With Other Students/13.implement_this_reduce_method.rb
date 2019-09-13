# Implement the `reduce` method below which will work with an array
# of strings, an array of arrays, or an array of integers. The `reduce`
# method should accumulate the collection into 1 object.



p (reduce(['a', 'b', 'c']) { |acc, value| acc + value }    ) 
# => 'abc'
p (reduce([[1, 2], ['a', 'b']]) { |acc, value| acc += value }) 
# => [1, 2, 'a', 'b']
p (reduce([4, 5, 6]) {|acc, value| acc + value}) 
# => 15































# Answer



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



# Juliet Answer
def reduce(arr)
  acc = arr.first
  arr[1..-1].each do |el|
    acc = yield(acc, el)
  end
  acc
end












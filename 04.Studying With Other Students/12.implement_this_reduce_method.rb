# Implement the `reduce` method below so that it sums only the 
# odd integers. For the example below the reduce method will
# return 20.




p (reduce([1, 2, 3, 7, 9, 2, 2, 126]) do |acc, num|
    acc + num
  end)

# => 20





























#Answer:






def reduce(arr)
  counter = 0
  acc = 0
  while arr.size > counter
    acc = yield(acc, arr[counter]) if arr[counter].odd?
    counter += 1
  end

  acc
end

# p([1, 2, 3].reduce do |acc, num|
#   acc + num
# end)


# def reduce(arr)
#   counter = 0
#   num = 1
#   acc = arr[0]
#   while arr.size > counter
#     acc = yield(acc, arr[num]) if arr[counter].odd?
#     counter += 1
#     num += 1
#   end

#   acc
# end

def reduce(arr)
  counter = 0
  acc = 0
  while arr.size > counter
    acc = yield(acc, arr[counter]) if arr[counter].odd?
    counter += 1
  end

  acc
end


p (reduce([1, 2, 3, 7, 9, 2, 2]) do |acc, num|
    acc + num
  end)



# [1, 2, 3].reduce do |acc, num|
#   acc + num if num.odd?
# end


# We want to select the odd numbers out of this array and then 
# multiply them. The answer should be 105.

# p [1, 2, 3, 4, 5, 6, 7].select {|num| num.odd?}.reduce(:*)


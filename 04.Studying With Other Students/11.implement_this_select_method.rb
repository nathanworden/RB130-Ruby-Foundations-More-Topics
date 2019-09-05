# Implement the select method below so that when you pass in the
# array on line 7 it will out put 1, 2, 3, 4, 5 but 
# return [3, 9, 15]



array = [1, 2, 3, 4, 5]

p (select(array) { |num| num.odd? }) 

# Outputs:
# 1
# 2
# 3
# 4
# 5

# Returns:
# => [3, 9, 15]

























#Answer



def select(arr)
  counter = 0
  output = []
  while arr.size > counter
    output << (arr[counter] * 3) if yield(arr[counter])
    puts counter + 1
    counter += 1
  end
  output
end
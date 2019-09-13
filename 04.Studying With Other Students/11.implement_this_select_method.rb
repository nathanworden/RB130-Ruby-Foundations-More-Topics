# Implement the select method below so that when you pass in the
# array on line 7 it will output 1, 2, 3, 4, 5 but 
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



# Juliet's answer: 
def select(arr)
  arr.each_with_object([]) do |el, result|
    puts el
    result << el * 3 if yield(el)
  end
end

# Jamima's answer:
def select(arr)
  arr.each do |num|
    puts num
  end
  arr.select { |n|  yield n }.map { |n| n * 3 }
end
# Now the block only has one parameter. What will this code output and return?

def map(arr)
  result = []
  arr.each {|element| result << yield(element)}
  result
end

p map({'a' => 1, 'b' => 2, 'c' => 3}) {|key| puts "#{key}"} 




















# Answer

# When we pass `element` to the block on line 5, it contains both the key and the value. The block only has one parameter, which gets assigned to an array with both the key and value in it. So even though our parameter is named `key` it actually contains both the key and the value and it outputs both.

# The code will output:
# ["a", 1]
# ["b", 2]
# ["c", 3]
# and return
# [nil, nil, nil]
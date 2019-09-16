# The method below was built to map arrays. But instead we passed it a hash.

# Will this throw an error message?

# If so, what error?
# If not, what will the code output and return?

def map(arr)
  result = []
  arr.each {|element| result << yield(element)}
  result
end

p map({'a' => 1, 'b' => 2, 'c' => 3}) {|key, value| puts "#{key}, #{value}"} 




















# Answer

# On line 10 when we call arr.each, we are actually calling Hash#each, which normally takes both a |key, value| instead of just a single parameter. But the block doesn't complain and instead passes both to the block, which the block uses.

# The code will output:
# a, 1
# b, 2
# c, 3
# and return"
# [nil, nil, nil]
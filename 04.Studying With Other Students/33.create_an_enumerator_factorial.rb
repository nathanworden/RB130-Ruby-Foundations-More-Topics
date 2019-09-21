# Create a new Enumerator object. 

# When creating a new Enumerator you are able to define what values are iterated upon. Create an Enumerator that can iterate over an infinite list of factorials. Once you make this new Enumerator, test it out by printing out the first 10 factorial values, starting with zero factorial.

# Expected Output:
# 1
# 1
# 2
# 6
# 24
# 120
# 720
# 5040
# 40320
# 362880



















# Answer: 








factorial = Enumerator.new do |yielder|
  accumulator = 1
  number = 0
  loop do
    accumulator = number.zero? ? 1 : accumulator * number
    yielder << accumulator
    number += 1
  end
end

10.times { puts factorial.next }




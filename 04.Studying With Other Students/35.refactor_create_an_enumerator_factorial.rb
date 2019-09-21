# Refactor the factorial enumerator below so that it no longer uses a ternanry operator. Your answer cannot be more lines of code than it is now.

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

# Expected Output is still:
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










#Answer: 









factorial = Enumerator.new do |yielder|
  accumulator = 1
  number = 1
  loop do
    yielder << accumulator
    accumulator = accumulator * number
    number += 1
  end
end

10.times { puts factorial.next }
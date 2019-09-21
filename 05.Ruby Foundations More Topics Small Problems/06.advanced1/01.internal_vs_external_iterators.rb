# Problem
# Create a new Enumerator object.
# When creating the new enumerator, define what values are iterated upon.
# Create an Enumerator that can iterate over an infinate list of factorials.


# fib = Enumerator.new do |y|
#   a = b = 1
#   loop do
#     y << a
#     a, b = b, a + b
#   end
# end

# p fib.take(100)



# fac = [1, 1, 2, 6, 24, 120, 720].each
# puts fac.next
# puts fac.next
# puts fac.next
# puts fac.next
# puts fac.next
# puts fac.next
# puts fac.next


# factorial = Enumerator.new do |yielder|
#   number = 1
#   accumulator = 1
#   loop do
#     yielder << accumulator
#     accumulator = number * accumulator
#     number += 1
#   end
# end


# 7.times {puts factorial.next}

# factorial.rewind

# factorial.each_with_index do |number, index|
#   puts number
#   break if index == 6
# end


# [1, 1, 2, 6, 24, 120, 720]








factorial = Enumerator.new do |yielder|
  accumulator = 1
  number = 0
  loop do
    accumulator = number.zero? ? 1 : accumulator * number
    yielder << accumulator
    number += 1
  end
end

7.times { puts factorial.next }

# factorial.rewind

factorial.each_with_index do |number, index|
  puts number
  break if index == 6
end


















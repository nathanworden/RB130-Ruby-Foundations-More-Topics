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

fac = Enumerator.new do |y|
  n = 1
  result = 1
  loop do
    y << result
    result = n * result
    n += 1
  end
end


enum = fac.each

p enum.next
p enum.next
p enum.next
p enum.next
p enum.next
p enum.next
p enum.next
# enum.rewind

p enum.each_slice(7)



# [1, 1, 2, 6, 24, 120, 720]
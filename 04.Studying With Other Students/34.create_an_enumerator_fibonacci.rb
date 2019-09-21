# Create an Enumerator that can iterate over an infinite list of fibonacci numbers. Once you make this new Enumerator, test it out by printing out the first 20 fibonnacci numbers.


# Expected Output:
# 1
# 1
# 2
# 3
# 5
# 8
# 13
# 21
# 34
# 55
# 89
# 144
# 233
# 377
# 610
# 987
# 1597
# 2584
# 4181
# 6765


















 # Answer:







factorial = Enumerator.new do |yielder|
  a = b = 1
  yielder << 1
  loop do
    yielder << a
    a, b = a + b, a
  end
end

20.times {|num| puts factorial.next}



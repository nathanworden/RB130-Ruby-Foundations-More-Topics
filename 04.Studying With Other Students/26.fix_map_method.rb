# Debug this code so that it passes all the tests below.

def map(arr)
  result = []
  arr.each {|element| arr << yield(element)}
  result
end



p map([4, 9, 2]) { |value| value**2 } == [16, 81, 4]
p map([]) { |value| true } == []
p map(['zero', 'ninty', 'dog', 'green']) { |value| false } == [false, false, false, false]
p map(['g', 'h', 'i', 'j']) { |value| value.upcase } == ['G', 'H', 'I', 'J']
p map([2, 5, 9]) { |value| (1..value).to_a } == [[1, 2], [1, 2, 3, 4, 5], [1, 2, 3, 4, 5, 6, 7, 8, 9]]



















# Answer:







def map(arr)
  result = []
  arr.each {|element| result << yield(element)}
  result
end
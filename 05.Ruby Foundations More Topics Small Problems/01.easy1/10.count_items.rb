
# def count(arr)
#   count = 0
#   arr.each {|item| count += 1 if yield(item)}
#   count
# end

def count(arr)
  arr.reduce(0) {|acc, item| yield(item) ? acc + 1 : acc}
end


p count([1, 2, 3, 4, 5]) {|value| value.odd?} == 3
p count([1, 2, 3, 4, 5]) {|value| value % 3 == 1} == 2
p count([1, 2, 3, 4, 5]) {|value| true } == 5
p count([1, 2, 3, 4, 5]) {|value| false} == 0
p count([]) {|value| value.even?} == 0
p count(%w(Four score and seven)) {|value| value.size == 5} == 2
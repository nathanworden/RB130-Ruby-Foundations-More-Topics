# Fix the ``one?` method below so that it passes all the tests

def one?(arr)
  seen_one = 0
  arr.each do |item|
    return false if seen_one >= 2
    seen_one += 1 if yield(item)
  end
  true if seen_one == 1
  false
end


p one?([1, 3, 5, 6]) {|value| value.even?} == true
p one?([1, 3, 5, 7]) {|value| value.odd?} == false
p one?([2, 4, 6, 8]) {|value| value.even?} == false
p one?([1, 3, 5, 7]) {|value| value % 5 == 0} == true
p one?([1, 3, 5, 7]) {|value| true} == false
p one?([1, 3, 5, 7]) {|value| false} == false
p one?([]) {|value| true} == false











# Answer:





# def one?(arr)
#   seen_one = 0
#   arr.each do |item|
#     return false if seen_one >= 2
#     seen_one += 1 if yield(item)
#   end
#   return true if seen_one == 1
#   false
# end
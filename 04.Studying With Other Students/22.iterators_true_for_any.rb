# Write an 'any' method that will work for both arrays and hashes and will pass all of the  tests below.




p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false
p any?({1 => "Normandy", 2 => "Blues"}) {|key, value| value == "Blues" && key == "Bob"} == false






















# Answer:














def any?(arr)
  arr.each {|element, value| return true if yield(element, value)}
  false
end
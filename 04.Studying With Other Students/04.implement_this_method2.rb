# In only 3 lines of code implement the `each` method on line 9
# so that it prints out the commented out code on lines 14-19.




arr = [1, 2, 3, 4, 5]
p(each(arr) do |num|
  puts num
end)


# 1
# 2
# 3
# 4
# 5
# [1, 2, 3, 4, 5]






















# Answer:






# def each(array)
#   array.each {|element| yield(element)}
# end
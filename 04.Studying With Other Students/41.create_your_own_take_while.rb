list = [0,1,2,3,5,8,13]

# def take_while(list)
#  counter = 0
#  output = []
#   loop do
#     break unless yield(list[counter])
#     output << list[counter]
#     counter += 1
#   end
#   output
# end


# p take_while(list){|item| item.even?}


# def take_while(list, &block)
#   list.take_while(&block)
# end

def take_while(list, &block)
  output = []
  list.each {|item| yield(item) ? output << item : (return output)}
end

p take_while(list){|item| item.even?}
p take_while(list){|item| item < 8}
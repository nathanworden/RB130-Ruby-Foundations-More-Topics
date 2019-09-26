# Write a program that will converta trinary number, represented as a string (e.g. '102012') to its decimal equivalent using first principles (without using an existing method or library that can work with numeral systems)

# Trinary numbers can only contain three symbols, 0, 1, 2. Invalid trinary entries should convert to decimal number 0.

# The last place in a trinary number is the 1s place. The second to last is the 3's place. The third to last is the 9's place, etc.


# In my opinion, my answer rocks
# class Trinary
#   def initialize(num)
#     @num = num.to_i.digits
#   end

#   def to_decimal
#     return 0 if @num.join.match(/[^0-2]/)

#     @num.map.with_index {|num, index| num * 3 ** index}.sum
#   end
# end


require 'pry'
# Student answer:
class Trinary
  def initialize(input)
    @value = /^[0-2]+$/ =~ input ? input : '0'
  end

  def to_decimal
    # binding.pry
    @value.chars.inject(0) { |sum, num| (sum + num.to_i) * 3 } / 3
  end
end

num = Trinary.new('102012')
# num2 = Trinary.new('543op')
p num.to_decimal
# p num2.to_decimal


1*3**5 + 0*3**4 + 2*3**3 + 0*3**2 + 1*3**1 + 2*3**0
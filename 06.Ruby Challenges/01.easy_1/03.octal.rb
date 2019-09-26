# Problem

# Implement octal to decimal conversion. Given an octal input string, your program should produce a decimal output.


# Define a class

# split the octal string into an array of integer strings
# Save the size of the array

# My answer:

# class Octal
#   def initialize(octal_str)
#     @octal_str = octal_str
#   end

#   def to_decimal
#     return 0 if invalid?(@octal_str)
#     octal_arr = @octal_str.chars
#     num_digits = octal_arr.size
#     powers = (0...num_digits).to_a.reverse
#     sum_this = octal_arr.map.with_index do |element, index|
#       index_inverse = powers[index]
#       element.to_i * 8 ** index_inverse
#     end
#     sum_this.sum
#   end

#   def invalid?(str)
#     str.match(/[a-zA-Z]/) || str.include?('9') || str.include?('8')
#   end
# end

# My answer refactored:

# class Octal
#   def initialize(octal_str)
#     @octal_str = octal_str
#   end

#   def to_decimal
#     return 0 if invalid?(@octal_str)

#     octal_arr = @octal_str.chars.reverse
#     octal_arr.map.with_index do |element, index|
#       element.to_i * 8 ** index
#     end.sum
#   end

#   def invalid?(str)
#     str.match(/[\D|8|9]/)
#   end
# end

# Student Answer:

# class Octal
#   BASE = 8
#   INVALID_OCTAL = /\D|[8-9]/

#   attr_reader :octal_string

#   def initialize(octal_string)
#     @octal_string = octal_string
#   end

#   def to_decimal
#     octal_string =~ INVALID_OCTAL ? 0 : calculate
#   end

#   private

#   def calculate
#     decimal = 0
#     octal_string.reverse.each_char.with_index do |char, index|
#       decimal += char.to_i * (BASE ** index)
#     end
#     decimal
#   end
# end

# Another Student Answer:

require 'pry'

class Octal
  # binding.pry
  attr_reader :octal
  EXCEPTIONS = 'az89'
  BASE = 8

  def initialize(string)
    if string.downcase.count(EXCEPTIONS) > 0
      @octal = [0]
    else
      @octal = string.chars.reverse!.map(&:to_i)
    end
  end

  def to_decimal
    dec_array = []
    octal.each_index do |digit|
      dec_array << octal[digit] * BASE**digit
    end
    dec_array.reduce(:+)
  end
end



octal = Octal.new('bcd7')
p octal.to_decimal












# Problem

# Implement octal to decimal conversion. Given an octal input string, your program should produce a decimal output.


# Define a class

# split the octal string into an array of integer strings
# Save the size of the array


class Octal
  def initialize(octal_str)
    @octal_str = octal_str
  end

  def to_decimal
    octal_arr = @octal_str.chars
    num_digits = octal_arr.size
    powers = (0...num_digits).to_a.reverse
    sum_this = octal_arr.map.with_index do |element, index|
      index_inverse = powers[index]
      element.to_i * 8 ** index_inverse
    end
    sum_this.sum
  end
end

octal = Octal.new('17')
p octal.to_decimal
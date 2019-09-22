# Convert 64206 from a decimal integer to a hexadecimal string. You are not allowed to use the to_i or to_s methods




# Answer:







# p 64206.to_s(16)

# Create a hash with 16 characters, each for the 16 places for hexidecimal.
# Assign an empty array to a `result` local variable
# define a method which takes an input integer `num`
# Find the largest power of 16 that can go into num
# Use integer division to Divide num by that power and push the result to the `result` array
# Take the remainder and repeat the process above until `num` is 16 or less. Push that number to the result array.
# use the hexidecimal array to map the decimal numbers to their hexidecimal counterparts, and return the result

# Helpful Explination of converting from decimal to hexadecimal:
# https://www.khanacademy.org/math/algebra-home/alg-intro-to-algebra/algebra-alternate-number-bases/v/decimal-to-hexadecimal


def decimal_to_hexadecimal(num)
  hexes = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 10 => 'A', 11 => 'B', 12 => 'C', 13 => 'D', 14 => 'E', 15 => 'F'}

  result = []
  loop do 
    counter = 0
    loop do
      power = 16 ** counter
      break if power * 16 > num
      counter += 1
    end
    
    largest_power = 16 ** counter
      result << num / largest_power
    num = num % largest_power
    break if counter == 0
  end

  result.map do |element|
    hexes[element]
  end.join
end

# p decimal_to_hexadecimal(2000)
p decimal_to_hexadecimal(64206)
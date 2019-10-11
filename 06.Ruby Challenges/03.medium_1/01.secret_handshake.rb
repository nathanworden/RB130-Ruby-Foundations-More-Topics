
# Input can be either a string or an integer

# Convert the decimal number to a binary string.
# Split the string into characters (maybe use digits, which reverses them)
# Map the elements by putting them to the power of their index
# Map them again to create an array of the secret actions

# p 1.to_s(2)
# p 2.to_s(2)
# p 4.to_s(2)
# p 8.to_s(2)
# p 3.to_s(2)
# p 19.to_s(2)


SECRET_ACTIONS = {
                  1 => 'wink',
                  10 => 'double blink',
                  100 => 'close your eyes',
                  1000 => 'jump',
                  10000 => 'reverse'
                  }

class SecretHandshake
  def initialize(decimal_num)
    @binary_num = decimal_num.is_a?(String) ? decimal_num : decimal_num.to_s(2)
  end

  def commands
    check_reverse = @binary_num.chars
               .reverse
               .map.with_index {|element, index| element.to_i * 10**index}.map {|element| SECRET_ACTIONS[element]}
               .compact
    eleminate_rev = check_reverse.include?('reverse') ? check_reverse.reverse : check_reverse
    eleminate_rev.delete_if {|element| element == 'reverse'}
  end
end

# number1 = SecretHandshake.new(9)
# number2 = SecretHandshake.new('11001')
# p number1.commands
# p number2.commands




# input: 
# decimal number (integer)
# binary number (string)

# Validation:
# The program should consider strings specifying an invalid binary as the value 0.

# Logic
# Convert it to the appropriate sequence of events for a secret handshake.

# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump

# 10000 = Reverse the order of the operations in the secret handshake.

# Model the problem / solution
 # - convert the decimal into binary string
 #     - "0111" => reverse the string => "1110" => ["wink", "double blink", "close your eyes"]
 #     - each digit maps to a string. "0" means "", "1" means that string itself.
 #     - if the first digit is 1, reverse

 # data structure
 # ["wink", "double blink". "close your eyes", "jump"]

 # algorithm
 # When I have an integer, 
 # I will map into a binary
 # Take only the last four digits
 # Reverse that string
 # Trun the string into an array of 1s and 0s
 # Then select the elements of the array when the string has a coorisponding index that is 1.
 # 

class SecretHandshake
  COMMANDS = %w(wink double\ blink close\ your\ eyes jump).freeze
  BASE = 2

  attr_accessor :code

  def initialize(code)
    @code = code
  end

  def commands
    self.code = code.is_a?(Integer) ? code.to_s(BASE) : validate

    cmds = COMANDS.select.with_index do |_, idx|
      code.reverse[idx] == '1'
    end

    code.size == 5 && code[-1] == '1' ? cmds.reverse : cmds
  end

  def validate
    code.each_char {|char| return '0' unless ('0'...BASE.to_s).cover?(char)}
  end
end


test = SecretHandshake.new






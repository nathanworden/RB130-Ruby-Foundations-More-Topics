# Given a 3 x 4 grid of pipes, underscores, and spaces
# Output: string of numbers

# - singular number
#   - representation of each number, 0 ~ 9
#   - look up
#   - return ? for invalid input
 
# - multiple numbers
#   - need to convert grid of (3*n) x 4 into n grids of (3x4)
#    - break a 3*n length string into n groups of 3 characters: String#scan
#     - break into multiples of (3 X 4) array groups 
  #   _  _     _  _  _  _  _  _
  # | _| _||_||_ |_   ||_||_|| |
  # ||_  _|  | _||_|  ||_| _||_|

# multiple rows of numbers
#   - divide to multiple single rows
#   - Use the solution for the step above

# Implementation
# How to represent an OCR Number

class OCR
  def initialize(text)
    @text = text

    @conversion_hsh = { " _\n| |\n|_|\n"  =>  "0", 
                        "\n  |\n  |\n"    =>  "1",
                        " _\n _|\n|_\n"   =>  "2",
                        " _\n _|\n _|\n"  =>  "3",
                        "\n|_|\n  |\n"    =>  "4",
                        " _\n|_\n _|\n"   =>  "5",
                        " _\n|_\n|_|\n"   =>  "6",
                        " _\n  |\n  |\n"  =>  "7",
                        " _\n|_|\n|_|\n"  =>  "8",
                        " _\n|_|\n _|\n"  =>  "9"
                      } 
  end

  attr_accessor :text

  def convert
    @conversion_hsh[text] || '?'
  end
end

# Seperate

#    text = <<-NUMBER.chomp
#     _
#   || |
#   ||_|

#     NUMBER


# p OCR.new(text).text.size



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


# An individual number given by the HERE_DOC is not standardized. In my opinion
# each number should have exactly 9 characters (not counting the \n)
# But instead the HERE_DOC will skip any spaces that come right before a new line
# because there is nothing to show there. But the space is really important and 
# needs to be accounted for. The space is accounted for between numbers in a multi
# number string (but the problem is the same at the end of the line before the 
# newline character). That is why I choose to use a standardized @conversion_hsh
# instead of the 'the_here_doc_sx' hash. The @conversion hash has lines that are
# all 9 characters long, not counting the \n characters. (They are all 12 long 
# if you count the \n character)

the_here_doc_sx = { " _\n| |\n|_|\n"  =>  "0", 
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
class OCR
  def initialize(text)
    @text = text

    @conversion_hsh = { " _ \n| |\n|_|\n"  =>  "0", 
                        "   \n  |\n  |\n"  =>  "1",
                        " _ \n _|\n|_ \n"  =>  "2",
                        " _ \n _|\n _|\n"  =>  "3",
                        "   \n|_|\n  |\n"  =>  "4",
                        " _ \n|_ \n _|\n"  =>  "5",
                        " _ \n|_ \n|_|\n"  =>  "6",
                        " _ \n  |\n  |\n"  =>  "7",
                        " _ \n|_|\n|_|\n"  =>  "8",
                        " _ \n|_|\n _|\n"  =>  "9"
                      } 
  end

  attr_accessor :text

  def convert
    return single_digit(text) if text.size <= 12
    return multiple_digit(text) if !text.include?("\n\n")
    multi_line(text)
  end

  def multi_line(text)
    lines = text.split("\n\n")
    lines.map {|line| multiple_digit(line)}.join(',')
  end

  def multiple_digit(txt)
    txt = standardize_multiple_digit(txt)

    arr = txt.scan(/.../)
    num_digits = arr.size / 3

    sections = arr.each_slice(num_digits).to_a.transpose
    sections.map! {|sec| sec.join("\n") << "\n"}

    sections.map {|num| @conversion_hsh[num] || '?' }.join("")
  end

  def standardize_multiple_digit(txt)
    trio = txt.split("\n")
    correct_size = trio[2].size
    trio.map! do |str| 
      if str.size != correct_size
        str << " " 
      else
        str
      end
    end
    trio.join("\n") << "\n"
  end   

  def single_digit(txt)
    txt = standardize_single_digit(txt)
    @conversion_hsh[txt] || '?' 
  end

  def standardize_single_digit(text)
    trio = text.split("\n")
    trio.map! do |str|
        if str.size == 2
            str << " "
        elsif str.size == 0
            str << "   "
        else
            str
        end
    end
    trio.join("\n") << "\n"
  end
end
  
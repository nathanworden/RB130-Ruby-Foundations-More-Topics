# Input is normalized:
  # The spaces and punctuation are removed 
  # The message is downcased
# The normalized characters are broken into rows
# The coded message is obtained by reading down the columns going left to right.

# If the message is a length that creates a perfect square (4, 9, 16, 25, etc), use that number of columns.
# If the message doesn't fit neatly into a square, choose the number of columns that corresponds to the smallest square that is larger than the number of characters in the messgae.

# normalize_plaintext
  # input: string
  # output: string with spaces and punctuation removed, and downcased.
  # Numbers stay

# size
    # count the number of characters in the string.
    # Check if that number is a perfect square. If it is, return the sqaure root of that number.
    # If it is not, increment the number by one and check if that number is a perfect square. Keep incrementing until you find a perfect square. Return the square root of that number.

# plaintext_segments
  # initiate an 'output' array
  # shift off the first <size> number of characters and create their own string and push them to the 'output' array. Keep doing this until the string is empty.
  # Return output

# *setup* ciphertext
  # initaite an empty 'output' array
  # From the plaintext_segments array, iterate through each of the elements and push the first element to the output string.
  # Then iterate through each element of the array and push the second element to the output string
  # Do this the same number of times that the last element is long
  # For each element in the output array, call compact on it to get rid of any nils.
  # Return the array

  class Crypto
  def initialize(input)
    @plaintext = input.gsub(/\W/, '').downcase
  end

  attr_reader :plaintext

  def normalize_plaintext
    plaintext
  end

  def size
    return Math.sqrt(plaintext.size) if is_square?(plaintext.size)

    goal_size = plaintext.size
    until is_square?(goal_size)
      goal_size += 1
    end
    Math.sqrt(goal_size).to_i
  end

  def is_square?(x)
    (Math.sqrt(x) % 1).zero?
  end

  def plaintext_segments
    output = []
    current = []

    chop_text = plaintext.chars

    until chop_text.empty?
      size.times do |index|
        current << chop_text.shift #unless chop_text.shift == nil
      end
      output << current.compact.join
      current = []
    end
    output
  end

  def setup_ciphertext
    output = []

    size.times do |idx|
      current = []
      plaintext_segments.each {|element| current << element[idx]}
      output << current.compact
      idx += 1
    end
    output
  end

  def ciphertext
    setup_ciphertext.join
  end

  def normalize_ciphertext
    setup_ciphertext.map! {|word| word.join}.join(" ")
  end
end

crypto = Crypto.new('Vampires are people too!')
p crypto.normalize_ciphertext

# ciphertext
  # Return a joined string of all the elements of *setup* ciphertext

  # ---- maybe not
  # Check if the last element is shorter than the second to last element
  # If it is do the loop above the number of times of the amount of difference there is between the last and the second to last element.
  # -----

# normalize_ciphertext
  # Return a joined string with spaces in between all the elements of *setup* ciphertext








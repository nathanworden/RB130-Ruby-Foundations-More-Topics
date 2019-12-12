# What we need to know:

# What one half of the line is


# How many spaces before the letter
    # one_half_line - index

# Which letter
# How many spaces in between the letters


class Diamond
  def self.make_diamond(letter)
    space = 1
    dimensions = ("A".."Z").to_a.map do |letter| 
      duo = [letter, space]
      space += 2
      duo
    end.to_h

    return "A\n" if letter == "A"

    one_half_line = dimensions[letter] / 2
    top_body_lines = one_half_line - 1

    spaces = 1
    top_body = Array.new(top_body_lines, "")
    top_body = top_body.map.with_index do |line, index|
      num_spaces = one_half_line - index - 1
      first_half = " " * num_spaces << dimensions.keys[index + 1]
      middle_spaces = " " * (spaces)
      spaces += 2
      full_line = first_half + middle_spaces + first_half.reverse
    end.join("\n")

    peaks = "A".center(dimensions[letter]) << "\n"

    middle_body = "#{letter}" + (" " * (dimensions[letter] - 2)) + "#{letter}\n"

    peaks + top_body + "\n" + middle_body + top_body.reverse + "\n" + peaks

  end
end

puts Diamond.make_diamond('C')



# Stephanie Cunnane's solution is really good:

# class Diamond
#   def self.make_diamond(letter)
#     return "A\n" if letter == 'A'

#     letters = [*'A'...letter] + [*'A'..letter].reverse
#     width = letters.size
#     outer = (width / 2).downto(0).to_a + (1..(width / 2)).to_a
#     inner = outer.map { |outer| width - 2 - (outer * 2) }

#     letters.map.with_index do |letter, idx|
#       if letter == 'A'
#         'A'.center(width) << "\n"
#       else
#         "#{' ' * outer[idx]}#{letter}#{' ' * inner[idx]}#{letter}#{' '* outer[idx]}\n"
#       end
#     end.join
#   end
# end
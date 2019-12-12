# MAKE DIAMOND 
 # initialize our diamond as = ""

 # figure out how many letters to print
   # letter_array = array of letters from b to terminating
   # edge_spaces = array_of_letters.size -1 
   # center_spaces = 1
   
  # letter count times |counter| do
    # current_letter = letter_array[counter]
    # #edgespace letter center space letter edgespace appended into our_diamond
    #edge_spaces -= 1
    #center_spaces += 2

    # string = "    A    \n"\
    #          "   B B   \n"\
    #          "  C   C  \n"\
    #          " D     D \n"\
    #          "E       E\n"\
    #          " D     D \n"\
    #          "  C   C  \n"\
    #          "   B B   \n"\
    #          "    A    \n"
    
DIAMOND_SIZE = {"A" => 1, 
                "B" => 3,
                "C" => 5,
                "D" => 7,
                "E" => 9,
                "F" => 11,
                "G" => 13,
                "H" => 15,
                "I" => 17,
                "J" => 19,
                "K" => 21,
                "L" => 23,
                "M" => 25,
                "N" => 27,
                "O" => 29,
                "P" => 31,
                "Q" => 33,
                "R" => 35,
                "S" => 37,
                "T" => 39,
                "U" => 41,
                "V" => 43,
                "W" => 45,
                "X" => 47,
                "Y" => 49,
                "Z" => 51}




class Diamond
  def self.make_diamond(letter)

    return "A\n" if letter == "A"

    diamond = ""
    
    total_length = DIAMOND_SIZE[letter]
    a_line = "A".center(total_length) << "\n"

    letter_array = ("B"..letter).to_a
    edge_spaces = letter_array.size - 1
    center_spaces = 1

    letter_array.size.times do |counter|
      current_letter = letter_array[counter]

      edge_white_space = " " * edge_spaces
      center_white_space = " " * center_spaces 

      diamond << "#{edge_white_space}#{current_letter}#{center_white_space}#{current_letter}#{edge_white_space}\n"

      edge_spaces -= 1
      center_spaces += 2
    end

    top = diamond.prepend(a_line)
    bottom = top.reverse.split("\n")[2..-1].join("\n")

    output = top + bottom
    output << "\n"
  end
end

 puts Diamond.make_diamond("S")
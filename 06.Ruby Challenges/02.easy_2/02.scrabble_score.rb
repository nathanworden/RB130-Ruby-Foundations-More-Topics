# - Don't underestimate; resist the urge to dive into code
# - Read the description 3 times; produce an outline if necessary
# - Communicate and clarify
# - Test Cases (happy paths, fail paths, edge cases)
# - Have a plan (algorthm), and verify with that
# - Manage your energy
# - Abstractions. 


# Problem:
# Input:
    # word
# Output
    # Integer (the score)

# Validate input
    # (/.,''{}[]\)


  SCORES = {1 => %w(A E I O U L N R S T),
            2 => %w(D G),
            3 => %w(B C M P),
            4 => %(F H V W Y),
            5 => %w(K),
            6 => %w(J X),
            7 => %w(Q Z)}

  # Test Cases

  # p scrabble_score("cabbage") == 14
  # p scrabble_score("nathan") == 9

  # Algorithm

  # Given a string
  # Split the string into an array of characters
  # Validate the array of characters
      # Return 0 if there is anyting other than letters
  # Iterate through each character and Add up the score
      # You will need to reference the SCORES hash


# Code

class Scrabble
  def initialize(str)
    @input = str
  end

  def score
    return 0 if invalid?
  end

  def invalid?
    return true if @input == nil ||
    @input.match(/[^a-zA-Z]/) ||
    @input.empty?
  end
end



  # scrabble = Scrabble.new('').score







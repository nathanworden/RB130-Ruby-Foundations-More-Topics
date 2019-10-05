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
            8 => %w(J X),
            10 => %w(Q Z)}

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

require 'pry'

class Scrabble
  def initialize(str)
    @input = str
  end

  def score
    return 0 if invalid?
    # binding.pry
      @input.chars.reduce(0) do |accum, letter|
      SCORES.each do |key, value| 
        accum += key if SCORES[key].include?(letter.upcase)
      end
      accum
    end
  end

  def self.score(str)
    new(str).score
  end

  def invalid?
    return true if @input == nil ||
    @input.match(/[^a-zA-Z]/) ||
    @input.empty?
  end
end



# Juliet Answer

# require 'pry'

# class Scrabble
#   SCORE = { 1 => %w(A E I O U L N R S T), 2 => %w(D G), 3 => %w(B C M P),
#             4 => %w(F H V W Y), 5 => %w(K), 8 => %w(J X), 10 => %w(Q Z) }

#   def initialize(word)
#     @word = word
#   end

#   def score
#     return 0 if @word.nil?
#     # binding.pry
#     @word.gsub(/[^a-z]/i, '').chars.inject(0) do |sum, char|
#       puts "#{char} += #{sum}"
#       SCORE.select { |_, v| v.include? char.upcase }.keys.first + sum
#     end
#   end

#   def self.score(word)
#     new(word).score
#   end
# end



  # scrabble = Scrabble.new('').score
  # p Scrabble.new('f').score
  p Scrabble.new('OXYPHENBUTAZONE').score







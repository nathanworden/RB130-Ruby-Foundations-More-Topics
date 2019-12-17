#  Create a program that selects the correct anagrams from a sublist


# Case doesn't matter
# Extra letters is not ok
# Has to be a reaarranged word (can't be the exact same word)


# Downcase the input
# Sort the word
# For each of the words in the match array
    # Downcase the word
    # Check to see if the word is the exact same word
        # If it is, fail
    # sort the letters in the word
    # Check to see if the word has more characters than the input word (.count)
    # Check to see if the two words are the same
        # If they are, store that word


class Anagram
  def initialize(str)
    @input_str = str.downcase
    @sorted_input = str.downcase.chars.sort
  end

  def match(arr)
    arr.each_with_object([]) do |word, output|
      next if word.downcase == @input_str

      sorted_word = word.downcase.chars.sort
      output << word if sorted_word == @sorted_input
    end
  end

end






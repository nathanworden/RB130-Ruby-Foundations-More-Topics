# Go through each letter of the given word and check if it matches up with a letter in the candidate word. If there is a match, pull it out of the candidate word.

# The candidate word in the end should be empty.
require 'pry'

class Anagram
  def initialize(given_word)
    @given_word = given_word.downcase
  end

  def match(arr)
    arr.select do |candidate_word|
      candidate_letters = candidate_word.downcase.chars
      @given_word.chars.each do |given_letter|
        candidate_letters.map!.with_index do |candidate_letter, index|
          candidate_letter == given_letter ? nil : candidate_letter
        end
      end
      candidate_letters.join.empty?
    end
  end
end

thing = Anagram.new('diaper')

# binding.pry
p thing.match(%w(Hello hello iaperd))
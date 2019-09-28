# My Answer, Try #1

# Go through each letter of the given word and check if it matches up with a letter in the candidate word. If there is a match, pull it out of the candidate word.

# The candidate word in the end should be empty.
# require 'pry'

# class Anagram
#   def initialize(given_word)
#     @given_word = given_word.downcase
#   end

#   def match(arr)
#     selected = arr.select do |candidate_word|
#       candidate_letters = candidate_word.downcase.chars
#       @given_word.chars.each do |given_letter|
#         candidate_letters.each_with_index do |candidate_letter, index|
#           if candidate_letter == given_letter
#             candidate_letters[index] = nil
#             break
#           end
#         end
#       end
#       candidate_letters.join.empty?
#     end
#     almost_there = selected.select {|word| word.size == @given_word.size}
#     almost_there.select {|word| word.downcase != @given_word.downcase}
#   end
# end


# My Answer, Try #2

# Go through each letter of the given word
# Check if it matches up with a letter in the candidate word
# If it does, delete the letter from the candidate word and stop checking the rest of the letters.
# If it doesn't match with any letter in the candidate word, return false

# require 'pry'

# class Anagram
#   def initialize(given_word)
#     @given_word = given_word.downcase
#   end

#   def match(arr)
#     arr.select do |word|
#       is_anagram = false
#       candidate_word = word.dup.downcase
#       @given_word.chars.each do |given_letter|
#         if candidate_word.include?(given_letter)
#           candidate_word.sub!(given_letter, '')
#         else
#           break
#         end
#       end
#       is_anagram = true if candidate_word.empty?
#       is_anagram = false if word.downcase == @given_word
#       is_anagram
#     end
#   end
# end


# My Answer, Try #3

# An anagram is:
# Not the same word
# Case insensitive
# A different arrangement of the exact same letters
  # Are all the letters in the candidate also in the given word and vice versa?



# class Anagram
#   def initialize(given_word)
#     @given_word = given_word.downcase
#   end

#   def match(arr)
#     arr.select do |word|
#       identical = []
#       candidate_word = word.dup.downcase
#       @given_word.chars.each do |given_letter| 
#         identical << given_letter if candidate_word.include?(given_letter)
#         candidate_word.sub!(given_letter, '')
#       end
#       if identical.join == @given_word && candidate_word.empty? && @given_word != word.downcase
#         true
#       else
#         false
#       end
#     end
#   end
# end


# thing = Anagram.new('corn')

# # binding.pry
# p thing.match(%w(corn dark Corn rank CORN cron park))





# Other Student Answer

require 'pry'

class Anagram
  def initialize(word)
    @original_word = word
    @letters = letters(@original_word)
  end

  def match possibilities
    possibilities.select { |word| anagram? word }
  end

  private

  def anagram? word
    @letters == letters(word) && @original_word != word.downcase
  end

  def letters(word)
    word.downcase.chars.sort
  end
end


thing = Anagram.new('corn')
# binding.pry
p thing.match(%w(corn dark Corn rank CORN cron park))


















# How to work with a coding problem

# - Don't underestimate; resist the urge to dive into code
# - Read the description 3 times; produce an outline if necessary
# - Communicate and clarify
# - Test Cases (happy paths, fail paths, edge cases)
# - Have a plan (algorthm), and verify with that
# - Manage your energy
# - Abstractions. 

# Problem:

# Consider a character set consisting of letters, a space, and a point. Words consist of one or more, but at most 20 letters. An input text consists of one or more words separated from each other by one or more spaces and terminated by 0 or more spaces followed by a point. Input should be read from, and including, the first letter of the first word, up to and including the terminating point. The output text is to be produced such that successive words are separated by a single space with the last word being terminated by a single point. Odd words are copied in reverse order while even words are merely echoed. For example, the input string

# "whats the matter with kansas." becomes "whats eht matter htiw kansas."

# BONUS POINTS: the characters must be read and printed one at a time.

###############################################################


# Problem:
# Input: one or more words separated from each other by one or more spaces and terminated by 0 or more spaces followed by a point.
# Words are one or more, but at most 20 letters.
# Output: Successive words are separated by a single space with the last word being terminated by a single point.
# Output: Odd words are copied in reverse order while even words are merely echoed.

# Examples:
# odd_words("whats the matter with kansas.") == "whats eht matter htiw kansas."
# odd_words("Nathan Get Over Here  .") == "Nathan teG Over ereH."

# Questions:
# Should we validate input? (Or can we assume there won't be any symbols?)



# Data Structures:
# Array, Strings

# Tasks
# Strip extra spaces
# Divide words up based on spaces. Then divide words based on 20 character limit
# 

# Algorithm:
# Accept a string
# Transform the string into an array of characters (chars)
# Initiate a new_word? local variable and assign it to `true`
# Initiate a reverse_this_word? local variable and assign it to `false`
# Evaluate character:
  # If it is a space, ignore it and go to the next character
  # If it is a letter check and see if reverse_this_word? is set to `true`
      # If it is false, print the character, and continue to print characters until you hit a space. Once you hit a space, reassign the `reverse_this_word?` variable to `true`. If you hit a second space, reassign the `new_word?` local variable to `false` and keep it false until you hit a letter. Once you hit a letter, change `new_word?` to true.
      # If it is true, initate a local variable `start` with the index of the start of the word. 
          # Check and see if the next character is a space. 
          # Do this until you find a space. Initiate an `end` varaible with the index of the space.
          # Once you find a space, print the character that was right before that
          # Keep printing the character right before that until you get to the index of the variable `start`
          # Jump back to the index of the `end` variable and reassing the reverse_this_word? local variable to `false`
      # Repeat this process until you hit a `.` At that time print a period and end execution.


# Code

# require 'pry'

# def odd_words(str)
#   arr = str.chars
#   reverse_this_word = false
#   current_idx = -1
#   loop do
#     current_idx += 1
#     break if arr[current_idx] == '.'
#     next if arr[current_idx] == ' '
#     if reverse_this_word
#       reverse_this_word = false
#       start = current_idx
#       reverse_idx = start
#       loop do
#         if arr[reverse_idx] == ' '
#           print ' '
#           break
#         end
#         reverse_idx += 1
#       end
#       # binding.pry
#       iso_word = arr[start, (reverse_idx - start)]
#       print iso_word.reverse.join
#       print ' ' unless arr[reverse_idx + 2] == '.'
#       current_idx = reverse_idx
#     else
#       loop do
#         reverse_this_word = true
#         if arr[current_idx] == ' '
#           break
#         end
#         print arr[current_idx]
#         current_idx += 1
#       end
#     end
#   end
#   puts '.'
# end

# # p odd_words("whats the matter with kansas.") #== "whats eht matter htiw kansas."
# p odd_words("Nathan Get Over Here  .") #== "Nathan teG Over ereH."



# Book Answer

 - chars: letter, space, point
    - any invalid inputs? (??////[])
 - words: 1-20 letters
  - more than 20 letters?
 - input: 
    - 1 or * words,
    - separated by 1 or * spaces
    - terminated: 0 or more spaces, followed by a point
- output:
    - words: have the odd words reversed
    - separated by 1 space
    - terminated: 0 space, followed by a point

input
    - ""
    - "."
    - "hello ."

test cases:
reverse_odd_words("") => ""
reverse_odd_words(".") => "."
reverse_odd_words("hello") => "hello"
reverse_odd_words("hello world.") => "hello draw."
reverse_odd_words"hello world .") => "hello draw."
reverse_odd_words("hello  world .") => "hello draw."
reverse_odd_words("hello world  .") => "hello draw."
reverse_odd_words("hello word world  .") => "hello draw world."

- split the string into an array (consider multiple spaces)
- string reverse the odd elements
- If the string ends with a dot, then dot is kept to the end
- put everything back together (array.join)





















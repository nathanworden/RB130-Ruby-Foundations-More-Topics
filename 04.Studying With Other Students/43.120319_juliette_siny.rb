# Juliette gave me this problem she found on leetcode. 
# She said it was a easy or medium level problem.

# Given a string, find the length of the longest substring without repeating characters.

# Example 1:

# Input: "abcabcbb"
# Output: 3 
# Explanation: The answer is "abc", with the length of 3. 
# Example 2:

# Input: "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3. 
#              Note that the answer must be a substring, "pwke" is a subsequence and not a substring.




# PEDAC

# Problem
# Find the length of the longest substring without repeating characters within a given string.

# Example
# Nathan is trying
# s trying

# Data Structure
# Array
# Strings

# Algorithm
# Given a String
# Convert to an Array
# For each letter in the string:
    # Create a empty array
    # Push letters into the array if the letter isn't already in there
    # If it is, break and save the substring length.
    # Return the max substring length

# Return the length of the longest chunk

# Code

# Add characters to substring until there is a duplicate character
# Save the length of the current substring
# Get the index the character that is curretnly in the the substring that matches the new character
# Git rid of all characters up to that index.
# Continue the process starting with the index

def length_of_longest_substring(str)
  arr = str.chars
  lengths = []
  sub_str = []
  arr.each do |letter|

    if sub_str.include?(letter)
      lengths << sub_str.length
      idx = sub_str.index(letter)
      sub_str = sub_str[idx + 1..-1]
    end
    sub_str << letter 
  end
  lengths << sub_str.length
  lengths.max
end

def length_of_longest_substring(s)
  current = []
  longest = 0
  

  s.each_char do |char|
    if current.include?(char)
      longest = [longest, current.size].max
      index = current.index(char) + 1
      current = current[index..-1] # remove first letters until duplicate value
    end
    current << char
  end

  [longest, current.size].max
end


p length_of_longest_substring('abcabcbb')         == 3  #'abc'
p length_of_longest_substring('bbbbb')            == 1  # 'b'
p length_of_longest_substring('pwwkew')           == 3  # 'wke'
p length_of_longest_substring(' ')                == 1
p length_of_longest_substring('au')               == 2
p length_of_longest_substring('aab')              == 2
p length_of_longest_substring('Nathan is trying') == 8 # 's trying'
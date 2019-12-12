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

# Note that the answer must be a substring, "pwke" is a subsequence and not a substring.


# what we need to know:
# Every permutation of the string
# filter out every permutation that has a repeted character
# Take the logest one.

# Start with an empty string
# Add each letter of the string until there is a repeat letter. When this happens save the lenghth of the string.
# Then start with the repeat letter and continue until you have gone throug the full input string
#  require 'pry'

# def length_of_longest_substring(str)
#   lengths = []
#   current_str = ""
#   index = 0
#   time = 0
#   # binding.pry

#   loop do
#     loop do
#       break if str[index] == nil
#       break if current_str.include?(str[index])
#       current_str << str[index]
#       lengths << current_str.length
#       index += 1
#       time += 1
#     end
#     current_str = str[time-1]
#     break if index == str.length
#   end

#   lengths.max
# end


# SLICE THE STRING UP
#segement_start = 0
#segment_end = 1
# IF the two are the same, save the length of segment_end minus segment 1
# segment_start gets set to segment_end. Segment end is incremented by one
# Stop when  segment_end == str.length - 1

# require 'pry'

# def length_of_longest_substring(str)
#   seg_start = 0
#   seg_end = 1
#   lengths = []
#   # binding.pry
#   until seg_end == str.length - 1
#     current_seg = str[seg_start..seg_end]
#     if current_seg.length != current_seg.chars.uniq.length
#       lengths << seg_end - seg_start
#       seg_start = seg_end
#       seg_end += 1
#     else
#       seg_end += 1
#     end
#   end
#   lengths.max
# end

# Given a string, find the length of the longest substring without repeating characters.

# Create all substrings
# call uniq on them
# take the longest length


def length_of_longest_substring(str)
  start = 0
  fin = 0
  substrings = []

  loop do 
    loop do
      substrings << str[start..fin]
      fin += 1
      break if fin == str.length
    end
    start += 1
    fin = start + 1
    break if fin >= str.length
  end

  unique_subs = substrings.keep_if do |word| 
    word.length == word.chars.uniq.length
  end.map {|word| word.length}.max
end

p length_of_longest_substring('abcabcbb')         == 3  #'abc'
p length_of_longest_substring('bbbbb')            == 1  # 'b'
p length_of_longest_substring('pwwkew')           == 3  # 'wke'
p length_of_longest_substring(' ')                == 1
p length_of_longest_substring('au')               == 2
p length_of_longest_substring('aab')              == 2
p length_of_longest_substring('Nathan is trying') == 8 # 's trying'



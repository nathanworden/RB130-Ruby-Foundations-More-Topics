# Problem
# Write a program that given a phrase can count the occurances of each word in that phrase.

# Example / Test cases
# "olly olly in come free"

# Result:
# olly: 2
# in: 1
# come: 1
# free: 


# Algorithm
# Split the sentence into words
#       # numers are their own word
        # Words cannot be puncuation
        # Non-word characters (such as commas) would split up words
        # Whitespace characters split up words
        # Apostrophes don't split characters
        # Single quotes aren't part of the word
# Case does not matter
# Create a new hash with each word as a key ||= word.count as the value


sentence = 'word'
sentence2 = 'one of each'
sentence3 = 'one fish two fish red fish blue fish'



# p sentence.split
# p sentence2.split
p sentence3.split


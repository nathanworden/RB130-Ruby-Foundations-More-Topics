# What are regular Expressions?

# Answer:
# Regex are patterns that we can use to search for information of interest in a set of strings.


# 2)

# Write a regex that matches 'dog show' or 'fashion show' but write 'show' precisely once. Test it with these strings

# dogshow
# fashionshow
# dog show
# fashion show
# dog show and fashion show

# There should be four matches.


# Answer:
# /(dog|fashion) show/


#3) What is the output of this code?

# text = 'xyx'
# puts 'matched' if text.match(/[^x]/)

#Answer:
# `matched
# The regex matches the 'y' in 'xyx' and so 


#4) 
# Are /(ABC|abc)/ and /[Aa][Bb][Cc]/ equivalent regex? If not, how do they differ? Can you provide an example of a string that would match one of these regex, but not the other?

# Solution
# The patterns are not equivalent. The former matches nothing but the strings ABC or abc; the latter matches any string consisting of the letters a, b, c in sequence, regardless of case. The string Abc would match the second pattern, but not the first.

  
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


# 5)
# What regex would you use if you want to match every period and every character after a period in a piece of text?

# For example, in the text below, your regeg would match the ". " on line 2 at the end of the word characters, and the './' in line three in '/./', but it would not match the . at the end of the 982. (Because there isn't a character after 982. Instead, it is a newline)


# This text contains letters, numbers, punctuation,
# whitespace, and even newline characters. 982.
# Everything in it should match the /./ pattern.

# Answer
# \..

# [.].     # This would also work. A `.` inside square brackets is literal; if you want to match "any character" you must move the period outside the square brackets.




# 6) What are the whitespace characters?

#Answer:

# space (' ')
# tab ('\t')
# vertical tab ('\v')
# carriage return ('r\')
# line feed ('\n')
# form feed ('\f')

# Thus /\s/ is equivalent to /[\t\v\r\n\f]/

# And /\S/ is equivalent to /[^ \t\v\r\n\f]/


# 7) 
# What will the following code output?

# puts 'matched 1' if 'Four score'.match(/\s/)
# puts 'matched 2' if "Four\tscore".match(/\s/)
# puts 'matched 3' if "Four-score\n".match(/\s/)
# puts 'matched 4' if "Four-score".match(/\s/)
# puts 'matched 5' if 'a b'.match(/\S/)
# puts 'matched 6' if " \t\n\r\f\v".match(/\S/)

# # Answer:
# matched 1
# matched 2
# matched 3
# matched 5



# 8)
# Outside square brackets, /\s/ stands for one of the whitespace characters. But inside square brackets, what does the /\s/ represent?

# # Answer:
# /[\s]/ represents an alternative to the other members of the class. For instance, in /[a-z\s]/ the pattern as a whole represents any lowercase alphabettic character or any whitespace character.


# 9)

# What does /\w/ match?

# Answer:

# /\w/ matches "word characters". At first glance, most people assume that word characters are alphabetic. In fact, the definition of word characters for \w is a bit broader than that; they include all alphabetic characters (a-z, A-Z), all decimal digits (0-9), and, oddly, an underscore(_). Avoid trouble and commit this to memory.



#10) 
# Write a regex that matches any four digit hexadecimal number that is both preceded and followed by whitespace. Note that 0x1234 is not a hexadecimal number in this exercise: there is no space before the number 1234.

# Hello 4567 bye CDEF - cdef
# 0x1234 0x5678 0xABCD
# 1F8A done


# There should be four matches (On Rubular)

#Answer: 

# /\s\h\h\h\h\s/

# The real surprise here may be that cdef and 1F8A are matches. cdef has a trailing white space character in the form of a newline, and 1F8A has a preceding white space that is a newline. The matches are 4567, CDEF, cdef, and 1FBA



#11)

# What is another way to write the regex above and get the same result?
#Answer: 
# \s[a-fA-F0-9]{4}\s


#12) 
# What are two ways to write regex that will match any sequence of three letters?

# Test it with these strings:

# The red d0g chases the b1ack cat.
# a_b c_d

# There should be seven matches.


# Answer1:
# /[a-z][a-z][a-z]/i

# Answer2: 
# [a-zA-Z]{3}




#13) In regex what are the ^ and $ meta-characters?

# Answer:
# The ^ and the $ meta-characters are anchors that fix a regex match to the beginning (^) or ending ($) of a line of text. They mean that ^ and $ anchor a regex to the beginning or end of a line in a string (at any \n character)


# 14) What will the following code output?

# TEXT2 = "red fish\nred shirt"
# puts "matched fish" if TEXT2.match(/fish$/)
# puts "matched shirt" if TEXT2.match(/shirt$/)

# Answer:
# "matched fish"
# "matched shirt"



# 15) 

# What do \A, \Z, and \z do?


# Answer:
# The \A anchor ensures that a regex matches at the beginning of the string (not the beginning of a \n like ^ would)

# The \Z and \z match at the end of the string. The difference between \Z and \z is \z always matches at the end of a string, while \Z matches up to, but not including a newline at the end of the string. As a rule, use \z until you determine that you need \Z


# 16)

# What does the following code output?

# TEXT3 = "red fish\nblue fish"
# TEXT4 = "red fish\nred shirt"
# puts "matched red" if TEXT3.match(/\Ared/)
# puts "matched blue" if TEXT3.match(/\Ablue/)
# puts "matched fish" if TEXT4.match(/fish\z/)
# puts "matched shirt" if TEXT4.match(/shirt\z/)


#Answer:

# "matched red"
# "matche shirt"


# 17)
# What are the \b and \B, anchors? 

# Answer:
# \b is word boundaries and \B is non-word boundaries.
# For these anchors, words are sequences of word characters (\w) while non-words are sequences of non-word characters (\W).


# 18)

# When does a word boundary occur?

# Answer:
# 1)Between any pair of characters, one of which is a word character and one which is not.
# 2) At the beginning of a string if the first character is a word character.
# 3) At the end of a string if the last character is a word character.


# 19)

# When does a non-word boundary occur?

#Answer:
# 1) Between any pair of characters, both of which are word characters or both of which are not word characters.
# 2) At the beginning of a string if the first character is a non-word character.
# 3) At the end of a string if the last character is a non-word character.



# 20)

# match 3 letter words consisting of "word characters": 

# One fish,
# Two fish,
# Red fish,
# Blue fish.
# 123 456 7890

# Your regex should match One, Two, Red, 123, and 456

# Answer
 # /\b\w\w\w\b/


# 21)

# Inside square brackets (meaning inside of a character class) what does \b mean?

# Answer:
# \b matches a backspace character inside of character classes



# 22)
# Write a regex that matches the word The when it occurs at the beginning of a line. Test it with these strings:

# The lazy cat sleeps.
# The number 623 is not a word.
# Then, we went to the movies.
# Ah. The bus has arrived.

# There should be two matches.
# /^The\b/

# 23)
# Write a regex that matches the word cat when it occurs at the end of a line. Test it with these strings:

# The lazy cat sleeps
# The number 623 is not a cat
# The Alaskan drives a snowcat

# There should be one match.











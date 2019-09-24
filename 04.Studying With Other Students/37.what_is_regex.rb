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

# Answer:
# /^The\b/

# 23)
# Write a regex that matches the word cat when it occurs at the end of a line. Test it with these strings:

# The lazy cat sleeps
# The number 623 is not a cat
# The Alaskan drives a snowcat

# There should be one match.

# Answer:
# /\bcat$/



# 24)

# Write a regex that matches any three-letter word; a word is any string comprised entirely of letters. You can use these test strings.

# reds and blues
# The lazy cat sleeps.
# The number 623 is not a word. Or is it?

# There should be five matches.

# Answer:

# /\b[a-z]{3}\b/i



#25) 

# Challenge: Write a regex that matches an entire line of text consists of exactly 3 words as follows:

# The first word is A or The.
# There is a single space between the first and second words.
# The second word is any 4-letter word.
# There is a single space between the second and third words.
# The third word -- the last word -- is either dog or cat.
# Test your solution with these strings:

# A grey cat
# The lazy dog
# The white cat
# A loud dog
# Go away dog
# The ugly rat
# The lazy, loud dog

# There should be three matches.

# Answer:

# /^(A|The) [a-zA-Z]{4} (dog|cat)$/

# Also acceptable:
# /^(A|The) [a-zA-Z][a-zA-Z][a-zA-Z][a-zA-Z] (dog|cat)$/

# The valid matches are A grey cat, The lazy dog, and A loud dog.

# This solution employs alternation from the first chapter in this section to define the words that occur at the beginning and end of each line and includes a match for a four-letter word in the middle. We have assumed that the middle word can contain both uppercase and lowercase letters, so we have to specify [a-zA-Z] for each of the four letters. We don't use \w because the problem explicitly asked for four-letter words.

# As with the other exercises, a proper Ruby solution would use \A and \z instead of ^ and $, but to allow for Rubular limitations, we use ^ and $ instead.




# 26)

# Suppose you need to test whether a string contains the words cot or coot, but don't want to match against ct or cooot

# Answer:

# /coo?t/


# 27)
# What is the differnce between regex ? and the ? wildcard you find in most command line shells?

# Answer:

# The regex ? quantifier looks similar to the ? wildcard you find in most command line shells, but it isn't the same. The ? wildcard means zero or one occurrence of any character, or acts as a placeholder for a single character, depending on what shell you are using. The ? regex quantifier means zero or one occurrence of the pattern to its left. If you allow yourself to become confused by the similarity in appearance, you will have trouble.






# 28)

# Write a regex that would match precisely a ten consecutive digit US style phone number like this 2225551212 but not this 123456789 or this 12345678900


# Answer:\b\d{10}\b





#29)

# Write a regex that matches any word that begins with b and ends with an e, and has any number of letters in-between. You may limit your regex to lowercase letters. Test it with these strings.

# To be or not to be
# Be a busy bee
# I brake for animals.

# There should be four matches.

# Answer:
# /\bb[a-z]*e\b/



# 30)

# Write a regex that matches any line of text that ends with a ?. Test it with these strings.

# What's up, doc?
# Say what? No way.
# ?
# Who? What? Where? When? How?

# There should be three matches.

# Answer:

# /^.*\?$/

# This regex should match the first, third, and fourth lines, but not the second line. Note the use of .*; you'll see this often in regex. It matches any sequence of characters, but, by default, does not match a newline character. It's how you ignore everything between two points when matching.

# Note that the ? must be \-escaped since we want to match a literal ?.



# 31)
# Write a regex that matches any line of text that ends with a ?, but does not match a line that consists entirely of a single ?. Test it with the strings from the previous exercise.

# There should be two matches.

# Answer:
# /^.+\?$/


# 32)

# Write a regex that matches any line of text that contains nothing but a URL. For this exercise, a URL begins with http:// or https://, and continues until it detects a whitespace character or end of line. Test your regex with these strings:

# http://launchschool.com/
# https://mail.google.com/mail/u/0/#inbox
# htpps://example.com
# Go to http://launchschool.com/
# https://user.example.com/test.cgi?a=p&c=0&t=0&g=0 hello
#     http://launchschool.com/

# There should be two matches.


# Answer:
# /^https?:\/{2}\S*$/

# This regex should match the first and second text lines, but none of the others. The third line doesn't match because of a misspelling; the fourth and fifth don't match because of extra content, and the last doesn't match because of the leading spaces.

# The regex begins with a line anchor, ^, and then the http part of the URL followed by an optional s. Next, we have the :, and two / characters (both / characters must be \-escaped). We then have the rest of the URL, which we achieve by matching a string of non-whitespace characters. We also require an explicit line anchor, $, to prevent matching a URL that isn't at the end of the line.


# 33) 

# Modify your regex from the previous exercise so the URL can have optional leading or trailing whitespace, but is otherwise on a line by itself. To test your regex with trailing whitespace, you must add some spaces to the end of some lines in your sample text.

# There should be three matches.

# Solution
# /^\s*https?:\/\/\S*\s*$/
# This regex should match the URLs on the first, second, and last lines.


# 34)

# Modify your regex from the previous exercise so the URL can appear anywhere on each line, so long as it begins at a word boundary.

# There should be five matches.

# Answer:

# /\bhttps?:\/\/\S*/
# This solution should match all of the URLs above. (Note that the third line is a not a URL.)



# 35)

# Write a regex that matches any word that contains at least three occurrences of the letter i. Test your regex against these strings:

# There should be three matches.

# Mississippi
# ziti 0minimize7
# inviting illegal iridium

# Solution
# /\b[a-z]*i[a-z]*i[a-z]*i[a-z]*\b/i

# Alternate solution

# /\b([a-z]*i){3}[a-z]*\b/i
# Your solution should match Mississippi, inviting, and iridium. We use word boundary anchors in our solution to guard against strings that aren't words, such as 0minimize7). Each [a-z]*i matches a sequence of 0 or more letters followed by the letter i. Connecting three occurrences of [a-z]*i and then adding one more [a-z]* to the end, we get a regex that matches any word with 3 is.

# Our alternate solution is similar, but it uses the {3} quantifier to perform the 3-occurrences part of the match. The quantifier applies to ([a-z]*i) which, uses grouping parentheses to treat [a-z]*i as a single pattern for use by {3}.


#36) 

# Write a regex that matches the last word in each line of text. For this exercise, assume that words are any sequence of non-whitespace characters. Test your regex against these strings:

# What's up, doc?
# I tawt I taw a putty tat!
# Thufferin' thuccotath!
# Oh my darling, Clementine!
# Camptown ladies sing this song, doo dah.
# There should be five matches.

# Solution
# /\S+$/

# Your solution should match doc?, tat!, thuccotath!, Clementine!, and dah.


#37)

# Write a regex that matches lines of text that contain at least 3, but no more than 6, consecutive comma separated numbers. You may assume that every number on each line is both preceded by and followed by a comma. Test your regex against these strings:

# ,123,456,789,123,345,
# ,123,456,,789,123,
# ,23,56,7,
# ,13,45,78,23,45,34,
# ,13,45,78,23,45,34,56,
# There should be three matches.

# Solution
# /^,(\d+,){3,6}$/
# Your solution should match the first, third, and fourth lines.


# 38)

# Write a regex that matches lines of text that contain at least 3, but no more than 6, consecutive comma separated numbers. In this exercise, you can assume that the first number on each line is not preceded by a comma, and the last number is not followed by a comma. Test your regex against these strings:

# 123,456,789,123,345
# 123,456,,789,123
# 23,56,7
# 13,45,78,23,45,34
# 13,45,78,23,45,34,56
# There should be three matches.

# Solution
# /^(\d+,){2,5}\d+$/
# Your solution should match the first, third, and fourth lines. In this case, the lack of a comma at each end of the strings complicates our solution slightly - we can't check for 3-6 occurrences of \d+,, but have to check for 2-5 occurrences followed by a final \d+ pattern.



# 39) 

# Challenge: Write a regex that matches lines of text that contain either 3 comma separated numbers or 6 or more comma separated numbers. Test your regex against these strings:

# 123,456,789,123,345
# 123,456,,789,123
# 23,56,7
# 13,45,78,23,45,34
# 13,45,78,23,45,34,56
# There should be three matches.

# Solution
# /(^(\d+,){2}\d+$|^(\d+,){5,}\d+$)/
# Alternate Solution

# /^(\d+,){2}((\d+,){3,})?\d+$/
# Your solution should match the last three lines. Regex provide no simple way to say something like three occurrences, or 6 or more occurrences. We have two approaches we can take instead: either use alternation or use the ? quantifier to make part of the pattern optional.

# Our first solution uses alternation. Let's break it up a bit using "extended" syntax:

# /
#   (                  # Grouping for alternation
#     ^(\d+,){2}\d+$   # Match precisely 3 numbers on a line
#     |                # *or*
#     ^(\d+,){5,}\d+$  # Match 6 or more numbers on a line
#   )                  # All done
# /x
# Our alternate solution uses the ? quantifier instead. Breaking it down once again, we see:

# /
#   ^                  # Start of line
#   (\d+,){2}          # 2 numbers at start
#   (                  # followed by...
#     (\d+,){3,}       #    at least 3 more numbers
#   )?                 #    that are optional
#   \d+                # followed by one last number
#   $                  # end of line
# /x
# Note the use of the 'x' option on these broken out patterns. This Ruby-specific option is useful when you have a convoluted regex. It lets you write a regex over several lines, and put comments on each line. See the Ruby Regexp documentation for more information.

# In a real program, you may instead choose to use two separate regex:

# if text.match(/^(\d+,){2}\d+$/) || text.match(/^(\d+,){5,}\d+$/)
# This code is easier to understand, but not always practical.






# 40) 

# Challenge: Write a regex that matches HTML h1 header tags, e.g.,

# <h1>Main Heading</h1>
# <h1>Another Main Heading</h1>
# and the content between the opening and closing tags. If multiple header tags appear on one line, your regex should match the opening and closing tags and the text content of the headers, but nothing else. You may assume that there are no nested tags in the text between <h1> and </h1>.

# Solution
# /<h1>.*?<\/h1>/
# For this exercise, we need to use a "lazy" quantifier instead of the default greedy quantifier, so we use .*? to match the text in between the <h1> opening tag and its closing tag, </h1>.

# What would happen if you omitted the '?'? Try both the correct regex and the one with a greedy quantifier (/<h1>.*<\/h1>/) against this HTML to see:

# <h1>ABC</h1> <p>Paragraph</p> <h1>DEF</h1><p>Done</p>





# 41)
# Write regex to pass into the `split` method to achieve the output below:

# record = "xyzzy  3456  \t      334\t\t\tabc"
# p record.split(#Write your code here)
# Expected Output:
# -> ['xyzzy', '3456', '334', 'abc']


#Answer:

# record.split(/\s+/)



# 42)
# Write a regex to pass to the method `gsub` which turns the string 'Four score and seven' into "F**r sc*r* *nd s*v*n"

# text = 'Four score and seven'
# vowelless = text.gsub(#answer goes here)
# p vowelless


# Answer:
# vowelless = text.gsub(/[eou]/, '*')





#43) 
# Replace "War of the Worlds" in the text string with 'The Time Machine' using the sub method and a capture group.


# text = 'We read "War of the Worlds."'
# puts text.sub(#anser goes here)


# # Answer:
# puts text.sub(/(['"]).+\1/, '\1The Time Machine.\1')



# 44)
# Write a method that returns true if its argument looks like a URL, false if it does not.


# Examples:

# p url?('http://launchschool.com')   # -> true
# p url?('https://example.com')       # -> true
# p url?('https://example.com hello') # -> false
# p url?('   https://example.com')    # -> false

# Answer:
# def url?(str)
#   !!str.match(/\Ahttps?:\/\/\S+.\z/)
# end





#45)

# Write a method that returns all of the fields in a haphazardly formatted string. A variety of spaces, tabs, and commas separate the fields, with possibly multiple occurrences of each delimiter.


# Examples:

# p fields("Pete,201,Student") == ['Pete', '201', 'Student']

# p fields("Pete \t 201    ,  TA") == ['Pete', '201', 'TA']

# p fields("Pete \t 201") == ['Pete', '201']



# My answer:
# def fields(text)
#   text.gsub(/,/, ' ').split(/\s+/)
# end

# Book Answer:
# def fields(str)
#   str.split(/[ \t,]+/)
# end
# Note that we don't use \s here since we want to split at spaces and tabs, not other whitespace characters.



# 46)

# Write a method that changes the first arithmetic operator (+, -, *, /) in a string to a '?' and returns the resulting string. Don't modify the original string.


# p mystery_math('4 + 3 - 5 = 2') == '4 ? 3 - 5 = 2'

# p mystery_math('(4 * 3 + 2) / 7 - 1 = 1') == '(4 ? 3 + 2) / 7 - 1 = 1'


# Answer:
# def mystery_math(str)
#   str.sub( /[+*\-\/]{1}/, '?')
# end



# 47) 
# Write a method that changes every arithmetic operator (+, -, *, /) to a '?' and returns the resulting string. Don't modify the original string.

# Examples:

# p mysterious_math('4 + 3 - 5 = 2')           ==  '4 ? 3 ? 5 = 2'
# p mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') ==  '(4 ? 3 ? 2) ? 7 ? 1 = 1'

#Answer
# def mysterious_math(str)
#   str.gsub(/[+\-*\/]/, '?')
# end





# 48)

# Write a method that changes the first occurrence of the word apple, blueberry, or cherry in a string to danish.


# Examples:


# p danish('An apple a day keeps the doctor away') == 'An danish a day keeps the doctor away'

# p danish('My favorite is blueberry pie') == 'My favorite is danish pie'

# p danish('The cherry of my eye') == 'The danish of my eye'

# p danish('apple. cherry. blueberry.') == 'danish. cherry. blueberry.'

# p danish('I love pineapple') == 'I love pineapple'

# # Answer:
# def danish(str)
#   str.sub(/\b(apple|blueberry|cherry)\b/, 'danish')
# end



# 49) 

# Challenge: write a method that changes dates in the format 2016-06-17 to the format 17.06.2016. You must use a regular expression and should use methods described in this section.

# def format_date(str)
#   str.gsub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/, '\3.\2.\1')
# end


# p format_date('2016-06-17') # -> '17.06.2016'
# p format_date('2016/06/17') # -> '2016/06/17' (no change)


# 50)

# Challenge: write a method that changes dates in the format 2016-06-17 or 2016/06/17 to the format 17.06.2016. You must use a regular expression and should use methods described in this section.


# Example:

# p format_date('2016-06-17') # -> '17.06.2016'
# p format_date('2017/05/03') # -> '03.05.2017'
# p format_date('2015/01-31') # -> '2015/01-31' (no change)

# # My Answer
# def format_date(str)
#   str.gsub(/\A(\d\d\d\d)([-\/])(\d\d)\2(\d\d)\z/, '\4.\3.\1')
# end



# Book Answer:
# def format_date(original_date)
#   original_date.sub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/, '\3.\2.\1')
#                .sub(/\A(\d\d\d\d)\/(\d\d)\/(\d\d)\z/, '\3.\2.\1')
# end
# Alternate solution

# def format_date(original_date)
#   date_regex = /\A(\d\d\d\d)([\-\/])(\d\d)\2(\d\d)\z/
#   original_date.sub(date_regex, '\4.\3.\1')
# end

# The easiest way to approach this problem is to split it into smaller sub-problems, one that handles dates in 2016-05-17 format, and one that handles 2016/05/17 format, which is what both of our primary solutions do. One possible gotcha here is that you must remember to escape the / characters in the regex.

# You can solve this problem with one regex, as in our alternate solutions, but at the expense of a more complex regex and lowered readability. The regex adds one additional capture group to capture the first - or /, and uses a \2 backreference to refer back to that capture in the regex. However, this additional capture group modifies the backreference numbers for the month and day components of the date, so we now need to refer to them as \4 and \3 in Ruby, $4 and $3 in JavaScript. In Ruby, this might be a good time to look up how to use named capture groups.

# Note that our alternate solutions use variables to store the regex. We do this both for readability, and to show that regex are no different than any other object; you can manipulate and pass them around as needed.








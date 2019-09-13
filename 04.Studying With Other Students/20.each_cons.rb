sentence = "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro 'Matz' Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. According to the creator, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, Basic, and Lisp. I was talking with my colleague about the possibility of an object-oriented scripting language. I knew Perl (Perl4, not Perl5), but I didn't like it really, because it had the smell of a toy language (it still has). The object-oriented language seemed very promising. I knew Python then. But I didn't like it, because I didn't think it was a true object-oriented language – OO features appeared to be add-on to the language. As a language maniac and OO fan for 15 years, I really wanted a genuine object-oriented, easy-to-use scripting language. I looked for but couldn't find one. So I decided to make it. The name 'Ruby' originated during an online chat session between Matsumoto and Keiju Ishitsuka on February 24, 1993, before any code had been written for the language.[17] Initially two names were proposed: 'Coral' and 'Ruby'. Matsumoto chose the latter in a later e-mail to Ishitsuka.[18] Matsumoto later noted a factor in choosing the name 'Ruby' – it was the birthstone of one of his colleagues.he first public release of Ruby 0.95 was announced on Japanese domestic newsgroups on December 21, 1995.[21][22] Subsequently, three more versions of Ruby were released in two days.[17] The release coincided with the launch of the Japanese-language ruby-list mailing list, which was the first mailing list for the new language. Already present at this stage of development were many of the features familiar in later releases of Ruby, including object-oriented design, classes with inheritance, mixins, iterators, closures, exception handling and garbage collection. Early releases"

# From the paragraph above, you want to find the two word pairs that appear next to each other the most times. Please write a method that can pass in the string above and return a hash with the pair of words that appear most along with the number of times they appear next to each other.

# Please use the Enumerable method each_cons as part of your implementation.

# Your answer should be in the form of an array with the first element being an array of the two words that appear most, and the second element being the number of times those words appear next to each other.

# For example, if you have this sentence:

# str2 = "let's go please go let's go let's ok go let's"

# The answer would be:
# [["go", "let's"], 3]




find_most_repeated_word_pairs(sentence)

find_most_repeated_word_pairs(str2)














# Answer:
=begin
[["I", "didn't"], 3]


def find_most_repeated_word_pairs(str)
  aggregate = []
  str.split.each_cons(2) {|duo| aggregate << duo}
  num_appear = Hash.new
  aggregate.each do |duo|
    num_appear.include?(duo) ? num_appear[duo] += 1 : num_appear[duo] = 1
  end
  
  p num_appear.max_by {|k, v| v}
end

=end














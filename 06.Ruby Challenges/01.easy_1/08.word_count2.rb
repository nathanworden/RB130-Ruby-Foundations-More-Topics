class Phrase
  def initialize(string)
    @string = string.downcase
  end

  def word_count
    output = Hash.new(0)
    @string.split(/( |,)/).each do |word|
      if word.size > 1
        word = word[1..-2] if word[0] == "'" && word[-1] == "'"
        word = word.scan(/\w+'?\w?/)[0]
        output[word] += 1
      else
        output[word] += 1 if word.match(/\w/)
      end
    end
    output
  end
end

phrase = Phrase.new("Joe can't tell between 'large' and large.")
p phrase.word_count

phrase = Phrase.new("Louis' classroom.")
p phrase.word_count

# word has to start with a word character
# The word can have an apostrophie in it.
# If the word ends in an apostrophie, it can't start with one
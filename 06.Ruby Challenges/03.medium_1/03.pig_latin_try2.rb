# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
# Write a method that adds "ay" to the end of the string input



# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.

# loop do
# - Check to see if the first letter of the word is a vowel. ('y's don't count)
# - If it is, return 'rule1' 

# If it isn't, find the first vowel ('y's do count)
# If the first vowel is a y or a x, 
  # check to see if the next letter is a vowel
      # If the next letter is a vowel, only take the y, then run Rule1
      # if the next letter is not a vowel, run Rule1
# Cut off everything before the vowel
    # unless the vowel is a u and there is a q before it.
    # In that case, take everything before the 'u' AND the 'u'
# Paste that to the end

class PigLatin
  def self.translate(sentence)
    sentence.split.map do |word|
      per(word) << 'ay'
    end.join(' ')
  end

  def self.per(word)
    loop do
      return word if word[0].match?(/[aeiou]/)
      return word if word[0].match(/[xy]/) && word[1].match(/[^aeiou]/)

      fvidx = word.index(/[aeiou]/)
      fvidx += 1 if word[fvidx] == 'u' && word[fvidx - 1] == 'q'

      prefix = word[0...fvidx]
      word = word[fvidx..-1] << prefix
    end
  end
end

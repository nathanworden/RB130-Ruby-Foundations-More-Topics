# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.


# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.

# Check if the word begins with a vowel.
      # If it does not:
            # Find the first vowel, and take everything before it and move it to the end of the word and then add an "ay" to the end of the word

                #
      # If it does, concatenate "ay" to the end of the word.

require 'pry'

class PigLatin
  def self.translate(sentence)
    sentence.split.map do |word|
      if word[0].match?(/[^aeiou]/i)

          first_vowel = word.index(/([aeiouy])/i)
          
          if word[first_vowel] == 'y' && word[first_vowel + 1].match?(/[^aeiouy]/i)
            "Figure something out in here when a y has a consonent after it"
          end

          first_vowel += 1 if word[first_vowel - 1] == 'q' && word[first_vowel] =='u'

          strip_beg = word[0...first_vowel]
          word = word[first_vowel..-1] << strip_beg

      end

      word << 'ay'
    end.join(' ')
  end

end

# p PigLatin.translate('ear')
# p PigLatin.translate('apple')
# p PigLatin.translate('yellow')
# binding.pry
p PigLatin.translate('yttria')
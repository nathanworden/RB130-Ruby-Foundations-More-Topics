# Algorithm

# Split the string into words
# Turn the word into individual characters
# If the character is lowercase move it 13 spaces forward in the lower case alphabet
# If the character is uppercase move it 13 spaces forward in the upper case alphabet
# If the character is not a letter character, leave it be
# Join the characters
# Join the words back together with a space

require 'pry'
UP_ALPHA = ("A".."Z").to_a
DOWN_ALPHA = ("a".."z").to_a

def rot13(str)
  output = []
  str.split.each do |word|
    word_morph = word.chars
    word_morph.map! do |char|
      case
      when UP_ALPHA.include?(char)
        index = (UP_ALPHA.index(char) + 13) % 26
        UP_ALPHA[index]
      when DOWN_ALPHA.include?(char)
        index = (DOWN_ALPHA.index(char) + 13) % 26
        DOWN_ALPHA[index]
      else
        char
      end
    end
    output << word_morph.join
  end
  output.join(' ')
end


p rot13("Nqn Ybirynpr")
p rot13("Tenpr Ubccre")
p rot13("Nqryr Tbyqfgvar")
p rot13("Nyna Ghevat")
p rot13("Puneyrf Onoontr")
p rot13("Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv")
p rot13("Wbua Ngnanfbss")
p rot13("Ybvf Unvog")
p rot13("Pynhqr Funaaba")
p rot13("Fgrir Wbof")
p rot13("Ovyy Tngrf")
p rot13("Gvz Orearef-Yrr")
p rot13("Fgrir Jbmavnx")
p rot13("Xbaenq Mhfr")
p rot13("Fve Nagbal Ubner")
p rot13("Zneiva Zvafxl")
p rot13("Lhxvuveb Zngfhzbgb")
p rot13("Unllvz Fybavzfxv")
p rot13("Tregehqr Oynapu")






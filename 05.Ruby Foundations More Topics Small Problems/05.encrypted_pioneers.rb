=begin
PEDAC

Problem:
Write a method that decrypts ROT13.
Meaning, write a program that will take a string and moves each character forward thirteen spaces in the alphabet.

=end

# Algorithm
# Seperate the names

require 'pry'

UPPER_ALPHABET = (("A".."Z").to_a)
LOWER_ALPHABET = (("a".."z").to_a)

def downcase?(letter)
  LOWER_ALPHABET.include?(letter)
end

def rot13(str)
  # binding.pry
  output = []
  str.split.each do |word|
    converted = word.chars.map do |char|
      if char.match?(/\W/)
        char
      else
        abet = downcase?(char) ? LOWER_ALPHABET : UPPER_ALPHABET
        new_idx = (abet.index(char) + 13) % 26
        abet[new_idx]
      end
    end
    output << converted.join.capitalize
  end
  output.join(" ")
end


# p rot13("Nqn Ybirynpr")
# p rot13("Tenpr Ubccre")
# p rot13("Nqryr Tbyqfgvar")
# p rot13("Nyna Ghevat")
# p rot13("Puneyrf Onoontr")
p rot13("Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv")
# p rot13("Wbua Ngnanfbss")
# p rot13("Ybvf Unvog")
# p rot13("Pynhqr Funaaba")
# p rot13("Fgrir Wbof")
# p rot13("Ovyy Tngrf")
p rot13("Gvz Orearef-Yrr")
# p rot13("Fgrir Jbmavnx")
# p rot13("Xbaenq Mhfr")
# p rot13("Fve Nagbal Ubner")
# p rot13("Zneiva Zvafxl")
# p rot13("Lhxvuveb Zngfhzbgb")
# p rot13("Unllvz Fybavzfxv")
# p rot13("Tregehqr Oynapu")




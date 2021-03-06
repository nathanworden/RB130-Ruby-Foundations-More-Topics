require 'pry'

class PigLatin
  def self.translate(string)
    string.split(" ").each do |word|
      if word.scan(/^[aeiou]|^(y|x)[^aeiou]+/).empty?
        word << word.slice!(/^[^aeiouq]*(qu)*/)
      end
      word << "ay"
    end
    .join(" ")
  end 
end

binding.pry
p PigLatin.translate('queen')
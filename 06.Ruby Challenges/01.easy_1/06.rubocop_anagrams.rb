class Anagram
  def initialize(given_word)
    @given_word = given_word.downcase
  end

  def match(arr)
    arr.select do |word|
      identical = []
      candidate_word = word.dup.downcase
      @given_word.chars.each do |given_letter|
        identical << given_letter if candidate_word.include?(given_letter)
        candidate_word.sub!(given_letter, '')
      end
      if identical.join == @given_word && candidate_word.empty? &&
         @given_word != word.downcase
        true
      else
        false
      end
    end
  end
end

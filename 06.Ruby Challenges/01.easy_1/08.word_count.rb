class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.split(/[^'a-zA-Z0-9]+/)
    # @phrase.each { |word| word.gsub!(/^'|'$/, '') }
    @phrase.each {|word| word.gsub!(/(['])([a-z0-9]+)\1/, '\2')}
  end

  def word_count
    hsh = Hash.new { |hash, key| hash[key] = '' }
    @phrase.each { |word| hsh[word] = @phrase.count(word) }
    hsh
  end
end






phrase = Phrase.new("Joe can't tell between 'large' and large.")
phrase2 = Phrase.new("Louis' classroom.")
p phrase.word_count
p phrase2.word_count
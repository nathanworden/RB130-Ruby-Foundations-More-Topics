class Cipher
  LETTERS = ('a'..'z').to_a
  attr_reader :key

  def initialize(key='aaaaaaaaaa')
    raise ArgumentError, "key must be lowercase" if key =~ /[^a-z]/ || key.empty?
    @key = key
    @key_numerical = @key.chars.map { |letter| LETTERS.index(letter) }
  end

  def encode(string)
    string.chars.map.with_index do |letter, index|
      new_key = LETTERS.index(letter) + @key_numerical[index]
      get_letter(new_key)
    end.join
  end

  def decode(string)
    string.chars.map.with_index do |letter, index|
      new_key = LETTERS.index(letter) - @key_numerical[index]
      get_letter(new_key)
    end.join
  end

  private

  def get_letter(key)
    key = key - 26 if key > 25
    key = key + 26 if key < 0
    LETTERS[key]
  end
end


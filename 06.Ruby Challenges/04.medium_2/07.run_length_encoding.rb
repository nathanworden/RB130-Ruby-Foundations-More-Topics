#encode
# Seperate the input string into an array of consecutive characters
# map the elements so that they are turned into the format of 'number of characters' and then 'character'
# join the elements back together.

# decode
# split the string on word boundaries
# convert the string number to an integer number
# multiply the integer by the string
# join the elements back togeteher


class RunLengthEncoding
  def self.encode(input_string)
    arr = input_string.chars.chunk_while {|i, j| i == j}.to_a
    arr.map do |sub_arr| 
      if sub_arr.size == 1
        sub_arr[0]
      else
        "#{sub_arr.size}#{sub_arr[0]}"
      end
    end.join
  end

  def self.decode(string)
    duos = string.scan(/\d*./).map do |str|
      [str[0..-2], str[-1]]
    end
    duos.map! do |sub_arr|
      int = sub_arr[0].to_i
      int = 1 if int == 0
      sub_arr[1] * int
    end.join
  end
end

# p RunLengthEncoding.encode('AABBBCCCC')
# p RunLengthEncoding.decode('2A3B4CD')
input = 'zzz ZZ  zZ'
# p RunLengthEncoding.encode(input)
p RunLengthEncoding.decode(RunLengthEncoding.encode(input))
class PhoneNumber
  INVALID = '0000000000'
  def initialize(number_string)
    @number_string = number_string
  end

  def number
    return INVALID if @number_string.match?(/[a-zA-Z]/)
    @number_string.gsub!(/\D/, '')
    case
    when @number_string.size == 11 && @number_string[0] == '1'then @number_string[1..-1]
    when @number_string.size < 10 then INVALID
    when @number_string.size == 11 && @number_string[0] != '1' then INVALID
    when @number_string.size > 11 then INVALID
    else
      @number_string
    end
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end
end

# test = PhoneNumber.new('(123) 456-7890')
# test2 = PhoneNumber.new('456.123.7890')
# p test.number
# p test2.number
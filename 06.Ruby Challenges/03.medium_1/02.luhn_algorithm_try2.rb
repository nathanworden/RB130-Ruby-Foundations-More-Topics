class Luhn
  def initialize(num)
    @num = num.digits
  end

  attr_accessor :num

  def addends
    @num.map.with_index do |element, idx|
      if idx.odd?
        double = element * 2
        double > 9 ? double - 9 : double
      else
        element
      end
    end.reverse
  end

  def checksum
    addends.sum
  end

  def valid?
    checksum.digits[0] == 0
  end

  def self.create(number)
    input = number * 10
    if Luhn.new(input).valid?
      input
    else
      @num = input
      check_digit = 10 - Luhn.new(@num).addends.sum % 10
      (number.to_s.chars << check_digit).join.to_i
    end
  end
end

class Trinary
  def initialize(num)
    @num = num.to_i.digits
  end

  def to_decimal
    return 0 if @num.join.match(/[^0-2]/)

    @num.map.with_index { |num, index| num * 3**index }.sum
  end
end

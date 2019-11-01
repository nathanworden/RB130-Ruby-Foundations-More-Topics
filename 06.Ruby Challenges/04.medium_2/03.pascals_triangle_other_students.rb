require 'pry'

class Triangle
  attr_reader :rows

  def initialize(height)
    @rows = (1..height).map {next_row}
  end

  def next_row
    bottom_row = @previous_row ? [0, *@previous_row, 0] : [0, 1]
    @previous_row = bottom_row.each_cons(2).map {|left, right| left + right}
  end
end

binding.pry
triangle = Triangle.new(5)
p triangle.rows
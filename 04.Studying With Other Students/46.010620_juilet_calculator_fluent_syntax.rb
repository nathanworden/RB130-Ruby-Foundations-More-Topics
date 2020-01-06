# The goal is to implement simple calculator which uses fluent syntax: 

# There are only four operations that are supported (plus, minus, times, divided_by) and 10 digits (zero, one, two, three, four, five, six, seven, eight, nine).

# Each calculation consists of one operation only.

# Problem is create a class that has methods that return values that allow you to chain further calculaor operation methods

# Data structures: Integers

# Algorithm
class Integer
  def plus
    Calc.new(self, 'plus')
  end

  def minus
    Calc.new(self, 'minus')
  end

  def times
    Calc.new(self, 'times')
  end

  def divided_by
    Calc.new(self, 'divided_by')
  end
end

class Calc
  def initialize(int=0, operation=nil)
    @int = int
    @operation = operation
  end

  %w(zero one two three four five six seven eight nine).each_with_index do |w,i|
    define_method(w) do
      case @operation
      when 'plus'
        @int + i
      when 'minus'
        @int - i
      when 'times'
        @int * i
      when 'divided_by'
        @int / i
      else
        i
      end      
    end
  end
end

# Juliet's answer
class Integer
  def plus;       Calc.new("+", self); end
  def minus;      Calc.new("-", self); end
  def times;      Calc.new("*", self); end
  def divided_by; Calc.new("/", self); end
end

class Calc
  def initialize(*args)
    return unless args.size == 2
    @operator = args.first
    @value    = args.last
  end

  %w(zero one two three four five six seven eight nine).each_with_index do |w,i|
    define_method(w) { retrieve i }
  end

  def retrieve(number)
    @operator ? @value.send(@operator, number) : number
  end
end

# p Calc.new.one.plus.two

p Calc.new.one.plus.two             == 3
p Calc.new.five.minus.six             == -1
p Calc.new.seven.times.two            == 14
p Calc.new.nine.divided_by.three      == 3
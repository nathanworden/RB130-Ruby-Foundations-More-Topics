require 'pry'

class Bst
  attr_reader :data, :left, :right

  def initialize(number)
    @data = number
  end

  def insert(number)
    if number <= @data
      left ? @left.insert(number) : @left = Bst.new(number)
    else
      right ? @right.insert(number) : @right = Bst.new(number)
    end
  end

  def each
    return to_enum unless block_given?

    left.each {|node| yield(node)} if left
    yield(data)
    right.each {|node| yield(node)} if right
  end
end
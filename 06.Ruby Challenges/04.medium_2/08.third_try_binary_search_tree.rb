require 'pry'

class Bst
  def initialize(data)
    @data = data
  end

  attr_reader :left, :right, :data

  def insert(new_num)
    if new_num <= @data
     @left ? @left.insert(new_num) : @left = Bst.new(new_num)
    else
      @right ? @right.insert(new_num) : @right = Bst.new(new_num)
    end
  end

  def each(&block)
    to_a.each(&block)
  end

  def to_a
    [left.to_a, data, right.to_a].flatten
  end
end





# Problem
# the bst#each method must return all data in numerical order, one by one












# def record_all_data(bst)
#   all_data = []
#   bst.each do |data| 
#     all_data << data
#   end
#   all_data
# end

# binding.pry
#     four = Bst.new 4
#     four.insert 2
#     four.insert 1
#     four.insert 3
#     four.insert 6
#     four.insert 7
#     four.insert 5
#     # [1, 2, 3, 4, 5, 6, 7]


# record_all_data(four)
















# Problem:
# Write a program that inserts numbers and searches in a binary tree.

# A binary search tree is a series of connected nodes.
# Each node contains 3 pieces of data:
    # data
    # left      (either nil, or another subtree)
    # right     (either nil, or another subtree)
# All data in the left subtree is less than or equal to the current node's data.

# The Bst class will have the following methods:
# insert
# data
# left
# right
# each

# insert 
# insert will compare 'new_num' the current node and if 'new_num' is less than or equal to the current node's data it will call 'left' to look at the Bst object in the left branch subtree.
    # If no sub-tree exists to the left, then 'new_num' will be set as the data of the new sub-tree.
    # If a sub-tree exists, then 'insert' will be called on it recursivley until no subtree is found.
  # If 'new_num' is more than the curren't node's data, the same process above stands, but for the right brach subtree.


# data
# Shows the @data instance variable of the current sub-tree

# left
# Shows the @left instance variable of the current sub-tree

# right
# Shows the @right instance variable of the current sub-tree

# each
# Returns an Enumerator object
# 

# If you call the Array#each method without a block, you will see that you get an enumerator object.

# What is an enumerator?
# => A class which allows both internal and external iteration.

# What is internal and external iteration?
# => An external iterator is controlled by the client, while an internal iterator is controlled by the aggregate object.

# Internal iteration:
# [1, 2, 3, 4, 5].each {|num| puts num}
# Internal iteration traverses each element of an array from beginning to end. Internal iterators are built into the collection itself.

# External iteration:
# enum = [1, 2, 3, 4, 5].to_enum
# Once you have an external iterator created you have much greater control over how you can iterate your collection.
# enum.next
# => 1
# enum.next
# => 2
# enum.next
# => 3
# enum.rewind
# enum.next
# => 1

# In Ruby, internal iteration is the norm. 

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

  def each(&whatever)
    return to_enum unless block_given?

    if @left
      @left.each(&whatever)
    end

    yield(data)

    if @right 
      @right.each(&whatever)
    end
  end
end


















# def record_all_data(bst)
#   all_data = []
#   bst.each do |data| 
#     all_data << data
#   end
#   all_data
# end

#  def test_iterating_over_complex_tree
#     # skip
#   four = Bst.new 4
#   four.insert 2
#   four.insert 1
#   four.insert 3
#   four.insert 6
#   four.insert 7
#   four.insert 5
#   binding.pry
#   record_all_data(four)
# end

# test_iterating_over_complex_tree














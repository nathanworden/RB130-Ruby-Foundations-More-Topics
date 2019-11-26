# Write a program that inserts numbers and searches in a binary tree.

# Requirements:
# Each node has three pieces of data.
    # Left    (All data in this subtree is less than or equal to the current node's data.)
    # Right   (All data in this subtree is greater than the current node's data.)
    # Center (e.g. the number 3)
# Left and right point at nil until they become nodes themselves

# enumerator objects?

# Problem
# When a new node is initialized, it gets an array where it is the center element and the first and third elements are nil
# When `data` gets called on the node, it reveals the middle element
# When `left` gets called on the node:
     # it reveals the middle element of the sub array to the left of the node.
# Vice versa for right
# When inserting, the node gets compared with the new data. If greater than, then we index into the right sub array and repeat the process. If less than or equal to, then we index into the left sub array.
    # If ever we try and index into a sub array that is nil, then we create a new sub array and make the center element this new data.

require 'pry'

class Bst
  def initialize(num)
    @left = nil
    @right = nil
    @data = num
    @all_data = [num]
  end

  attr_accessor :left, :right, :data

  def insert(num)
    num <= data ? left_tree(num) : right_tree(num)
    @all_data << num
  end

  def left_tree(num)
    if left == nil
      self.left = Bst.new(num)
    else
      left.insert(num)
    end
  end

  def right_tree(num)
    if right == nil
      self.right = Bst.new(num)
    else
      right.insert(num)
    end
  end

  def each
    @all_data.sort.each {|num| yield(num) if block_given?}
    @all_data.sort.each
  end
end




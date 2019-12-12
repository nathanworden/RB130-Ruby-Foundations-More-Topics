require 'pry'

class Element
  def initialize(int, nxt=nil)
    @datum = int
    @next = nxt
  end

  def tail?
    true
  end
                                        
  attr_reader :datum, :next
end


class SimpleLinkedList
  def initialize
    @list = []
  end

  attr_accessor :list

  def size
    @list.size
  end

  def empty?
    @list.empty?
  end

  def push(int)
    @list << Element.new(int, @list[-1])
  end

  def peek
    return nil unless @list.size > 0

    @list[-1].datum
  end

  def head
    @list[-1]
  end

  def pop
    @list.pop.datum
  end

  def self.from_a(obj)
    temp_list = SimpleLinkedList.new
    return temp_list if obj == nil

   obj.reverse.each { |num| temp_list.push(num)}
   temp_list
  end

  def to_a
    @list.reverse.map do |data|             
      data.datum
    end
  end

  def reverse
    reversed_list = SimpleLinkedList.new
    @list.reverse.each do |element|
      reversed_list.push(element.datum)
    end
    reversed_list
  end
end

binding.pry
l = SimpleLinkedList.new
l.to_a # => []



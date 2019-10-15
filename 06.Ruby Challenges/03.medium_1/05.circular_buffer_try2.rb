# Starting location doesn't matter, so might as well start at array, index 0
# Elements are added by appending after the starting location.
# Reading means also removing the oldest elements in the buffer.
# A full buffer raises an error
# Overwriting the oldest data means reading the oldest data and replacing it with new data


# The circular buffer will be an array
# The oldest element will start as the element at index 0
# When you add in elements, you add them in the front of the array, and the oldest element index gets incremented by 1
    # If the index of the oldest element is (size of buffer - 1), when you add another element, then the oldest element's index stays at (size of buffer - 1). But you also have to pop off the last element. 
# When you read/remove elements from the buffer, you always do so at the index of the oldest element. The index of the oldest element is then decremented by 1
    # If the index of the oldest element is already 0, then the index of the oldest element becomes the size of the buffer minus 1
# If the array gets more elements then the initial determined size of the buffer,
    # First, raise an error
    # Second, The oldest element gets overritten, and the index of the oldest element now moves forward one slot.


# This one passes all the tests, but I realized it was still wrong because the tests are missing a test for the situation where the program writes when the buffer is full and then writes when the buffer is not full. This program messes that situation up.

class CircularBuffer
  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end

  def initialize(buffer_size)
    @circular_buffer = []
    @oldest_element = -1
    @buffer_size = buffer_size
  end

  attr_accessor :oldest_element, :circular_buffer, :buffer_size

  def read
    raise(BufferEmptyException, 'Buffer is empty ya dingus') if circular_buffer[oldest_element] == nil
    output = circular_buffer[@oldest_element]
    circular_buffer.delete_if.with_index{|i, index| index == @oldest_element}
    @oldest_element -= 1
    output
  end

  def write(element)
    raise(BufferFullException, 'Buffer full yo') if @circular_buffer.size == buffer_size
    @oldest_element += 1 unless element == nil
    circular_buffer.unshift(element)
    @circular_buffer.compact!
  end

  def write!(element)
    return if element == nil
    return write(element) if @circular_buffer.size < buffer_size
    @circular_buffer[@oldest_element] = element
    @oldest_element -= 1
  end

  def clear
    @circular_buffer = []
    @oldest_element = -1
  end
end

# buffer = CircularBuffer.new(5)
# ('1'..'3').each { |i| buffer.write i }
# buffer.read
# buffer.read
# buffer.write '4'
# buffer.read
# ('5'..'8').each { |i| buffer.write i }
# buffer.write! 'A'
# buffer.write! 'B'
# p buffer
# p buffer
# buffer.read
# ('5'..'8').each { |i| buffer.write i }
# buffer.write! 'A'
# buffer.write! 'B'






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



class CircularBuffer
  class BufferEmptyException < StandardError; end

  def initialize(buffer_size)
    @circular_buffer = []
    @oldest_element = -1
  end

  attr_accessor :oldest_element, :circular_buffer

  def read
    raise(BufferEmptyException, 'Buffer is empty ya dingus') if circular_buffer[oldest_element] == nil
    @oldest_element -= 1
    circular_buffer.pop
  end

  def write(element)
    @oldest_element += 1
    circular_buffer.unshift(element)
  end
end

# buffer = CircularBuffer.new(1)
# buffer.write(1)
# p buffer.read






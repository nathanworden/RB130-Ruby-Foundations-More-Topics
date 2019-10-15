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
    @circular_buffer.pop
    circular_buffer.unshift(element)
  end

  def clear
    @circular_buffer = []
    @oldest_element = -1
  end
end
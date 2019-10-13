
# This didn't work out, so it is not finished and does not work.

class CircularBuffer
  def initialize(slots)
    @buffer = Hash.new {|hash, key| hash[key] = ''}
    slots.times {|num| @buffer[num + 1]}
    @oldest_value = 1
  end

  attr_accessor :buffer
  attr_reader :oldest_value

  def oldest_value=(num)
    @oldest_value += num
  end


  def read
    buffer[oldest_value]
    oldest_value=(1)
  end

  def write(item)
    buffer[oldest_value] = item
  end

  def check_out
    buffer
  end
end

buffer = CircularBuffer.new(7)
buffer.write('1')

p buffer.read
p buffer.read
p buffer.read
p buffer.oldest_value
p buffer.check_out
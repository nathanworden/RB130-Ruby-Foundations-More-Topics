require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class List
  @@data = [1, 2, 3]

  def process
    @@data = @@data.map {|num| num * 2}
    self
  end
end

class ListTest < MiniTest::Test
  def setup
    @list = List.new
  end

  def test_process
    assert_same(@list, @list.process)
  end
end






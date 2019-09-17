require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class EmptyObjectAssertions < Minitest::Test
  def setup
    @arr = ["this is not empty"]
  end

  def test_empty_array
    assert_equal(true, @arr.empty?)
    assert_empty(@arr)
  end
end
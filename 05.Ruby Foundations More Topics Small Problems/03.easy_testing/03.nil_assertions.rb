require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TestTest < Minitest::Test
  def setup
    @value = 8
  end

  def test_nil
    assert_equal(true, @value.nil?)
    assert_nil(@value)
    assert_equal(nil, @value)
  end
end
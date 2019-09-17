require 'minitest/autorun'

class TestEqualityAssertions < Minitest::Test
  def setup
    @value = 'XYZ'
  end

  def test_downcase
    assert_equal('xyz', @value.downcase)
    assert_equal('XYZ', @value.downcase)
  end
end
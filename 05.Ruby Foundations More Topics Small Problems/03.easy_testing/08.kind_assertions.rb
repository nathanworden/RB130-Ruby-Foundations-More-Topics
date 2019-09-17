require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class KindAssertions < Minitest::Test
  def setup
    @value = 8.90
  end

  def test_kind
    assert_kind_of(Numeric, @value, '#{@valu} is a kind of #{Numeric}')
  end
end
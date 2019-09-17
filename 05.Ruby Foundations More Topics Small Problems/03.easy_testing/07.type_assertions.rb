require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TypeAssertions < Minitest::Test
  def setup
    @value = 4
    @other_value = Numeric.new
  end

  def test_numeric
    assert_instance_of(Numeric, @value, "This is not an instance of #{Numeric}")
    
  end
end
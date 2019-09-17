require 'minitest/autorun'
require 'minitest/reporters'

MiniTest::Reporters.use!

class IncludedObjectAssertions < Minitest::Test
  def setup
    @arr = ['123', 'dogdog', 'xyz']
  end

  def test_xyz
    assert_equal(true, @arr.include?('xyz'))
    assert_includes(@arr, 'xyz', 'Ummm, xyz is not here')
  end
end
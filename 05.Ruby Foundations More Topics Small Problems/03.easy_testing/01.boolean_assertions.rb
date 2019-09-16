

require 'minitest/autorun'

# require_relative '01.01.rb'

class OddTest < MiniTest::Test
  def test_odd
    assert(value.odd?, 'value is not odd')
  end

  # def test_value
  #   assert_equal(true, @value.odd?)
  # end
end


# assert(value.odd?, 'value is not odd')

# assert_equal(true, value.odd?)
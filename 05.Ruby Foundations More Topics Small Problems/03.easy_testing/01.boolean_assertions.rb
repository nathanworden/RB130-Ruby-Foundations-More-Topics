require 'minitest/autorun'

# require_relative '01.01.rb'

class OddTest < MiniTest::Test
  def setup
    @value = 4
  end

  def test_odd
    assert(@value.odd?, 'value is not odd')
  end
end



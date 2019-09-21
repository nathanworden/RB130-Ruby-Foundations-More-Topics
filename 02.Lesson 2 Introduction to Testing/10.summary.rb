require 'minitest/autorun'
# require 'minitest/reporters'

# Minitest::Reporters.use!

require_relative '01.introduction.rb'



# class DogTest < MiniTest::Test
#   def setup
#     @spot = Dog.new('Spot')
#   end

#   def test_is_dog
#     # spot = Dog.new('Spot')
#     assert_equal("This is a dog", @spot.is_dog)
#   end

# end

class CatTest < MiniTest::Test
  def setup
    @kitty = Cat.new('Kitty', 5)
  end

  def test_is_cat; end

  def test_name
    refute_equal('Kitty', @kitty.name)
  end


  def test_miaow
    skip
    assert(@kitty.miaow.include?(' is miaowing.'))
    assert_match(/ is miaowing\./, @kitty.miaow)
    assert_equal(' is miaowing.', @kitty.miaow)
    assert_match(@kitty.miaow, / is miaowing\./)
  end

  
  # def test_raises_error
  #   assert(Cat.new == ArgumentError)
  # end

  
  # def test_is_not_purrier
  #   patch = Cat.new('Patch', 5)
  #   milo = Cat.new('Milo', 3)
  
  #   refute(patch.purr_factor > milo.purr_factor)
  # end
end
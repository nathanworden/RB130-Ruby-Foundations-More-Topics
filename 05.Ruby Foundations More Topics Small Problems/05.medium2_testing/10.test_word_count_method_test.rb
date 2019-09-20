require 'minitest/autorun'
require 'minitest/reporters'


Minitest::Reporters.use!

require_relative '08.swap_letters_sample_text_and_starter_file.rb'

class TextTest < Minitest::Test
  def setup
    @file = File.open('09.sample_text.rb', 'r')
    @text = Text.new(@file.read)
  end

  def test_swap
    actual_text = @text.swap('a', 'e')
    expected_text = <<~TEXT.chomp
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.
    TEXT

    assert_equal(expected_text, actual_text)
  end

  def test_word_count
    actual_count = @text.word_count
    expected_count = 72
    assert_equal(expected_count, actual_count)
  end

  def teardown
    @file.close
  end
end
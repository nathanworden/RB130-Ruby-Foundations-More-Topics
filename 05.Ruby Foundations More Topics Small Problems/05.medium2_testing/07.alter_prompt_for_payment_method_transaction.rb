require 'minitest/autorun'
# require 'minitest/reporters'

# Minitest::Reporters.use!

require_relative '01.cash_register'
require_relative '01.transaction'

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(30)
    input = StringIO.new('30')
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)

    assert_equal(30, transaction.amount_paid)

  end
end


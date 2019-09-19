require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

require_relative '01.cash_register'
require_relative '01.transaction'

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    register = CashRegister.new(1000)
    transaction = Transaction.new(30)
    transaction.prompt_for_payment(45)

    assert_equal(45, transaction.prompt_for_payment)

  end
end


# register = CashRegister.new(1000)
# transaction = Transaction.new(30)
# transaction.prompt_for_payment

# transaction.prompt_for_payment
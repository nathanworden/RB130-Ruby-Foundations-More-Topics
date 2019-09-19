require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

require_relative '01.cash_register'
require_relative '01.transaction'

class CashRegisterTest < Minitest::Test
  def test_change
    register = CashRegister.new(1000)
    transaction = Transaction.new(30)
    transaction.amount_paid = 40

    assert_equal(10, register.change(transaction))
  end
end
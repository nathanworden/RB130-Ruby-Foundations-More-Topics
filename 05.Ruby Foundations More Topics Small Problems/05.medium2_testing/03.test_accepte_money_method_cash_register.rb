require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

require_relative '01.cash_register'
require_relative '01.transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    register = CashRegister.new(50)
    transaction = Transaction.new(40)
    transaction.amount_paid = 40

    previous_amount = register.total_money
    register.accept_money(transaction)
    current_amount = register.total_money

    assert_equal(previous_amount + 40, current_amount)
  end
end

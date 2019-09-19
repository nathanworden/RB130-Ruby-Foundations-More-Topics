require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

require_relative '01.cash_register'
require_relative '01.transaction'

class CashRegisterTest < Minitest::Test
  def test_give_receipt
    register = CashRegister.new(1000)
    transaction = Transaction.new(30)
    transaction.amount_paid = 40


    assert_output("You've paid $#{transaction.item_cost}.\n") do 
      register.give_receipt(transaction)
    end
  end
end
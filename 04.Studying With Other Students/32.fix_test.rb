# Down in the class CashRegisterTest on line 75, Why does the test for test_give_receipt fail?

# transaction.rb

class Transaction
  attr_reader :item_cost
  attr_accessor :amount_paid

  def initialize(item_cost)
    @item_cost = item_cost
    @amount_paid = 0
  end

  def prompt_for_payment
    loop do
      puts "You owe $#{item_cost}.\nHow much are you paying?"
      @amount_paid = gets.chomp.to_f
      break if valid_payment? && sufficient_payment?
      puts 'That is not the correct amount. ' \
           'Please make sure to pay the full cost.'
    end
  end

  private

  def valid_payment?
    amount_paid > 0.0
  end

  def sufficient_payment?
    amount_paid >= item_cost
  end
end


# cash_register.rb

class CashRegister
  attr_reader :total_money

  def initialize(total_money)
    @total_money = total_money
  end

  def change(transaction)
    transaction.amount_paid - transaction.item_cost
  end

  def give_receipt(transaction)
    puts "You've paid $#{transaction.item_cost}."
  end

  def accept_money(transaction)
    @total_money += transaction.amount_paid
  end

  def start_transaction(transaction)
    transaction.prompt_for_payment
    accept_money(transaction)
    change(transaction)
    give_receipt(transaction)
  end
end



require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

# require_relative '01.cash_register'
# require_relative '01.transaction'

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




























# Answer:


# puts appends a newline to the message that is output. We must include that newline character in our expected value as well when making an assertion with assert_output.

    # assert_output("You've paid $#{transaction.item_cost}.\n") do 
    #   register.give_receipt(transaction)



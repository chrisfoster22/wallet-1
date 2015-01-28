class HomeController < ApplicationController
  def account
    @transactions = Transaction.all
    @balance = Transaction.balance
    @misleading_statement = Transaction.overdrawn
    @number_of_transactions = Transaction.number_of_transactions
  end
end

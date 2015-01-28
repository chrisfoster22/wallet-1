class HomeController < ApplicationController
  def account
    @transactions = Transaction.all
    @balance = Transaction.balance
  end
end

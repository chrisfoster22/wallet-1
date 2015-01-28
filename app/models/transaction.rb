class Transaction < ActiveRecord::Base

  def self.balance
    sum = []
    transactions = Transaction.all
    transactions.each do |s|
      sum << s.amount
    end
    sum.sum
  end
end

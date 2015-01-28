class Transaction < ActiveRecord::Base

  def self.balance
    sum = []
    transactions = Transaction.all
    transactions.each do |s|
      sum << s.amount
    end
    sum.sum.round(2)
  end

  def self.overdrawn
    misleading_statement = ""
    if Transaction.balance < 0.0
      misleading_statement = "You have no money. Go take out a loan. Loans are the same as money, trust me - I work for the bank."
    end
    misleading_statement
  end

  def self.number_of_transactions
    Transaction.all.length
  end

end

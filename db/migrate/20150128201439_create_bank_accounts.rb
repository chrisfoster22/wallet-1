class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :transaction
      t.float :amount

      t.timestamps null: false
    end
  end
end

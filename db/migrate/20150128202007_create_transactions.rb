class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.float :amount

      t.timestamps null: false
    end
  end
end

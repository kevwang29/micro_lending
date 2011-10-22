class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :UID
      t.integer :BID
      t.decimal :amount
      t.datetime :date

      t.timestamps
    end
  end
end

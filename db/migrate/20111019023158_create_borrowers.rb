class CreateBorrowers < ActiveRecord::Migration
  def change
    create_table :borrowers do |t|
      t.integer :BID
      t.string :first_name
      t.string :last_name
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end

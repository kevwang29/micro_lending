class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :first_name
      t.string :last_name
      t.string :class
      t.integer :exp

      t.timestamps
    end
  end
end

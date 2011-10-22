class CreateLenders < ActiveRecord::Migration
  def change
    create_table :lenders do |t|
      t.integer :uid
      t.string :first_name
      t.string :last_name
      t.string :class_type
      t.integer :experience

      t.timestamps
    end
  end
end

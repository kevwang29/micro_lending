class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :UID
      t.integer :FUID

      t.timestamps
    end
  end
end

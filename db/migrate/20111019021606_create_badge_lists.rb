class CreateBadgeLists < ActiveRecord::Migration
  def change
    create_table :badge_lists do |t|
      t.integer :LUID
      t.integer :BUID

      t.timestamps
    end
  end
end

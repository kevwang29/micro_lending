class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.integer :BID
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

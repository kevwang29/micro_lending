class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.integer :decision_id
      t.text :description
      t.text :conditions
      t.integer :decision_destination

      t.timestamps
    end
  end
end

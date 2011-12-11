class AddHintsToDecisionObjects < ActiveRecord::Migration
  def change
    add_column :decision_objects, :hints, :text
  end
end

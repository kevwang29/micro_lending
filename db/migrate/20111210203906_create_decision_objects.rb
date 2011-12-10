class CreateDecisionObjects < ActiveRecord::Migration
  def change
    create_table :decision_objects do |t|
      t.text :description
      t.text :requirements
      t.references :story_object

      t.timestamps
    end
    add_index :decision_objects, :story_object_id
  end
end

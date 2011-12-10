class CreateDecisionTests < ActiveRecord::Migration
  def change
    create_table :decision_tests do |t|
      t.text :description
      t.references :story_test

      t.timestamps
    end
    add_index :decision_tests, :story_test_id
  end
end

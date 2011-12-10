class CreateDecisionLogs < ActiveRecord::Migration
  def change
    create_table :decision_logs do |t|
      t.integer :luid
      t.integer :decision_id
      t.integer :story_id
      t.string :note

      t.timestamps
    end
  end
end

class CreateUserDecisions < ActiveRecord::Migration
  def change
    create_table :user_decisions do |t|
      t.integer :luid
      t.integer :story_id
      t.integer :decision_id

      t.timestamps
    end
  end
end

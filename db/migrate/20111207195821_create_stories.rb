class CreateStories < ActiveRecord::Migration
  def change
    drop_table :stories;
    
    create_table :stories do |t|
      t.text :description
      t.integer :decision_id_1
      t.integer :decision_id_2
      t.integer :story_id

      t.timestamps
    end
  end
end

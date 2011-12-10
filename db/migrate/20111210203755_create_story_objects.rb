class CreateStoryObjects < ActiveRecord::Migration
  def change
    create_table :story_objects do |t|
      t.text :description

      t.timestamps
    end
  end
end

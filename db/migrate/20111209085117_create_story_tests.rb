class CreateStoryTests < ActiveRecord::Migration
  def change
    create_table :story_tests do |t|
      t.text :description

      t.timestamps
    end
  end
end

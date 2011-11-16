class CreateStoryChoices < ActiveRecord::Migration
  def change
    create_table :story_choices do |t|
      t.integer :sid
      t.text :choices
      t.integer :mapping

      t.timestamps
    end
  end
end

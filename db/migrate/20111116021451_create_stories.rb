class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :description

      t.timestamps
    end
  end
end

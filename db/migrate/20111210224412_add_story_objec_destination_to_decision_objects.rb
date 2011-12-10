class AddStoryObjecDestinationToDecisionObjects < ActiveRecord::Migration
  def change
    add_column :decision_objects, :to_story_id, :integer
  end
end

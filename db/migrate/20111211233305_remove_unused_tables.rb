class RemoveUnusedTables < ActiveRecord::Migration
  def change
    drop_table :decision_tests;
    drop_table :decisions;
    drop_table :friends;
    drop_table :stories;
    drop_table :story_tests;
    drop_table :user_decisions;
    drop_table :users;
  end

end

class FixColumnNames < ActiveRecord::Migration
  def up
  end

  def down
  end
  
  def change
    rename_column :badge_lists, :LUID, :luid
  end
end

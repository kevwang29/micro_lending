class FixColumnNames < ActiveRecord::Migration
  def up
  end

  def down
  end
  
  def change
    rename_column :badge_lists, :LUID, :luid
    rename_column :badge_lists, :BUID, :bid
    rename_column :transactions, :UID, :uid
    rename_column :transactions, :BID, :buid
    rename_column :friends, :UID, :uid
    rename_column :friends, :FUID, :fuid
    rename_column :borrowers, :BID, :buid
    rename_column :badges, :BID, :bid
    rename_column :lenders, :uid, :luid
  end
end

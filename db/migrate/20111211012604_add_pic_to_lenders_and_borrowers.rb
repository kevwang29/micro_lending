class AddPicToLendersAndBorrowers < ActiveRecord::Migration
  def change
    add_column :lenders, :pic_url, :string
    add_column :borrowers, :pic_url, :string
  end
end

class AddSumToBorrowers < ActiveRecord::Migration
  def change
    add_column :borrowers, :sum, :integer
    
  end
end

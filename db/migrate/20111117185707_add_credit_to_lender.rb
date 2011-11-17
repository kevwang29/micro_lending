class AddCreditToLender < ActiveRecord::Migration
  def change
    add_column :lenders, :credit, :integer
  end
end

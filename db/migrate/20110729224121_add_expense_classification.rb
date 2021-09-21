class AddExpenseClassification < ActiveRecord::Migration
  def up
    add_column :expenses, :classification, :string
  end

  def down
    remove_column :expenses, :classification
  end
end

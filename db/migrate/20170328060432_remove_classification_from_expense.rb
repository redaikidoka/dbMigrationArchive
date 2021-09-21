class RemoveClassificationFromExpense < ActiveRecord::Migration[5.0]
  def up
    Expense.where(classification: "Expense Request").destroy_all
    remove_column :expenses, :classification
  end

  def down
    add_column :expenses, :classification, :string
  end
end

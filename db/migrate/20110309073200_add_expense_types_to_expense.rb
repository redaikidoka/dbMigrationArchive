class AddExpenseTypesToExpense < ActiveRecord::Migration
  def change
    add_column :expenses, :expense_type_id, :integer
    add_index :expenses, :expense_type_id
  end
end

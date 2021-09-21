class AddExpenseCategoryToExpense < ActiveRecord::Migration
  def change
    add_column :expenses, :expense_category_id, :integer
    add_index :expenses, :expense_category_id
  end
end

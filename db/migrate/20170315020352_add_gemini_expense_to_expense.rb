class AddGeminiExpenseToExpense < ActiveRecord::Migration[5.0]
  def change
    add_column :expenses, :gemini_expense, :boolean, :default => false
  end
end

class ConvertExpenseCategoriesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :expense_categories, :id, :bigint
  end
end

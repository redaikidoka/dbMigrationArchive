class ConvertExpenseTypesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :expense_types, :id, :bigint
  end
end

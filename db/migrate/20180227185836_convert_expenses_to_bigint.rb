class ConvertExpensesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :expenses, :id, :bigint
    change_column :expenses, :account_id, :bigint
    change_column :expenses, :user_id, :bigint
    change_column :expenses, :expense_type_id, :bigint
    change_column :expenses, :expense_category_id, :bigint
    change_column :expenses, :vendor_id, :bigint
  end
end

class RenameMoneyColumnsOnExpenses < ActiveRecord::Migration[5.2]
  def change
    rename_column :expenses, :amount, :amount_cents
    rename_column :expenses, :rate, :rate_cents

    change_column :expenses, :amount_cents, :integer, null: false
  end
end

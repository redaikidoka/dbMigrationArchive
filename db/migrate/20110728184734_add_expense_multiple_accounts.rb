class AddExpenseMultipleAccounts < ActiveRecord::Migration
  def up
    add_column :expenses, :multiple_accounts, :boolean, :default => false
  end

  def down
    remove_column :expenses, :multiple_accounts
  end
end
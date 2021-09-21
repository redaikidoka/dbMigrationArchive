class RenameExpenseStatusToState < ActiveRecord::Migration
  def change
    rename_column :expenses, :status, :state
  end
end

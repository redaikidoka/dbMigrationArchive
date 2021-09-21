class RemoveExpenseState < ActiveRecord::Migration
  def change
    remove_column :expenses, :state
    remove_column :expenses, :submitted_at
    remove_column :expenses, :pending_at
    remove_column :expenses, :approved_at
    remove_column :expenses, :denied_at
  end
end

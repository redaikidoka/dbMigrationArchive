class AddAmountDueCentsToCases < ActiveRecord::Migration
  def change
    add_column :cases, :amount_due_cents, :integer, null: false, default: 0
  end
end

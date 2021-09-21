class AddStateFieldsToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :state, :string
    add_column :cases, :draft_at, :datetime
    add_column :cases, :open_at, :datetime
    add_column :cases, :closed_at, :datetime
    add_column :cases, :incomplete_at, :datetime
  end
end

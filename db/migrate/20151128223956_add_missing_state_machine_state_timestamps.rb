class AddMissingStateMachineStateTimestamps < ActiveRecord::Migration
  def change
    add_column :accounts, :client_at, :datetime, after: "updated_at"
    add_column :accounts, :lead_at, :datetime, after: "updated_at"

    add_column :expenses, :pending_at, :datetime, after: "updated_at"
    add_column :expenses, :denied_at, :datetime, after: "updated_at"
    add_column :expenses, :approved_at, :datetime, after: "updated_at"

    add_column :questions, :active_at, :datetime, after: "updated_at"
    add_column :questions, :archived_at, :datetime, after: "updated_at"

    rename_column :price_lists, :acrchived_at, :archived_at
  end
end

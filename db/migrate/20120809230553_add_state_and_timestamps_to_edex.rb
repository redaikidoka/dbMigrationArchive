class AddStateAndTimestampsToEdex < ActiveRecord::Migration
  def change
    add_column :edex_requests, :state, :string, after: "processed_by_id"
    add_column :edex_requests, :pending_at, :datetime, after: "state"
    add_column :edex_requests, :processing_at, :datetime, after: "pending_at"
    add_column :edex_requests, :completed_at, :datetime, after: "processing_at"

    add_index :edex_requests, :state
  end
end

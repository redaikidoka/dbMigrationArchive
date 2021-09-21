class AddStateAndTimestampsToWcirb < ActiveRecord::Migration
  def change
    add_column :wcirb_requests, :state, :string, after: "processed_by_id"
    add_column :wcirb_requests, :pending_at, :datetime, after: "state"
    add_column :wcirb_requests, :accepted_at, :datetime, after: "pending_at"
    add_column :wcirb_requests, :processing_at, :datetime, after: "accepted_at"
    add_column :wcirb_requests, :completed_at, :datetime, after: "processing_at"

    add_index :wcirb_requests, :state
  end
end

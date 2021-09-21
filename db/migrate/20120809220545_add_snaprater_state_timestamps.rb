class AddSnapraterStateTimestamps < ActiveRecord::Migration
  def change
    add_column :snaprater_requests, :pending_at, :datetime, after: "state"
    add_column :snaprater_requests, :processing_at, :datetime, after: "pending_at"
    add_column :snaprater_requests, :completed_at, :datetime, after: "processing_at"
  end
end

class AddRequestStateTimestamps < ActiveRecord::Migration
  def change
    add_column :requests, :cancelled_at, :datetime, after: "updated_at"
    add_column :requests, :completed_at, :datetime, after: "updated_at"
    add_column :requests, :incomplete_at, :datetime, after: "updated_at"
    add_column :requests, :processing_at, :datetime, after: "updated_at"
    add_column :requests, :pending_at, :datetime, after: "updated_at"
  end
end

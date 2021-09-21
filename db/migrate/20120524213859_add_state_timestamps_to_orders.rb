class AddStateTimestampsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :cancelled_at, :datetime, after: "updated_at"
    add_column :orders, :accepted_at, :datetime, after: "updated_at"
    add_column :orders, :incomplete_at, :datetime, after: "updated_at"
    add_column :orders, :processing_at, :datetime, after: "updated_at"
    add_column :orders, :pending_at, :datetime, after: "updated_at"
  end
end

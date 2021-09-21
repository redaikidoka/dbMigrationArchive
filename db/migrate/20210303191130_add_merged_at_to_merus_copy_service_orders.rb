class AddMergedAtToMerusCopyServiceOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :merus_copy_service_orders, :merged_at, :datetime
  end
end

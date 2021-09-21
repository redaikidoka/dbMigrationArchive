class AddProcessedByToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :processed_by_id, :integer
  end
end

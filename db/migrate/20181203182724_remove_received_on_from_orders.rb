class RemoveReceivedOnFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :received_on, :datetime
  end
end

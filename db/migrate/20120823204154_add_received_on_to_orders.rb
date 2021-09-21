class AddReceivedOnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :received_on, :date, after: "fax"
  end
end

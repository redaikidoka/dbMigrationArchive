class AddOrderIdToWorkOrders < ActiveRecord::Migration
  def change
    add_column :work_orders, :order_id, :integer
    add_index :work_orders, :order_id

    WorkOrder.find_each do |wo|
      wo.order = wo.origin.order
      wo.save
    end
  end
end

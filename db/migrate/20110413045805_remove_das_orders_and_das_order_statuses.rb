class RemoveDasOrdersAndDasOrderStatuses < ActiveRecord::Migration
  def change
    drop_table :das_orders
    drop_table :das_order_statuses
  end
end

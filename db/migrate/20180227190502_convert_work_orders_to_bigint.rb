class ConvertWorkOrdersToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :work_orders, :id, :bigint
    change_column :work_orders, :origin_id, :bigint
    change_column :work_orders, :order_id, :bigint
    change_column :work_orders, :request_id, :bigint
  end
end

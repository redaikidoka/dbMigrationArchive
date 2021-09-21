class AddReorderTypeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :re_order_type, :string, after: "parent_id"
  end
end

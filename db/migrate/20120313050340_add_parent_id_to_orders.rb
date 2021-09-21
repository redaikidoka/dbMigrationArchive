class AddParentIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :parent_id, :integer, after: "uid"
  end
end

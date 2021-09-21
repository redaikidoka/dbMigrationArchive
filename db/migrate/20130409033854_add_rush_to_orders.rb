class AddRushToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :rush, :boolean, default: false, after: "state"
  end
end

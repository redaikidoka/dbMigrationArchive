class AddUidToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :uid, :string, after: "id"
    add_index :orders, :uid, unique: true
  end
end

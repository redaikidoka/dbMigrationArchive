class RemoveOrderPlaintiff < ActiveRecord::Migration
  def up
    remove_column :orders, :plaintiff
  end

  def down
    add_column :orders, :plaintiff, :string, after: "order_type"
  end
end

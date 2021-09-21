class AddRequestingAttorneyIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :requesting_attorney_id, :integer

    add_index :orders, :requesting_attorney_id
  end
end

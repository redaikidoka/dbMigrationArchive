class AddOrderCreatedById < ActiveRecord::Migration
  def up
    add_column :orders, :created_by_id, :integer, after: :re_order_type
  end

  def down
    remove_column :orders, :created_by_id
  end
end

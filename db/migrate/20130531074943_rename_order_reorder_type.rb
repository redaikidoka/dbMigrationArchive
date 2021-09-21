class RenameOrderReorderType < ActiveRecord::Migration
  def change
    rename_column :orders, :re_order_type, :reorder_type
  end
end

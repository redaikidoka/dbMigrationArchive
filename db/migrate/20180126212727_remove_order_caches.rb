class RemoveOrderCaches < ActiveRecord::Migration[5.1]
  def change
    drop_table :order_caches
  end
end

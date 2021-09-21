class RemoveOrderIndex < ActiveRecord::Migration
  def change
    drop_table :order_indices
  end
end

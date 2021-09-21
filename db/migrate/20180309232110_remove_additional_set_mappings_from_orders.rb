class RemoveAdditionalSetMappingsFromOrders < ActiveRecord::Migration[5.1]
  def change
  	remove_column :orders, :additional_set_mappings
  end
end

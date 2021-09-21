class AddAdditionalSetMappingsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :additional_set_mappings, :json, default: "{}"
  end
end

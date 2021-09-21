class AddShipmentGroupIdToAdditionalSet < ActiveRecord::Migration[5.2]
  def change
    rename_column :additional_sets, :shipping_at, :ready_to_ship_at
    add_column :additional_sets, :shipment_group_id, :integer
    
    add_index :additional_sets, :shipment_group_id

    add_column :print_items, :additional_set_id, :integer
    add_column :print_items, :shipment_group_id, :string
    add_column :print_items, :item_type, :string
    add_column :print_items, :flattened_address, :string
    
    add_index :print_items, :additional_set_id
    add_index :print_items, :shipment_group_id
    
    add_column :shipment_groups, :flattened_address, :string
  end
end

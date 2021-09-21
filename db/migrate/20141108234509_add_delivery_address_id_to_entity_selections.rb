class AddDeliveryAddressIdToEntitySelections < ActiveRecord::Migration
  def change
    add_column :entity_selections, :delivery_address_id, :integer
    add_index :entity_selections, :delivery_address_id
  end
end

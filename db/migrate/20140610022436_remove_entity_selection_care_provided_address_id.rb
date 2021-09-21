class RemoveEntitySelectionCareProvidedAddressId < ActiveRecord::Migration
  def up
    remove_index :entity_selections, :care_provided_address_id
    remove_column :entity_selections, :care_provided_address_id
  end

  def down
    add_column :entity_selections, :care_provided_address_id, :integer
    add_index :entity_selections, :care_provided_address_id
  end
end

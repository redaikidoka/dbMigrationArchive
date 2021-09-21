class UpdateEntitySelectionAddressKeys < ActiveRecord::Migration
  def change
    remove_index :entity_selections, :care_address_id
    remove_index :entity_selections, :billing_address_id
    remove_index :entity_selections, :records_address_id
    remove_index :entity_selections, :serve_address_id
    remove_column :entity_selections, :care_address_id
    remove_column :entity_selections, :billing_address_id
    remove_column :entity_selections, :records_address_id
    remove_column :entity_selections, :serve_address_id

    add_column :entity_selections, :care_provided_address_id, :integer
    add_column :entity_selections, :sdt_address_id, :integer
    add_column :entity_selections, :medical_records_stored_address_id, :integer
    add_column :entity_selections, :billing_records_stored_address_id, :integer
    add_column :entity_selections, :records_stored_address_id, :integer
    add_column :entity_selections, :gemini_billing_address_id, :integer
    add_index :entity_selections, :care_provided_address_id
    add_index :entity_selections, :sdt_address_id
    add_index :entity_selections, :medical_records_stored_address_id
    add_index :entity_selections, :billing_records_stored_address_id
    add_index :entity_selections, :records_stored_address_id
    add_index :entity_selections, :gemini_billing_address_id
  end
end

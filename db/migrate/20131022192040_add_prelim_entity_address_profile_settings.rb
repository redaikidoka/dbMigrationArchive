class AddPrelimEntityAddressProfileSettings < ActiveRecord::Migration
  def change
    add_column :entity_addresses, :primary_contact_id, :integer, after: "entity_id"
    add_column :entity_addresses, :secondary_contact_id, :integer, after: "primary_contact_id"
    add_index :entity_addresses, :primary_contact_id
    add_index :entity_addresses, :secondary_contact_id
    add_column :entity_addresses, :hours, :text, after: "note"
    add_column :entity_addresses, :open_lunch, :boolean, after: "hours"
    add_column :entity_addresses, :method_of_service, :string, after: "open_lunch"
    add_column :entity_addresses, :method_of_service_notes, :text, after: "method_of_service"
    add_column :entity_addresses, :witness_fee_cents, :integer, after: "method_of_service_notes"
  end
end

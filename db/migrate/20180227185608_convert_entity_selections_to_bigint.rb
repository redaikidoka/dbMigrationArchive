class ConvertEntitySelectionsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :entity_selections, :id, :bigint
    change_column :entity_selections, :associable_id, :bigint
    change_column :entity_selections, :entity_id, :bigint
    change_column :entity_selections, :service_of_process_address_id, :bigint
    change_column :entity_selections, :medical_records_stored_address_id, :bigint
    change_column :entity_selections, :billing_records_stored_address_id, :bigint
    change_column :entity_selections, :records_stored_address_id, :bigint
    change_column :entity_selections, :gemini_billing_address_id, :bigint
    change_column :entity_selections, :adjuster_contact_id, :bigint
    change_column :entity_selections, :service_of_process_contact_id, :bigint
    change_column :entity_selections, :delivery_address_id, :bigint
    change_column :entity_selections, :deliver_to_contact_id, :bigint
    change_column :entity_selections, :effective_records_stored_address_id, :bigint
  end
end

class AddEffectiveRecordsStoredAddressIdToEntitySelections < ActiveRecord::Migration
  def change
    add_reference :entity_selections, :effective_records_stored_address, index: true

    EntitySelection.update_all("effective_records_stored_address_id= COALESCE(
        records_stored_address_id,
        medical_records_stored_address_id,
        billing_records_stored_address_id,
        service_of_process_address_id
      )")
  end
end

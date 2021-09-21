class RemoveRecordTypesFromEntityAddresses < ActiveRecord::Migration
  def up
    remove_column :entity_addresses, :record_types
  end
end

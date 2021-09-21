class AddRecordTypesToEntityAddresses < ActiveRecord::Migration
  def change
    add_column :entity_addresses, :record_types, :text, after: "fax"
  end
end

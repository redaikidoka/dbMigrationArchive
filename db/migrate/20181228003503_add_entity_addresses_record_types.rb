class AddEntityAddressesRecordTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :entity_addresses, :record_types, :text, array: true, default: [], null: false
  end
end

class ConvertEntityAddressesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :entity_addresses, :id, :bigint
    change_column :entity_addresses, :entity_id, :bigint
    change_column :entity_addresses, :primary_contact_id, :bigint
    change_column :entity_addresses, :secondary_contact_id, :bigint
  end
end

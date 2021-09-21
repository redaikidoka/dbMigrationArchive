class RemoveEntityAddressType < ActiveRecord::Migration
  def up
    remove_column :entity_addresses, :entity_address_type
  end

  def down
    add_column :entity_addresses, :entity_address_type, after: "verified_by_id"
  end
end

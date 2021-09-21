class RemoveEntityAddressVerifiedBy < ActiveRecord::Migration
  def up
    remove_column :entity_addresses, :verified_by_id
    remove_column :entity_addresses, :verified_at
  end

  def down
    add_column :entity_addresses, :verified_by_id, :integer, after: "entity_id"
    add_column :entity_addresses, :verified_at, :datetime, after: "fax"
  end
end

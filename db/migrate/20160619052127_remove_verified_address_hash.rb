class RemoveVerifiedAddressHash < ActiveRecord::Migration
  def up
    remove_column :das_addresses, :verified_address_hash
  end

  def down
    add_column :das_addresses, :verified_address_hash, :string
  end
end

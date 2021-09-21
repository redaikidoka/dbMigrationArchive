class AddEntityAddressIndexes < ActiveRecord::Migration[5.2]
  def change
    add_index :entity_addresses, :phone
  end
end

class RemoveEntityAddressUspsFields < ActiveRecord::Migration[5.1]
  def change
    remove_column :entity_addresses, :usps_verified
    remove_column :entity_addresses, :usps_city
  end
end

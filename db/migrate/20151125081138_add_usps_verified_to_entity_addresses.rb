class AddUspsVerifiedToEntityAddresses < ActiveRecord::Migration
  def change
    add_column :entity_addresses, :usps_verified, :boolean, default: false,
      null: false
  end
end

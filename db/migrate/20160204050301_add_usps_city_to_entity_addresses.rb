class AddUspsCityToEntityAddresses < ActiveRecord::Migration
  def change
    add_column :entity_addresses, :usps_city, :string
  end
end

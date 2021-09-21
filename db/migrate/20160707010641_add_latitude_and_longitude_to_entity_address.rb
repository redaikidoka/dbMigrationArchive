class AddLatitudeAndLongitudeToEntityAddress < ActiveRecord::Migration
  def change
    add_column :entity_addresses, :latitude, :float
    add_column :entity_addresses, :longitude, :float
    add_column :entity_addresses, :geocode_status, :string, null: false, default: ""
    add_column :entity_addresses, :geocode_quality, :string
    add_column :entity_addresses, :geocode_message, :string

    add_index :entity_addresses, :geocode_status
    add_index :entity_addresses, :geocode_quality
  end
end

class AddStreet2ToEntityAddresses < ActiveRecord::Migration
  def change
    add_column :entity_addresses, :street_2, :string
  end
end

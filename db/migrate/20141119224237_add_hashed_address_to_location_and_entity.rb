class AddHashedAddressToLocationAndEntity < ActiveRecord::Migration
  def change
    add_column :locations, :hashed_address, :string
    add_column :parties, :hashed_address, :string
    add_column :entity_selections, :hashed_address, :string
  end
end

class AddNameToEntityAddresses < ActiveRecord::Migration
  def change
    add_column :entity_addresses, :name, :string, after: "archived"
  end
end

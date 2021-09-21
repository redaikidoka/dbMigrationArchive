class UpdateEntityAddressFields < ActiveRecord::Migration
  def up
    remove_column :entity_addresses, :recipient
    remove_column :entity_addresses, :company
    add_column :entity_addresses, :unit, :string, after: "street"
    add_index :entity_addresses, :entity_id
  end

  def down
    remove_index :entity_addresses, :entity_id
    remove_column :entity_addresses, :unit
    add_column :entity_addresses, :company, after: "archived"
    add_column :entity_addresses, :recipient, after: "archived"
  end
end

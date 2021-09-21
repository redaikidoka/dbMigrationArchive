class RemoveEntityAddressNote < ActiveRecord::Migration
  def up
    remove_column :entity_addresses, :note
  end

  def down
    add_column :entity_addresses, :note, :text, after: "zip"
  end
end

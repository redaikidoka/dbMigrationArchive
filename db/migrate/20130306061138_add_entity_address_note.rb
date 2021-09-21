class AddEntityAddressNote < ActiveRecord::Migration
  def change
    add_column :entity_addresses, :note, :text, after: "record_types"
  end
end

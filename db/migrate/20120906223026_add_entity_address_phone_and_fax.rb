class AddEntityAddressPhoneAndFax < ActiveRecord::Migration
  def up
    add_column :entity_addresses, :phone, :string, after: "zip"
    add_column :entity_addresses, :fax, :string, after: "phone"
  end

  def down
    remove_column :entity_addresses, :phone
    remove_column :entity_addresses, :fax
  end
end

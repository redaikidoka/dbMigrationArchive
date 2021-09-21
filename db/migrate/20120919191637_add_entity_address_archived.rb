class AddEntityAddressArchived < ActiveRecord::Migration
  def up
    add_column :entity_addresses, :archived, :boolean, default: false, after: "verified_by_id"
  end

  def down
    remove_column :entity_addresses, :archived
  end
end

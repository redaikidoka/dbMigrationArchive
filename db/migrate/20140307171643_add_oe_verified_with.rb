class AddOeVerifiedWith < ActiveRecord::Migration
  def up
    add_column :entity_selections, :oe_verified_with_contact_id, :integer
  end

  def down
    remove_column :entity_selections, :oe_verified_with_contact_id
  end
end

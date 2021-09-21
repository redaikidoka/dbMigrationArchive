class RemoveEntitySelectionsOeVerifiedWith < ActiveRecord::Migration
  def up
    remove_column :entity_selections, :oe_verified_with_contact_id
  end

  def down
    add_column :entity_selections, :oe_verified_with_contact_id, :integer
  end
end

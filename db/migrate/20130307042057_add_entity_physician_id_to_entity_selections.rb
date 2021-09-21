class AddEntityPhysicianIdToEntitySelections < ActiveRecord::Migration
  def change
    add_column :entity_selections, :entity_contact_id, :integer, after: "entity_id"
    add_index :entity_selections, :entity_contact_id
  end
end

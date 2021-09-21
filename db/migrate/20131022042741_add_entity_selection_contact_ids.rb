class AddEntitySelectionContactIds < ActiveRecord::Migration
  def change
    remove_index :entity_selections, :entity_physician_id
    remove_column :entity_selections, :entity_contact_id
    add_column :entity_selections, :adjuster_contact_id, :integer
    add_column :entity_selections, :service_of_process_contact_id, :integer
    add_index :entity_selections, :adjuster_contact_id
    add_index :entity_selections, :service_of_process_contact_id
  end
end

class AddEntityContactToEvent < ActiveRecord::Migration
  def up
    add_column :events, :entity_contact_id, :integer
    add_column :request_notes, :entity_contact_id, :integer
  end

  def down
    remove_column :events, :entity_contact_id
    remove_column :request_notes, :entity_contact_id
  end
end

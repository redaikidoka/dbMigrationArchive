class AddEntityContactFields < ActiveRecord::Migration
  def change
    add_column :entity_contacts, :contact_type, :string, after: "name"
    add_column :entity_contacts, :phone, :string, after: "contact_type"
    rename_index :entity_contacts, "index_entity_physicians_on_entity_id",
      "index_entity_contacts_on_entity_id"
    rename_index :entity_contacts, "index_entity_physicians_on_name",
      "index_entity_contacts_on_name"
  end
end

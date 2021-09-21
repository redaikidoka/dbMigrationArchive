class RenameEntityPhysiciansToEntityContacts < ActiveRecord::Migration
  def change
    rename_table :entity_physicians, :entity_contacts
    rename_column :entity_selections, :entity_physician_id, :entity_contact_id
  end
end

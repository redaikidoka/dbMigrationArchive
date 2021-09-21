class AddEmailAndSupervisorIdToEntityContacts < ActiveRecord::Migration
  def change
    add_column :entity_contacts, :email, :text
    add_reference :entity_contacts, :supervisor, index: true
  end
end

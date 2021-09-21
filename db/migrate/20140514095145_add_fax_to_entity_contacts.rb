class AddFaxToEntityContacts < ActiveRecord::Migration
  def change
    add_column :entity_contacts, :fax, :string
  end
end

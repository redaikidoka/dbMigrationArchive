class AddDeliveryMethodToAddSetsAndContacts < ActiveRecord::Migration
  def change
    add_column :additional_sets, :delivery_method, :string
    add_column :entity_contacts, :delivery_method, :string
  end
end

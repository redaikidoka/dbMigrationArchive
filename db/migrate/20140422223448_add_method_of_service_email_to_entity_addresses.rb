class AddMethodOfServiceEmailToEntityAddresses < ActiveRecord::Migration
  def change
    add_column :entity_addresses, :method_of_service_email, :string
  end
end

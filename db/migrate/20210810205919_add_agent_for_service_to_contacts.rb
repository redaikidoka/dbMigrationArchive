class AddAgentForServiceToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :agent_for_service, :string
  end
end

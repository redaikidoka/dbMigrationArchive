class ConvertCommunicationCommunicationsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :communications, :id, :bigint
    change_column :communications, :communication_template_id, :bigint
    change_column :communications, :entity_address_id, :bigint
    change_column :communications, :entity_contact_id, :bigint
    change_column :communications, :user_id, :bigint
  end
end

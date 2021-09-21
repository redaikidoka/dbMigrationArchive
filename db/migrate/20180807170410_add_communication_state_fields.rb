class AddCommunicationStateFields < ActiveRecord::Migration[5.2]
  def change
    add_column :communications, :state, :string
    add_column :communications, :error_message, :text
  end
end

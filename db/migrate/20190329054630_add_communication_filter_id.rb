class AddCommunicationFilterId < ActiveRecord::Migration[5.2]
  def change
    add_reference :communications, :encrypted_value, foreign_key: true
  end
end

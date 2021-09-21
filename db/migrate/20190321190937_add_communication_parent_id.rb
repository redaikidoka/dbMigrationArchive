class AddCommunicationParentId < ActiveRecord::Migration[5.2]
  def change
    add_reference :communications, :parent_communication, foreign_key: { to_table: :communications }
  end
end

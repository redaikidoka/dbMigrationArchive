class RemoveCommunicationFile < ActiveRecord::Migration[5.2]
  def change
    remove_column :communications, :file
  end
end

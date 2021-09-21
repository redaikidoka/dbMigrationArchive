class AddCommunicationFile < ActiveRecord::Migration[5.0]
  def change
    add_column :communications, :file, :string
  end
end

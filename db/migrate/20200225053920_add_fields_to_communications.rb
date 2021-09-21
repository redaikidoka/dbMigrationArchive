class AddFieldsToCommunications < ActiveRecord::Migration[5.2]
  def change
    add_column :communications, :sbr, :boolean, default: false
  end
end

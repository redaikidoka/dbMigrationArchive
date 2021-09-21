class DropCaseClientsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :case_clients
  end
end

class AddDisplayNameToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :display_name, :string
    add_index :accounts, :display_name
  end
end

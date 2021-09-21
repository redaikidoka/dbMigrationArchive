class AddScanfilesEnabledToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :scanfiles_enabled, :boolean, null: false, default: false
  end
end

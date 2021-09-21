class AddImportedToDasAccounts < ActiveRecord::Migration
  def change
    add_column :das_accounts, :nl_imported, :boolean, :default => 0, :null => false
  end
end

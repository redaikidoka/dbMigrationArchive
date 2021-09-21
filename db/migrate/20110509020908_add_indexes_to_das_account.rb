class AddIndexesToDasAccount < ActiveRecord::Migration
  def change
    add_index :das_accounts, :id
    add_index :das_accounts, :name
    add_index :das_accounts, :nl_imported
  end
end

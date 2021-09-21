class AddDasAccountNameToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :das_account_name, :string
  end
end

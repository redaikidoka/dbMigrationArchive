class RemoveDasAccounts < ActiveRecord::Migration
  def self.up
    drop_table :das_accounts
  end
end

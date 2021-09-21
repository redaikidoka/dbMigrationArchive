class RemovePositionFromDasCallsAndDasAccounts < ActiveRecord::Migration
  def up
    remove_column :das_accounts, :position
    remove_column :das_calls, :position
  end

  def down
    add_column :das_accounts, :position, :integer
    add_column :das_calls, :position, :integer
  end
end

class RemoveAccountIdFromIssues < ActiveRecord::Migration[5.0]
  def change
    remove_column :issues, :account_id, :integer
  end
end

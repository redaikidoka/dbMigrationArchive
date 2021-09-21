class AddIssuesAccountId < ActiveRecord::Migration
  def up
    add_column :issues, :account_id, :integer, after: "id"
    add_index :issues, :account_id
  end

  def down
    remove_index :issues, :account_id
    remove_column :issues, :account_id
  end
end

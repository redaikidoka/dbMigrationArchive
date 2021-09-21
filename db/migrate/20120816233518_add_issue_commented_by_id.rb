class AddIssueCommentedById < ActiveRecord::Migration
  def up
    add_column :issues, :commented_by_id, :integer, after: "user_id"
    add_index :issues, :commented_by_id
  end

  def down
    remove_index :issues, :commented_by_id
    remove_column :issues, :commented_by_id
  end
end

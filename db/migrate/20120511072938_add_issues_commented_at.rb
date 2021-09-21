class AddIssuesCommentedAt < ActiveRecord::Migration
  def up
    add_column :issues, :commented_at, :datetime, after: "updated_at"
  end

  def down
    remove_column :issues, :commented_at
  end
end

class AddIssueType < ActiveRecord::Migration
  def up
    add_column :issues, :issue_type, :string, after: "commented_by_id"
  end

  def down
    remove_column :issues, :issue_type
  end
end

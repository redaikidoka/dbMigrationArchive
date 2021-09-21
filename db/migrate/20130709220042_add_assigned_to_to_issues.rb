class AddAssignedToToIssues < ActiveRecord::Migration

  def change
    add_column :issues, :assigned_to, :string, after: "user_id"
    add_column :comments, :assigned_to, :string, after: "issue_state"
  end
end

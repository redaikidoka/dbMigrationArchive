class AddFollowupDateToIssues < ActiveRecord::Migration

  def change
    add_column :issues, :followup_on, :date, after: "commented_by_id"
    add_column :comments, :followup_on, :date, after: "assigned_to"
  end
end

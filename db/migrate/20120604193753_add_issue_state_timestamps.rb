class AddIssueStateTimestamps < ActiveRecord::Migration
  def change
    add_column :issues, :closed_at, :datetime, after: "updated_at"
    add_column :issues, :resolved_at, :datetime, after: "updated_at"
    add_column :issues, :open_at, :datetime, after: "updated_at"
  end
end

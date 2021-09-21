class AddIssueMailerOptInToUser < ActiveRecord::Migration
  def change
    add_column :users, :weekly_issue_report, :boolean
  end
end

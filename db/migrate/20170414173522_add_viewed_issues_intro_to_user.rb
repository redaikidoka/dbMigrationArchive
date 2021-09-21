class AddViewedIssuesIntroToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :viewed_issues_intro, :boolean, default: false
    remove_column :accounts, :issues_console, :boolean
  end
end

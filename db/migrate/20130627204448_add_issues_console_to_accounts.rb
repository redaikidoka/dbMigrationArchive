class AddIssuesConsoleToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :issues_console, :boolean, after: "practice_type", default: false
  end
end

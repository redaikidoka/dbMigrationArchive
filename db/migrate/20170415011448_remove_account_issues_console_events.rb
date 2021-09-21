class RemoveAccountIssuesConsoleEvents < ActiveRecord::Migration[5.0]
  def up
    Event.where(event_type: "account.issues_console_enabled").delete_all
  end

  def down
  end
end

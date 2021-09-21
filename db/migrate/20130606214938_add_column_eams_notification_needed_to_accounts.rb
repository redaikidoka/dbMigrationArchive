class AddColumnEamsNotificationNeededToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :eams_notification_needed, :boolean, after: "eams_updated_at"
  end
end

class ChangeFollowupToTimestamp < ActiveRecord::Migration
  def up
    rename_column :requests, :followup_on, :followup_at
    change_column :requests, :followup_at, :datetime
  end

  def down
    rename_column :requests, :followup_at, :followup_on
    change_column :requests, :followup_on, :date
  end
end

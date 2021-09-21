class AddFollowupAtToCases < ActiveRecord::Migration
  def change
    add_column :cases, :followup_at, :datetime
  end
end

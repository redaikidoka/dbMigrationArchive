class RemoveFollowupAtFromCases < ActiveRecord::Migration[5.1]
  def self.up
    remove_column :cases, :followup_at
  end

  def self.down
    add_column :cases, :followup_at, :datetime
  end
end

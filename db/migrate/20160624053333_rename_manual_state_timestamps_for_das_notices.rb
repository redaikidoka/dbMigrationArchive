class RenameManualStateTimestampsForDasNotices < ActiveRecord::Migration
  def change
    rename_column :das_notices, :manual_pending_at, :manually_pending_at
    rename_column :das_notices, :manual_submitted_at, :manually_submitted_at
  end
end

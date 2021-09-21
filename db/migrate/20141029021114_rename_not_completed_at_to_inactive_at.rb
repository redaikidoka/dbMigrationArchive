class RenameNotCompletedAtToInactiveAt < ActiveRecord::Migration
  def change
    rename_column :additional_sets, :not_completed_at, :inactive_at
  end
end

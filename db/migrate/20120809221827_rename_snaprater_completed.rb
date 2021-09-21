class RenameSnapraterCompleted < ActiveRecord::Migration
  def change
    rename_column :snaprater_requests, :completed, :request_completed
  end
end

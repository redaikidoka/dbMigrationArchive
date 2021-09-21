class RenameEdexRequestsCompleted < ActiveRecord::Migration
  def change
    rename_column :edex_requests, :completed, :request_completed
  end
end

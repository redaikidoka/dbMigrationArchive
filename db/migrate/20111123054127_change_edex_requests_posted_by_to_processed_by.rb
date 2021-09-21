class ChangeEdexRequestsPostedByToProcessedBy < ActiveRecord::Migration
  def change
    rename_column :edex_requests, :posted_by, :processed_by_id
  end
end

class ChangeWcirbRequestsProcessedByToProcessedById < ActiveRecord::Migration
  def change
    rename_column :wcirb_requests, :processed_by, :processed_by_id
  end
end

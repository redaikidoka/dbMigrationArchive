class ChangePostedByToProcessedByOnWcirbRequests < ActiveRecord::Migration
  def change
    rename_column :wcirb_requests, :posted_by, :processed_by
  end

end

class AddProcessedByToSnapraterRequests < ActiveRecord::Migration
  def change
    add_column :snaprater_requests, :processed_by_id, :integer
  end
end

class AddStateToSnapraterRequests < ActiveRecord::Migration
  def change
    add_column :snaprater_requests, :state, :string, after: "processed_by_id"
  end
end

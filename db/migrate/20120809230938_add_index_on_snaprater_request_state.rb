class AddIndexOnSnapraterRequestState < ActiveRecord::Migration
  def change
    add_index :snaprater_requests, :state
  end
end

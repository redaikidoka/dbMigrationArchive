class AddRecordsToPresentToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :records_to_present, :boolean, default: false
  end
end

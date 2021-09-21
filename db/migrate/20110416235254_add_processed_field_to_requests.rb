class AddProcessedFieldToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :processed_by_id, :integer
    add_column :requests, :processed_at, :datetime
  end
end

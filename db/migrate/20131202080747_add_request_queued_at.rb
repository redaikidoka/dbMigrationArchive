class AddRequestQueuedAt < ActiveRecord::Migration
  def change
    add_column :requests, :queued_at, :datetime
  end
end

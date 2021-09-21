class AddCancellationFieldsToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :cancelled_by_id, :integer, after: "cancelled_at"
    add_column :requests, :cancellation_type, :string, after: "cancelled_by_id"
  end
end

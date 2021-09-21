class AddCompletedToWcirbRequests < ActiveRecord::Migration
  def change
    add_column :wcirb_requests, :completed, :boolean, default: false, null: false, after: "imported_order_id"
  end
end

class AddGeniedocsRequestUidToBuffersAndImportedOrders < ActiveRecord::Migration
  def change
    add_column :das_buffers, :geniedocs_request_uid, :string
    add_column :imported_orders, :geniedocs_request_uid, :string
  end
end

class AddDasNumberAndImportedOrderIdToWcirbRequests < ActiveRecord::Migration
  def change
    add_column :wcirb_requests, :imported_order_id, :integer
    add_column :wcirb_requests, :das_number, :integer
    add_index  :wcirb_requests, :imported_order_id
    add_index  :wcirb_requests, :das_number
  end
end

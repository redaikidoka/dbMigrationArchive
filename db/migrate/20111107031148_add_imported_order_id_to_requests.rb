class AddImportedOrderIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :imported_order_id, :integer
    add_index  :requests, :imported_order_id
    add_index  :requests, :das_number
  end
end

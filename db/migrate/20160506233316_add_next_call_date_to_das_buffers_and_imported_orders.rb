class AddNextCallDateToDasBuffersAndImportedOrders < ActiveRecord::Migration
  def change
    add_column :das_buffers, :next_call_date, :string
    add_column :imported_orders, :next_call_date, :date
  end
end

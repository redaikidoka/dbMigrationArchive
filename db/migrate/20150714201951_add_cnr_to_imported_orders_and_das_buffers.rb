class AddCnrToImportedOrdersAndDasBuffers < ActiveRecord::Migration
  def change
    add_column :das_buffers, :cnr, :boolean
    add_column :imported_orders, :cnr, :boolean
  end
end

class AddPageCountToImportedOrders < ActiveRecord::Migration
  def change
    add_column :imported_orders, :page_count, :integer
  end
end

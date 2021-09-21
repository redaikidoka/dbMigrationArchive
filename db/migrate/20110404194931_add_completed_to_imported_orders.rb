class AddCompletedToImportedOrders < ActiveRecord::Migration
  def change
    add_column :imported_orders, :completed, :boolean, :default => 0
  end
end

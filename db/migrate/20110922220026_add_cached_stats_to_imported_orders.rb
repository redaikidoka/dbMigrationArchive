class AddCachedStatsToImportedOrders < ActiveRecord::Migration
  def change
    add_column :imported_orders, :days_until_issued, :integer
    add_column :imported_orders, :days_until_served, :integer
    add_column :imported_orders, :days_until_completed, :integer
    add_column :imported_orders, :days_until_ready, :integer
    add_column :imported_orders, :days_until_shipped, :integer
    rename_column :imported_orders, :date_entered, :date_issued
    rename_column :imported_orders, :date_copied_retrieved, :date_completed
    rename_column :imported_orders, :date_billed, :date_shipped
    remove_column :imported_orders, :date_delivered
  end
end

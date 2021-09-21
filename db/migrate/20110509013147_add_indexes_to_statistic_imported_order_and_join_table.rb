class AddIndexesToStatisticImportedOrderAndJoinTable < ActiveRecord::Migration
  def change
    add_index :statistics, :id
    add_index :statistics, :account_id
    add_index :statistic_imported_orders, :id
    add_index :statistic_imported_orders, :imported_order_id
    add_index :statistic_imported_orders, :statistic_id
    add_index :imported_orders, :id
    add_index :imported_orders, :account_id
    add_index :imported_orders, :das_number
  end
end

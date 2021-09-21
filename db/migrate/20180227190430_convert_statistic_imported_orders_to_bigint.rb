class ConvertStatisticImportedOrdersToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :statistic_imported_orders, :id, :bigint
    change_column :statistic_imported_orders, :imported_order_id, :bigint
    change_column :statistic_imported_orders, :statistic_id, :bigint
  end
end

class CreateStatisticImportedOrders < ActiveRecord::Migration
  def change
    create_table :statistic_imported_orders do |t|
      t.integer :imported_order_id
      t.integer :statistic_id
      t.timestamps
    end

  end
end

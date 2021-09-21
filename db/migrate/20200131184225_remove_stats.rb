class RemoveStats < ActiveRecord::Migration[5.2]
  def change
    drop_table :statistics
    drop_table :statistic_imported_orders
  end
end

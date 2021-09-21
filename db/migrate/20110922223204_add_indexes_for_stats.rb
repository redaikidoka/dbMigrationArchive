class AddIndexesForStats < ActiveRecord::Migration
  def change
    add_index :imported_orders, :date_received
    add_index :imported_orders, :date_issued
    add_index :imported_orders, :date_served
    add_index :imported_orders, :date_ready
    add_index :imported_orders, :date_completed
    add_index :imported_orders, :date_shipped
    add_index :imported_orders, :is_wcab
    add_index :imported_orders, :is_pi
    add_index :imported_orders, :is_wcirb
    add_index :imported_orders, :is_blueform
    add_index :imported_orders, :is_other
  end

end

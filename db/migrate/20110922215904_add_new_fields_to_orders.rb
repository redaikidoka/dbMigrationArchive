class AddNewFieldsToOrders < ActiveRecord::Migration
  def change
    add_column    :imported_orders, :is_received, :boolean, :default => false, :null => false
    add_column    :imported_orders, :is_issued, :boolean, :default => false, :null => false
    add_column    :imported_orders, :is_served, :boolean, :default => false, :null => false
    add_column    :imported_orders, :is_ready, :boolean, :default => false, :null => false
    add_column    :imported_orders, :is_completed, :boolean, :default => false, :null => false
    add_column    :imported_orders, :is_shipped, :boolean, :default => false, :null => false
    add_column :imported_orders, :order_type, :string
    add_column :imported_orders, :is_wcab, :boolean, :default => false, :null => false
    add_column :imported_orders, :is_pi, :boolean, :default => false, :null => false
    add_column :imported_orders, :is_wcirb, :boolean, :default => false, :null => false
    add_column :imported_orders, :is_blueform, :boolean, :default => false, :null => false
    add_column :imported_orders, :is_other, :boolean, :default => false, :null => false
  end
end

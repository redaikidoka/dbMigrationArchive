class ChangeNlImportedAndCompletedOnDasCallsAndImportedOrders < ActiveRecord::Migration
  def up
    change_column :das_calls, :nl_imported, :boolean, :default => 0, :null => false
    change_column :imported_orders, :completed, :boolean, :default => 0, :null => false
  end
  
  def down
    change_column :das_calls, :nl_imported, :boolean
    change_column :imported_orders, :completed, :boolean
  end
end

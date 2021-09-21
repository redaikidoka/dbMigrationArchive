class AddPositionToDasTables < ActiveRecord::Migration
  def change
    add_column :das_accounts, :position, :integer
    add_column :das_calls, :position, :integer
    add_column :das_orders, :position, :integer
    add_column :das_order_statuses, :position, :integer
  end
end

class AddDasNumberToWorkOrders < ActiveRecord::Migration
  def change
    add_column :work_orders, :number, :integer
  end
end

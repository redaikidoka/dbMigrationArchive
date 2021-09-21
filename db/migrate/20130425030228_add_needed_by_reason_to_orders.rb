class AddNeededByReasonToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :needed_by_reason, :string, after: "needed_on"
  end
end

class AddRequestIdToWorkOrders < ActiveRecord::Migration
  def change
    add_reference :work_orders, :request, index: true
  end
end

class AddImrRequestToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :imr_request, :boolean, default: false
  end
end

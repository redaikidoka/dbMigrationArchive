class AddImrNumberToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :imr_number, :string
  end
end

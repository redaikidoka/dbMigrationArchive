class AddOrderStateToImportedOrder < ActiveRecord::Migration
  def change
    add_column :imported_orders, :order_state, :string
  end
end

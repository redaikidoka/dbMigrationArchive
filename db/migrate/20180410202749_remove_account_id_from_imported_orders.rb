class RemoveAccountIdFromImportedOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :imported_orders, :account_id
  end
end

class ConvertImportedOrdersToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :imported_orders, :id, :bigint
    change_column :imported_orders, :account_id, :bigint
  end
end

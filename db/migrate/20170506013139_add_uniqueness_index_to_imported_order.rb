class AddUniquenessIndexToImportedOrder < ActiveRecord::Migration[5.0]
  def change
    remove_index :imported_orders, :das_number
    add_index :imported_orders, :das_number, :unique => true
  end
end

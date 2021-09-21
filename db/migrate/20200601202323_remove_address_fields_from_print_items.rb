class RemoveAddressFieldsFromPrintItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :print_items, :ship_to_name
    remove_column :print_items, :ship_to_street
    remove_column :print_items, :ship_to_city
    remove_column :print_items, :ship_to_state
    remove_column :print_items, :ship_to_zip
    remove_column :print_items, :pending_at
  end
end

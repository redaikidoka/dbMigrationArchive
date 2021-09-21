class RemoveAddressFromShipmentGroup < ActiveRecord::Migration[5.2]
  def change
    remove_column :shipment_groups, :street
    remove_column :shipment_groups, :city
    remove_column :shipment_groups, :state
    remove_column :shipment_groups, :zip
    remove_column :shipment_groups, :pending_at
  end
end

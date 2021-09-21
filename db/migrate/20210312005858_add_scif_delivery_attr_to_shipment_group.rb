class AddScifDeliveryAttrToShipmentGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :shipment_groups, :scif_delivery, :boolean, default: false
  end
end

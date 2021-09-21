class ConvertShipmentGroupIdToIntegerOnPrintItems < ActiveRecord::Migration[5.2]
  def change
    change_column :print_items, :shipment_group_id, "bigint USING NULLIF(shipment_group_id, '')::int8"
  end
end

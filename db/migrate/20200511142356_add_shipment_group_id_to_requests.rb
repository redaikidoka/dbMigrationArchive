class AddShipmentGroupIdToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :shipment_group_id, :integer
    add_index :requests, :shipment_group_id
  end
end

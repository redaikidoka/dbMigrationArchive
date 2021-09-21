class ChangeShippingDatesToDates < ActiveRecord::Migration[5.2]
  def change
    change_column :shipment_groups, :shipped_at, :datetime, using: 'shipped_at::timestamp'
    change_column :shipment_groups, :ready_to_ship_at, :datetime, using: 'ready_to_ship_at::timestamp'
  end
end

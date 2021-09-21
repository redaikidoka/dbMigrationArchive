class CreateShipmentGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :shipment_groups do |t|
      t.integer :amount_cents, null: false

      t.string :street, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false

      t.string :tracking_ids, array: true, default: []

      t.string :aasm_state

      t.string :pending_at
      t.string :ready_to_ship_at
      t.string :shipped_at

      t.timestamps
    end
  end
end

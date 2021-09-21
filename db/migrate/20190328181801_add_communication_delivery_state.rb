class AddCommunicationDeliveryState < ActiveRecord::Migration[5.2]
  def change
    add_column :communication_deliveries, :aasm_state, :string
    add_column :communication_deliveries, :pending_at, :datetime
    add_column :communication_deliveries, :shipping_at, :datetime
    add_column :communication_deliveries, :shipped_at, :datetime
    add_column :communication_deliveries, :fault_at, :datetime
    add_column :communication_deliveries, :fault_details, :text
    CommunicationDelivery.update_all aasm_state: "legacy"
    change_column_null :communication_deliveries, :aasm_state, true
  end
end

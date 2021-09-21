class AddCommunicationDeliveryFields < ActiveRecord::Migration[5.1]
  def change
    add_reference :communication_deliveries, :communication_delivery_group, index: { name: "index_communication_deliveries_on_comm_delivery_group_id" }
    add_column :communication_deliveries, :email, :string
    add_column :communication_deliveries, :fax, :string
    add_column :communication_deliveries, :street, :string
    add_column :communication_deliveries, :city, :string
    add_column :communication_deliveries, :state, :string
    add_column :communication_deliveries, :zip, :string
  end
end

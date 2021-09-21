class AddCommunicationDeliveryValue < ActiveRecord::Migration[5.1]
  def change
    add_column :communication_deliveries, :value, :string
  end
end

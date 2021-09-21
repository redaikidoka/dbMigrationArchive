class ConvertCommunicationDeliveriesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :communication_deliveries, :id, :bigint
    change_column :communication_deliveries, :communication_id, :bigint
  end
end

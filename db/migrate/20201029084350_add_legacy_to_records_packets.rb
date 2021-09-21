class AddLegacyToRecordsPackets < ActiveRecord::Migration[5.2]
  def change
    add_column :records_packets, :legacy, :boolean, default: false
  end
end

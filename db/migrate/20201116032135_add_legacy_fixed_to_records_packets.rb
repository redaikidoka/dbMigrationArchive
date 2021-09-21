class AddLegacyFixedToRecordsPackets < ActiveRecord::Migration[5.2]
  def change
    add_column :records_packets, :legacy_fixed, :boolean, default: false
  end
end

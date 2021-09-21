class AddSenttoIndexingToRecordsPacket < ActiveRecord::Migration[5.2]
  def change
    add_column :records_packets, :sent_to_indexing_at, :datetime
  end
end

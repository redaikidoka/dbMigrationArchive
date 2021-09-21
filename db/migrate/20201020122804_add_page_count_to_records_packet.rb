class AddPageCountToRecordsPacket < ActiveRecord::Migration[5.2]
  def change
    add_column :records_packets, :page_count, :integer
  end
end

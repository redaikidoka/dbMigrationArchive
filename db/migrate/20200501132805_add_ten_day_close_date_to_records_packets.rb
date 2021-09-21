class AddTenDayCloseDateToRecordsPackets < ActiveRecord::Migration[5.2]
  def change
    add_column :records_packets, :ten_day_close, :datetime
  end
end

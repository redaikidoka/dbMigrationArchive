class CreateRecordsPackets < ActiveRecord::Migration[5.2]
  def change
    create_table :records_packets do |t|
      t.references :request, index: true
      t.string :state

      t.datetime :pending_at
      t.datetime :ready_to_finalize_at
      t.datetime :indexing_at
      t.datetime :complete_at
      t.datetime :invalid_at

      t.timestamps
    end
  end
end

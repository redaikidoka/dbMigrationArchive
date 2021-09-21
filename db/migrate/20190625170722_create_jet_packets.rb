class CreateJetPackets < ActiveRecord::Migration[5.2]
  def change
    create_table :jet_packets do |t|
      t.references :jet_submission

      t.integer :daily_sequence_num
      t.date :jet_packet_date
      t.string :packet_id
      t.string :transaction_number

      t.string :aasm_state

      t.datetime :pending_at
      t.datetime :submitting_at
      t.datetime :submitted_at
      t.datetime :level_one_passed_at
      t.datetime :level_one_failed_at
      t.datetime :level_two_passed_at
      t.datetime :level_two_failed_at
      t.datetime :level_three_passed_at
      t.datetime :level_three_failed_at
      t.datetime :fault_at

      t.timestamps
    end
  end
end

class CreateDasNoticeBatches < ActiveRecord::Migration
  def change
    create_table :das_notice_batches do |t|
      t.string :state

      t.timestamps null: false
      t.timestamp :pending_at, null: false
      t.timestamp :lob_pending_at
      t.timestamp :lob_submitted_at
      t.timestamp :fault_at
    end
  end
end

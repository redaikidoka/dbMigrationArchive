class DropDasNoticeBatches < ActiveRecord::Migration
  def up
    remove_column :das_notices, :das_notice_batch_id
    drop_table :das_notice_batches
  end

  def down
    create_table :das_notice_batches do |t|
      t.string :state

      t.timestamps null: false
      t.timestamp :pending_at, null: false
      t.timestamp :lob_pending_at
      t.timestamp :lob_submitted_at
      t.timestamp :fault_at
    end

    add_reference :das_notices, :das_notice_batch, index: true,
                  foreign_key: true
  end
end

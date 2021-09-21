class CreateDasNotices < ActiveRecord::Migration
  def change
    create_table :das_notices do |t|
      t.references :das_notice_import, null: false, index: true, foreign_key: true
      t.references :das_notice_batch, index: true, foreign_key: true

      t.string :state, null: false
      t.string :recipient
      t.string :company
      t.string :das_street_1, null: false
      t.string :das_street_2
      t.string :das_city, null: false
      t.string :das_state, null: false
      t.string :das_zip, null: false
      t.string :das_address_hash, null: false
      t.string :verified_street_1
      t.string :verified_street_2
      t.string :verified_city
      t.string :verified_state
      t.string :verified_zip
      t.string :verified_address_hash
      t.string :das_pdf, null: false

      t.timestamps null: false
      t.datetime :pending_at, null: false
      t.datetime :verified_at
      t.datetime :unverified_at
      t.datetime :batched_at
      t.datetime :fault_at
    end
  end
end

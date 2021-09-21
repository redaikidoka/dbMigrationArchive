class CreateDasNoticeImports < ActiveRecord::Migration
  def change
    create_table :das_notice_imports do |t|
      t.string :state, null: false
      t.string :csv, null: false
      t.integer :bucket_key, null: false

      t.timestamps null: false
      t.datetime :pending_at, null: false
      t.datetime :completed_at
      t.datetime :fault_at
    end
  end
end

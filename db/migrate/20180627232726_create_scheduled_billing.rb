class CreateScheduledBilling < ActiveRecord::Migration[5.2]
  def change
    create_table :scheduled_billings do |t|
      t.references :encrypted_value, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :active, default: true
      t.date :start_on
      t.string :frequency
      t.bigint :scheduled_job_id
      t.datetime :completed_at

      t.timestamps
    end
  end
end

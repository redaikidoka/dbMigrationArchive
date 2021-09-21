class CreateDaisyBillSubmissions < ActiveRecord::Migration
  def change
    create_table :daisy_bill_submissions do |t|
      t.integer  "daisy_id",     null: false
      t.datetime "submitted_at"
      t.jsonb    "cached_attrs"
      t.timestamps null: false
    end

    add_index :daisy_bill_submissions, :daisy_id, unique: true
  end
end

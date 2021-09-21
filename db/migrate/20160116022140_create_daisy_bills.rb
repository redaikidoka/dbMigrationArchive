class CreateDaisyBills < ActiveRecord::Migration
  def change
    create_table :daisy_bills do |t|
      t.integer  "claims_administrator_id"
      t.integer  "daisy_id",                null: false
      t.string   "review_status"
      t.string   "review_errors",           array: true
      t.integer  "charge_cents"
      t.integer  "expected_payment_cents"
      t.integer  "allowed_cents"
      t.integer  "balance_due_cents"
      t.integer  "write_off_cents"
      t.jsonb    "cached_attrs"
      t.integer  "practice_bill_id"
      t.timestamps null: false
    end

    add_index :daisy_bills, :claims_administrator_id
    add_index :daisy_bills, :daisy_id, unique: true
  end
end

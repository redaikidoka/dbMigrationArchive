class CreateDaisyPatients < ActiveRecord::Migration
  def change
    create_table :daisy_patients do |t|
      t.integer  "daisy_id",      null: false
      t.string   "first_name"
      t.string   "last_name"
      t.date     "dob"
      t.string   "ssn"
      t.string   "review_status"
      t.string   "review_errors", array: true
      t.jsonb    "cached_attrs"
      t.timestamps null: false
    end

    add_index :daisy_patients, :daisy_id, unique: true
  end
end

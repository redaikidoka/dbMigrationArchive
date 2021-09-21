class CreateDaisyInjuries < ActiveRecord::Migration
  def change
    create_table :daisy_injuries do |t|
      t.integer  "daisy_id",      null: false
      t.string   "review_status"
      t.string   "review_errors", array: true
      t.jsonb    "cached_attrs"
      t.string   "adj_number"
      t.string   "claim_number"
      t.timestamps null: false
    end

    add_index :daisy_injuries, :daisy_id, unique: true
  end
end

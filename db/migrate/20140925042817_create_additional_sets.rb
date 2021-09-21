class CreateAdditionalSets < ActiveRecord::Migration
  def change
    create_table :additional_sets do |t|
      t.integer :request_id, index: true
      t.integer :delivery_party_id, index: true
      t.integer :processed_by_id, index: true
      t.integer :submitted_by_id, index: true

      t.datetime :not_completed_at
      t.datetime :unshipped_at
      t.datetime :shipped_at
      t.datetime :cancelled_at

      t.string :state
      t.timestamps
    end
  end
end

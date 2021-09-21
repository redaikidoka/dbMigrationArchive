class CreateMerusCopyServiceOrderGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :merus_copy_service_order_groups do |t|
      t.references :order
      t.integer :merus_firm_id
      t.string :merus_case_id
      t.string :state
      t.datetime :pending_at
      t.datetime :acknowledged_at
      t.timestamps
    end
  end
end

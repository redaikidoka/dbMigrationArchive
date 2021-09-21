class CreateMerusCopyServiceOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :merus_copy_service_orders do |t|
      t.references :merus_copy_service_order_group, index: {:name => "index_merus_copy_service_order_on_group_id"}
      t.references :request
      t.string :merus_group_uuid
      t.string :merus_record_type
      t.integer :merus_copy_service_order_id
      t.integer :merus_case_file_id
      t.integer :merus_contact_id
      t.integer :merus_party_id
      t.integer :merus_firm_id
      t.integer :merus_injury_id
      t.integer :merus_billto_party_id
      t.integer :merus_copy_service_order_status_id
      t.datetime :merus_created
      t.datetime :merus_modified
      t.string :state
      t.datetime :submitted_at
      t.datetime :acknowledged_at
      t.datetime :complete_at
      t.datetime :cnr_at
      t.datetime :cancellation_request_at
      t.datetime :cancelled_at
      t.datetime :rejected_at
      t.jsonb :data
      t.timestamps
    end
  end
end



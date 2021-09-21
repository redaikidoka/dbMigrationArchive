class ConvertMerusCopyServiceOrdersToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :merus_copy_service_orders, :id, :bigint
    change_column :merus_copy_service_orders, :merus_copy_service_order_group_id, :bigint
    change_column :merus_copy_service_orders, :request_id, :bigint
    change_column :merus_copy_service_orders, :merus_copy_service_order_id, :bigint
    change_column :merus_copy_service_orders, :merus_case_file_id, :bigint
    change_column :merus_copy_service_orders, :merus_contact_id, :bigint
    change_column :merus_copy_service_orders, :merus_party_id, :bigint
    change_column :merus_copy_service_orders, :merus_firm_id, :bigint
    change_column :merus_copy_service_orders, :merus_injury_id, :bigint
    change_column :merus_copy_service_orders, :merus_billto_party_id, :bigint
    change_column :merus_copy_service_orders, :merus_copy_service_order_status_id, :bigint
  end
end

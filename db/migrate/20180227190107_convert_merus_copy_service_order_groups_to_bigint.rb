class ConvertMerusCopyServiceOrderGroupsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :merus_copy_service_order_groups, :id, :bigint
    change_column :merus_copy_service_order_groups, :order_id, :bigint
    change_column :merus_copy_service_order_groups, :merus_firm_id, :bigint
  end
end

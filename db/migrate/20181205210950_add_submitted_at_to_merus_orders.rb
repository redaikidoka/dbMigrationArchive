class AddSubmittedAtToMerusOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :merus_copy_service_orders, :merus_submitted_at, :timestamp

    # takes ~3.5 seconds
    MerusCopyServiceOrder
      .in_batches
      .update_all("merus_submitted_at=to_timestamp((data ->>'date_submitted')::int)") # rubocop:disable SkipsModelValidations
  end
end

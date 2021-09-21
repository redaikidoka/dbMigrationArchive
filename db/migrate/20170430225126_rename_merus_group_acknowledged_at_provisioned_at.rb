class RenameMerusGroupAcknowledgedAtProvisionedAt < ActiveRecord::Migration[5.0]
  def change
    rename_column :merus_copy_service_order_groups, :acknowledged_at, :provisioned_at
  end
end

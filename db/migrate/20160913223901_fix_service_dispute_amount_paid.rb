class FixServiceDisputeAmountPaid < ActiveRecord::Migration
  def change
    rename_column :service_disputes, :amount_paid, :amount_paid_cents
  end
end

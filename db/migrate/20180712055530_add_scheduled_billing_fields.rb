class AddScheduledBillingFields < ActiveRecord::Migration[5.2]
  def change
    add_column :scheduled_billings, :invoices_count, :integer
    add_column :scheduled_billings, :invoices_amount_cents, :integer
  end
end

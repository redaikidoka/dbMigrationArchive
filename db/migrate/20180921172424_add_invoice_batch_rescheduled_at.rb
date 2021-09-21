class AddInvoiceBatchRescheduledAt < ActiveRecord::Migration[5.2]
  def change
    add_column :invoice_batches, :rescheduled_at, :datetime
  end
end

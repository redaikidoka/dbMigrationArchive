class ConvertInvoiceBatchInvoicesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :invoice_batch_invoices, :id, :bigint
    change_column :invoice_batch_invoices, :invoice_batch_id, :bigint
    change_column :invoice_batch_invoices, :invoice_id, :bigint
  end
end

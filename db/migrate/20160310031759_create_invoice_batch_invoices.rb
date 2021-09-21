class CreateInvoiceBatchInvoices < ActiveRecord::Migration
  def up
    create_table :invoice_batch_invoices do |t|
      t.references :invoice_batch, index: true, null: false
      t.references :invoice, index: true, null: false
      t.timestamps null: false
    end

    Invoice.where.not(invoice_batch_id: nil).each do |invoice|
      batch = InvoiceBatch.find(invoice.invoice_batch_id)
      batch.invoices << invoice
    end
  end

  def down
    drop_table :invoice_batch_invoices
  end
end

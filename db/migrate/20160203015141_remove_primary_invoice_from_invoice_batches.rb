class RemovePrimaryInvoiceFromInvoiceBatches < ActiveRecord::Migration
  def up
    remove_column :invoice_batches, :primary_invoice_id
  end

  def down
    add_column :invoice_batches, :primary_invoice_id, :integer, null: false
  end
end

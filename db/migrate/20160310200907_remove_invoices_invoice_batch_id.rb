class RemoveInvoicesInvoiceBatchId < ActiveRecord::Migration
  def up
    remove_column :invoices, :invoice_batch_id
  end

  def down
    add_column :invoices, :invoice_batch_id, :integer, index: true
  end
end

class RemoveInvoiceAttachments < ActiveRecord::Migration[5.2]
  def change
    rename_table :invoice_attachments, :dead_invoice_attachments
  end
end

class AddDocumentIdToInvoiceAttachment < ActiveRecord::Migration[5.2]
  def change
    add_column :invoice_attachments, :document_id, :uuid
  end
end

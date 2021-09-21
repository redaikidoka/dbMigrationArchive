class AddInvoiceGroupToInvoiceAttachment < ActiveRecord::Migration
  def change
    add_column :invoice_attachments, :invoice_group_id, :integer
    add_index :invoice_attachments, :invoice_group_id
  end
end

class ConvertInvoiceAttachmentsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :invoice_attachments, :user_id, :bigint
    change_column :invoice_attachments, :upload_id, :bigint
    change_column :invoice_attachments, :attachment_type_id, :bigint
    change_column :invoice_attachments, :objection_type_id, :bigint
    change_column :invoice_attachments, :invoice_group_id, :bigint
  end
end

class MoveInvoiceAttachmentAssocationToGroup < ActiveRecord::Migration
  def up
    say_with_time "moving InvoiceAttachment invoice to InvoiceGroup" do
      InvoiceAttachment.find_each do |ia|
        ig = InvoiceGroup.create(
          invoice_ids: [ia.invoice_id],
          user_id: ia.user_id,
          created_at: ia.created_at,
          updated_at: ia.updated_at
        )
        ia.update_column(:invoice_group_id, ig.id)
      end

      change_column_null :invoice_attachments, :invoice_group_id, false
      remove_column :invoice_attachments, :invoice_id
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
